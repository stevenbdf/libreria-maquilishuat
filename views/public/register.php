<?php
require_once '../../core/helpers/modelPage.php';
echo modelPage::header();
?>
<!--contenido de pagina -->
<main id="login">
    <div class="container-fluid login pt-5 pt-lg-4 pb-4">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card bg-secondary shadow border-0">
                    <div class="card-header bg-white pb-5">
                        <div class="text-muted text-center mb-3">
                            <small>Registrate con ...</small>
                        </div>
                        <!-- metodos de registrarse -->
                        <div class="btn-wrapper text-center">
                            <a href="#" class="btn btn-neutral btn-icon">
                                <span class="btn-inner--icon">
                                    <i class="fab fa-facebook-square"></i>
                                </span>
                                <span class="btn-inner--text">Facebook</span>
                            </a>
                            <a href="#" class="btn btn-neutral btn-icon">
                                <span class="btn-inner--icon">
                                    <i class="fab fa-google"></i>
                                </span>
                                <span class="btn-inner--text">Google</span>
                            </a>
                        </div>
                    </div>
                    <div class="card-body px-lg-5 py-lg-5">
                        <div class="text-center text-muted mb-4">
                            <small>O registrate con tus credenciales</small>
                        </div>
                        <!-- formulario de registro-->
                        <form method="POST" id="formulario-registro">
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <div class="form-group nombre mb-3">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user-circle"></i></span>
                                            </div>
                                            <input id="name" name="nombres" class="form-control" placeholder="Nombre" type="text" required onfocusout="validateAlphabetic('name',1,50)" autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group apellido mb-3">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user-circle"></i></span>
                                            </div>
                                            <input id="lastName" name="apellidos" class="form-control" placeholder="Apellido" type="text" required onfocusout="validateAlphabetic('lastName',1,50)" autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group email mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="far fa-envelope-open"></i></span>
                                    </div>
                                    <input id="email" name="correo" class="form-control" placeholder="Correo" type="email" required autocomplete="off">
                                </div>
                            </div>

                            <div class="form-group address mb-3">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                    </div>
                                    <input id="address" name="direccion" class="form-control" placeholder="Dirección" type="text" required autocomplete="off">
                                </div>
                            </div>

                            <div class="form-group password">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-unlock-alt"></i></span>
                                    </div>
                                    <input id="password" name="clave1" class="form-control" placeholder="Contraseña" type="password" required onfocusout="validatePassword('password')">
                                </div>
                            </div>

                            <div class="form-group password2">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-unlock-alt"></i></span>
                                    </div>
                                    <input id="password2" name="clave2" class="form-control" placeholder="Confirmar contraseña" type="password" required>
                                </div>
                            </div>
                            <!-- Captcha-->
                                <div class="g-recaptcha" data-sitekey="6LeltbQUAAAAAIcVQck7G6SYHc17IIMKFpaFOzV2"></div>
                                <br>
                            <div class="form-group">
                                <div class="input-group input-group-alternative">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="far fa-file-image"></i></span>
                                    </div>
                                    <input id="imagen" name="imagen" class="form-control" type="file">
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary my-4">Acceder</button>
                            </div>
                        </form>


                        <!-- división de la misión -->
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-6">
                        <a href="login.php" class="text-light">
                            <small>¿Ya tienes una cuenta? Entra aquí...</small>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>




<!-- archivos necesarios -->
<script src="../../resources/js/jquery-3.3.1.slim.js"></script>
<script src="../../resources/js/jquery-3.2.1.min.js"></script>
<script src="../../core/helpers/functions.js"></script>
<script src="../../resources/js/popper.js"></script>
<script src="../../resources/js/bootstrap.js"></script>
<script src="../../resources/js/argon.min.js"></script>
<script src="../../resources/js/sweetalert2.min.js"></script>
<script defer src="../../resources/js/index.js"></script>
<script defer src="../../core/controllers/public/register.js"></script>
<script src="../../core/helpers/Public.js"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

</body>

</html>