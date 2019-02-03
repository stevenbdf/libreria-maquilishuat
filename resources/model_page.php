<?php
class model_page{
  public static function header(){
      print('!Doctype html>
      <html lang="es">

      <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display|Nunito|Staatliches" rel="stylesheet">
        <link rel="icon" type="image/png" href="img/fav-ico.PNG" />
        <link rel="stylesheet" href="css/style.css">
        <title>Libreria Maquilishuat</title>
      </head>

      <body>
        <nav id="nav" class="navbar navbar-expand-lg navbar-dark navbar-libreria sticky-top">
          <div class="container">
            <a class="navbar-brand" href="#"><img src="img/logo.png" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Inicio <i class="fas fa-home"></i></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="views/categories.html">Categorias <i class="fas fa-filter"></i></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Noticias <i class="far fa-newspaper"></i></a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Mi Perfil
                    <i class="fas fa-user-circle"></i>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Editar Mis Datos</a>
                    <a class="dropdown-item" href="#">Mis Comentarios</a>
                    <a class="dropdown-item" href="#">Mis Pedidos</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Cerrar Sesión <i class="fas fa-sign-out-alt"></i></a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </nav>');
  }

public static function footer(){
  print('
  <footer id="footer" class="pb-4 pt-4">
    <div class="container">
      <div class="row text-center">
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="#">Inicio</a>
        </div>
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="#">Contactanos</a>
        </div>
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="#">Noticias</a>
        </div>
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="#">Terminos y Condiciones</a>
        </div>
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="#">Privacidad</a>
        </div>
        <div class="col-12 col-md-6 col-lg pb-2">
          <a href="views/mission.vision.html">Mision y Vision</a>
        </div>
      </div>
    </div>
  </footer>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</body>
  ')
}

}
?>
