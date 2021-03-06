<?php
require_once('../../core/helpers/database.php');
require_once('../../core/helpers/validator.php');
require_once('../../core/models/clientes.php');

//Se comprueba si existe una petición del sitio web y la acción a realizar, de lo contrario se muestra una página de error
if (isset($_GET['site']) && isset($_GET['action'])) {
    session_start();
    $clientes = new Clientes;
    $result = array('status' => 0, 'exception' => '');
    //Se verifica si existe una sesión iniciada como administrador para realizar las operaciones correspondientes
    if (isset($_SESSION['idEmpleado']) && $_GET['site'] == 'dashboard') {
        switch ($_GET['action']) {
            case 'read':
                if ($result['dataset'] = $clientes->readClientes()) {
                    $result['status'] = 1;
                } else {
                    $result['exception'] = 'Operación incorrecta';
                }
                break;
            case 'deshabilitar':
                if ($clientes->setId($_POST['idCliente'])) {
                    if ($clientes->deshabilitarCliente()) {
                        $result['status'] = 1;
                    } else {
                        $result['exception'] = 'Cliente no se ha podido deshabilitar';
                    }
                } else {
                    $result['exception'] = 'Cliente incorrecto';
                }
                break;
            case 'habilitar':
                if ($clientes->setId($_POST['idCliente'])) {
                    if ($clientes->habilitarCliente()) {
                        $result['status'] = 1;
                    } else {
                        $result['exception'] = 'Cliente no se ha podido habilitar';
                    }
                } else {
                    $result['exception'] = 'Cliente incorrecto';
                }
                break;
            default:
                exit('Acción no disponible');
        }
    } else if (isset($_SESSION['idCliente']) && $_GET['site'] == 'public') {
        switch ($_GET['action']) {
            case 'logout':
                unset($_SESSION['idCliente']);
                unset($_SESSION['correoCliente']);
                unset($_SESSION['imagenCliente']);
                header('location: ../../views/public/index.php');
                $_SESSION['carrito'] = array();
                break;
            case 'get':
                if ($clientes->setId($_SESSION['idCliente'])) {
                    if ($result['dataset'] = $clientes->getCliente()) {
                        $result['status'] = 1;
                    } else {
                        $result['exception'] = 'Operación incorrecta';
                    }
                } else {
                    $result['exception'] = 'Cliente incorrecto';
                }
                break;
            case 'update':
                $_POST = $clientes->validateForm($_POST);
                if ($clientes->setNombres($_POST['nombres'])) {
                    if ($clientes->setApellidos($_POST['apellidos'])) {
                        if ($clientes->setCorreo($_POST['correo'])) {
                            if ($clientes->setDireccion($_POST['direccion'])) {
                                if (is_uploaded_file($_FILES['imagen']['tmp_name'])) {
                                    if ($clientes->setImagen($_FILES['imagen'], $_SESSION['imagenCliente']['img'])) {
                                        $archivo = true;
                                    } else {
                                        $result['exception'] = $clientes->getImageError();
                                        $archivo = false;
                                    }
                                } else {
                                    if ($clientes->setImagen(null, $_SESSION['imagenCliente']['img'])) {
                                        $result['exception'] = 'No se subió ningún archivo';
                                    } else {
                                        $result['exception'] = $clientes->getImageError();
                                    }
                                    $archivo = false;
                                }
                                if ($archivo) {
                                    if ($clientes->updateCliente()) {
                                        if ($clientes->saveFile($_FILES['imagen'], $clientes->getRuta(), $clientes->getImagen())) {
                                            $result['status'] = 1;
                                        } else {
                                            $result['status'] = 2;
                                            $result['exception'] = 'No se guardó el archivo';
                                        }
                                    } else {
                                        $result['exception'] = 'Operación fallida';
                                    }
                                } else {
                                    if ($clientes->updateCliente()) {
                                        $result['status'] = 3;
                                    } else {
                                        $result['exception'] = 'Operación fallida';
                                    }
                                }
                            } else {
                                $result['exception'] = 'Direccion incorrecta';
                            }
                        } else {
                            $result['exception'] = 'Correo incorrecto';
                        }
                    } else {
                        $result['exception'] = 'Apellidos incorrectos';
                    }
                } else {
                    $result['exception'] = 'Nombres incorrectos';
                }
                break;
            case 'updateContrasena':
                if ($_POST['old-password'] == $_POST['old-password-2']) {
                    if ($_POST['new-password'] == $_POST['new-password-2']) {
                        if ($clientes->setId($_SESSION['idCliente'])) {
                            if ($clientes->setContrasena($_POST['old-password'])) {
                                if ($clientes->checkPassword()) {
                                    if ($clientes->setContrasena($_POST['new-password'])) {
                                        if ($clientes->updateContrasena()) {
                                            $result['status'] = 1;
                                        } else {
                                            $result['exception'] = 'Operación fallida';
                                        }
                                    } else {
                                        $result['exception'] = 'Contraseña invalida, debe ser mayor a 6 caracteres';
                                    }
                                } else {
                                    $result['exception'] = 'Contraseña incorrecta';
                                }
                            } else {
                                $result['exception'] = 'Contraseña invalida, debe ser mayor a 6 caracteres';
                            }
                        } else {
                            $result['exception'] = 'Empleado incorrecto';
                        }
                    } else {
                        $result['exception'] = 'Las contraseñas nuevas no coinciden';
                    }
                } else {
                    $result['exception'] = 'Las contraseñas antiguas no coinciden';
                }
                break;
        }
    } else if ($_GET['site'] == 'public') {
        switch ($_GET['action']) {
            case 'register':
                $_POST = $clientes->validateForm($_POST);
                if ($_POST['g-recaptcha-response']) {
                    if ($clientes->setNombres($_POST['nombres'])) {
                        if ($clientes->setApellidos($_POST['apellidos'])) {
                            if ($clientes->setCorreo($_POST['correo'])) {
                                if ($clientes->setDireccion($_POST['direccion'])) {
                                    if ($_POST['clave1'] == $_POST['clave2']) {
                                        if ($clientes->setContrasena($_POST['clave1'])) {
                                            if ($clientes->setImagen($_FILES['imagen'], null)) {
                                                if ($clientes->createCliente()) {
                                                    if ($clientes->saveFile($_FILES['imagen'], $clientes->getRuta(), $clientes->getImagen())) {
                                                        $result['status'] = 1;
                                                    } else {
                                                        $result['status'] = 2;
                                                        $result['exception'] = 'No se guardó el archivo';
                                                    }
                                                } else {
                                                    $result['exception'] = 'Operación fallida';
                                                }
                                            } else {
                                                $result['exception'] = $clientes->getImageError() . '. La dimension de la imagen debe ser 500x500';
                                            }
                                        } else {
                                            $result['exception'] = 'Clave menor a 6 caracteres';
                                        }
                                    } else {
                                        $result['exception'] = 'Claves diferentes';
                                    }
                                } else {
                                    $result['exception'] = 'Direccion incorrecta';
                                }
                            } else {
                                $result['exception'] = 'Correo incorrecto';
                            }
                        } else {
                            $result['exception'] = 'Apellidos incorrectos';
                        }
                    } else {
                        $result['exception'] = 'Nombres incorrectos';
                    }
                } else {
                    $result['exception'] = 'Verifique que sos humano ';
                }
                break;
            case 'login':
                $_POST = $clientes->validateForm($_POST);
                if ($clientes->setCorreo($_POST['correo'])) {
                    if ($clientes->checkEstado()) {
                        if ($clientes->checkCorreo()) {
                            if ($clientes->setContrasena($_POST['contrasena'])) {
                                $informacion = $clientes->leerAutenticacion(true);
                                if ($informacion['estado']) {
                                    if ($clientes->checkPassword()) {
                                        $informacion['estado'] = 1;
                                        $informacion['intentos'] = 0;
                                        $informacion['fechaBloqueo'] = null;
                                        if (modificarAutenticacion($informacion, $clientes)) {
                                            $_SESSION['idCliente'] = $clientes->getId();
                                            $_SESSION['correoCliente'] = $clientes->getCorreo();
                                            $_SESSION['imagenCliente'] = $clientes->getImagenCliente();
                                            $result['status'] = 1;
                                        } else {
                                            $result['exception'] = 'Error al modificar autenticacion';
                                        }
                                    } else {
                                        //Aumenta el numero de intentos
                                        $informacion['intentos']++;
                                        if ($informacion['intentos'] >= 3) {
                                            //Bloquea usuario y envia mensaje
                                            //Modifica el objeto autenticacion con bloqueo y fecha de bloqueo
                                            $informacion['estado'] = 0;
                                            $informacion['fechaBloqueo'] = date("Y-m-d H:i:s");
                                            //Actualiza en base de datos
                                            if (modificarAutenticacion($informacion, $clientes)) {
                                                $result['exception'] = 'Clave incorrecta, tu usuario ha sido bloqueado por 24 horas, espera para volver a intentarlo.';
                                            } else {
                                                $result['exception'] = 'Error al modificar autenticacion';
                                            }
                                        } else {
                                            //Envia mensaje con intentos restantes
                                            if (modificarAutenticacion($informacion, $clientes)) {
                                                $result['exception'] = 'Clave incorrecta tienes ' . (3 - $informacion['intentos']) . ' intentos restantes';
                                            } else {
                                                $result['exception'] = 'Error al modificar autenticacion';
                                            }
                                        }
                                    }
                                } else {
                                    $fechaActual = date_create(date("Y-m-d H:i:s"));
                                    $diferencia = date_diff(date_create($informacion['fechaBloqueo']), $fechaActual);
                                    if ((int) $diferencia->format("%R%a")) {
                                        $informacion['estado'] = 1;
                                        $informacion['intentos'] = 0;
                                        $informacion['fechaBloqueo'] = null;
                                        if (modificarAutenticacion($informacion, $clientes)) {
                                            if ($clientes->checkPassword()) {
                                                $informacion['estado'] = 1;
                                                $informacion['intentos'] = 0;
                                                $informacion['fechaBloqueo'] = null;
                                                if (modificarAutenticacion($informacion, $clientes)) {
                                                    $_SESSION['idCliente'] = $clientes->getId();
                                                    $_SESSION['correoCliente'] = $clientes->getCorreo();
                                                    $_SESSION['imagenCliente'] = $clientes->getImagenCliente();
                                                    $result['status'] = 1;
                                                } else {
                                                    $result['exception'] = 'Error al modificar autenticacion';
                                                }
                                            } else {
                                                //Aumenta el numero de intentos
                                                $informacion['intentos']++;
                                                if ($informacion['intentos'] >= 3) {
                                                    //Bloquea usuario y envia mensaje
                                                    //Modifica el objeto autenticacion con bloqueo y fecha de bloqueo
                                                    $informacion['estado'] = 0;
                                                    $informacion['fechaBloqueo'] = date("Y-m-d H:i:s");
                                                    //Actualiza en base de datos
                                                    if (modificarAutenticacion($informacion, $clientes)) {
                                                        $result['exception'] = 'Clave incorrecta, tu usuario ha sido bloqueado por 24 horas, espera para volver a intentarlo.';
                                                    } else {
                                                        $result['exception'] = 'Error al modificar autenticacion';
                                                    }
                                                } else {
                                                    //Envia mensaje con intentos restantes
                                                    if (modificarAutenticacion($informacion, $clientes)) {
                                                        $result['exception'] = 'Clave incorrecta tienes ' . (3 - $informacion['intentos']) . ' intentos restantes';
                                                    } else {
                                                        $result['exception'] = 'Error al modificar autenticacion';
                                                    }
                                                }
                                            }
                                        } else {
                                            $result['exception'] = 'Error al modificar autenticacion';
                                        }
                                    } else {
                                        $result['exception'] = 'Tu usuario ha sido bloqueado por 24 horas, espera para volver a intentarlo.';
                                    }
                                }
                            } else {
                                $result['exception'] = 'Clave menor a 6 caracteres';
                            }
                        } else {
                            $result['exception'] = 'Correo inexistente';
                        }
                    } else {
                        $result['exception'] = 'Tu cuenta ha sido deshabilitada, contacta con uno de nuestros empleados al correo: contacto@libreria-maquilishuat.com.';
                    }
                } else {
                    $result['exception'] = 'Correo incorrecto';
                }
                break;

            default:
                exit('accion no disponible');
        }
    } else if ($_GET['site'] == 'dashboard') {
        exit('Acceso restringido');
    }
    print(json_encode($result));
} else {
    exit('Recurso denegado');
}

function modificarAutenticacion($nuevoJSON, $clientes)
{
    //Establece el nuevo objeto autenticacion
    $clientes->setAutenticacion(json_encode($nuevoJSON));

    //Actualiza en base de datos
    return $clientes->updateAutenticacion();
}
