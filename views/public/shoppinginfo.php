<?php
require_once '../../core/helpers/model_page.php';
echo model_page::header();
?>
<div class="container" style="min-height:75vh;">
  <div class="row mt-5">
    <div class="col-6">
      <h3 style="font-size: 20px">Producto</h3>
    </div>
    <div class="col-2">
      <h3 style="font-size: 20px">Precio</h3>
    </div>
    <div class="col-2">
      <h3 style="font-size: 20px">Cantidad</h3>
    </div>
    <div class="col-2">
      <h3 style="font-size: 20px">Sub. Total</h3>
    </div>
  </div>
  <div id="productos-container" class="row mt-2">
    
  </div>
  <div class="mb-3">
    <div class="row">
      <div class="col-3">
        <a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Seguir comprando</a>
      </div>
      <div class="col-6">
        <p class="hidden-xs text-center"><strong>Total $1.99</strong></p>
      </div>
      <div class="col-3">
        <a href="#" class="btn btn-success float-right">Has revisión <i class="fa fa-angle-right"></i></a>
      </div>
    </div>
  </div>

</div>
<?php
echo model_page::footer('carrito');
?>