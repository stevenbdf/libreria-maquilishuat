<?php
require_once '../../core/helpers/model_page.php';
echo model_page::header();
?>

<main id="noticias">
  <div class="container mt-4 mb-4">
    <div class="row">
      <div class="col-12">
        <h1 class="text-center pt-3 in-container display-1">Noticias</h1>
      </div>
    </div>
    <div id="noticias-container" class="row mt-4 pb-4"></div>  
  </div>
</main>

<?php
echo model_page::footer('noticias');
?>