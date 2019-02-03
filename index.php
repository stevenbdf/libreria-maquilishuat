!Doctype html>
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
  </nav>
  <div class="container">
    <div id="demo" class="carousel slide mb-4" data-ride="carousel">
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/book.jpg" class="d-block w-100" alt="Categorias">
          <div class="carousel-caption d-none d-md-block">
            <h5 class="titulo-home">Categorias</h5>
            <p>Busca tu libro favorito</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/librosss.jpg" class="d-block w-100" alt="noticias">
          <div class="carousel-caption d-none d-md-block">
            <h5 class="titulo-home">Noticias</h5>
            <p>La mejor información acerca de tus autores favoritos.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/banner.jpg" class="d-block w-100" alt="perfil">
          <div class="carousel-caption d-none d-md-block">
            <h5 class="titulo-home">Mi perfil</h5>
            <p>¿Cansad@ de adquirir libros desde una tienda física? ¡Crea tu perfil y podrás comprar desde la comodidad de tu hogar!</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#demo" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#demo" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>


  <div class="container mt-4 mb-4 pb-4">
    <h1 class="text-center pt-3">CATEGORIAS</h1>
    <div class="row">
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/comic.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Comics</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>
      </div>
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/fiction.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Ficción</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>
      </div>
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/drama.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Drama</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>
      </div>
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/comic.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Comics</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>
      </div>
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/fiction.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Ficción</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>

      </div>
      <div class="col-10 offset-1 offset-md-0 col-md-6 col-lg-4 mt-4">
        <div class="card">
          <img src="img/categories/drama.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title">Drama</h4>
            <p class="card-text">Some quick example text to build on the card title and make up the
              bulk of the
              card's content.</p>
            <a href="#" class="btn btn-success">Ver más</a>
          </div>
        </div>
      </div>
    </div>
  </div>


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

</html>
