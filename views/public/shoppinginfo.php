<?php
  require_once '../../core/helpers/model_page.php';
  echo model_page::header();
 ?>
<div class="container">

  <table id="cart" class="table table-hover table-condensed">
    <thead>
      <tr>
        <th style="width:50%">Producto</th>
        <th style="width:10%">Precio</th>
        <th style="width:8%">Cantidad</th>
        <th style="width:22%" class="text-center">Subtotal</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td data-th="Product">  <!-- sección de producto 1 -->
          <div class="row">
            <div class="col-sm-2 hidden-xs"><img src="../../resources/img/noimage.png" alt="..." class="img-responsive" /></div>
            <div class="col-sm-7 ml-3">
              <h4 class="nomargin">Product0 1</h4>
              <p>Descripción del producto que se está comprando</p>
            </div>
          </div>
        </td>
        <td data-th="Price">$1.99</td>
        <td data-th="Quantity">
          <input type="number" class="form-control text-center" value="1">
        </td>
        <td data-th="Subtotal" class="text-center">1.99</td>
        <td class="actions" data-th="">
          <button class="btn btn-info btn-sm"><i class="fas fa-plus"></i></button>
          <button class="btn btn-danger btn-sm"><i class="fas fa-minus"></i></button>
        </td>
      </tr>
    </tbody>

  </table>
  <table id="cart" class="table table-hover table-condensed">
    <thead>
      <tr>
        <th style="width:50%">Producto</th>
        <th style="width:10%">Precio</th>
        <th style="width:8%">Cantidad</th>
        <th style="width:22%" class="text-center">Subtotal</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td data-th="Product"> <!-- sección de producto 2 -->
          <div class="row">
            <div class="col-sm-2 hidden-xs"><img src="../../resources/img/noimage.png" alt="..." class="img-responsive" /></div>
            <div class="col-sm-7 ml-3">
              <h4 class="nomargin">Product0 2</h4>
              <p>Descripción del producto que se está comprando</p>
            </div>
          </div>
        </td>
        <td data-th="Price">$1.99</td>
        <td data-th="Quantity">
          <input type="number" class="form-control text-center" value="1">
        </td>
        <td data-th="Subtotal" class="text-center">1.99</td>
        <td class="actions" data-th="">
          <button class="btn btn-info btn-sm"><i class="fas fa-plus"></i></button>
          <button class="btn btn-danger btn-sm"><i class="fas fa-minus"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
  <table id="cart" class="table table-hover table-condensed">
    <thead>
      <tr>
        <th style="width:50%">Producto</th>
        <th style="width:10%">Precio</th>
        <th style="width:8%">Cantidad</th>
        <th style="width:22%" class="text-center">Subtotal</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td data-th="Product"><!-- sección de producto 3 -->
          <div class="row">
            <div class="col-sm-2 hidden-xs"><img src="../../resources/img/noimage.png" alt="..." class="img-responsive" /></div>
            <div class="col-sm-7 ml-3">
              <h4 class="nomargin">Product0 3</h4>
              <p>Descripción del producto que se está comprando</p>
            </div>
          </div>
        </td>
        <td data-th="Price">$1.99</td>
        <td data-th="Quantity">
          <input type="number" class="form-control text-center" value="1">
        </td>
        <td data-th="Subtotal" class="text-center">1.99</td>
        <td class="actions" data-th="">
          <button class="btn btn-info btn-sm"><i class="fas fa-plus"></i></button>
          <button class="btn btn-danger btn-sm"><i class="fas fa-minus"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
  <table id="cart" class="table table-hover table-condensed">
    <thead>
      <tr>
        <th style="width:50%">Producto</th>
        <th style="width:10%">Precio</th>
        <th style="width:8%">Cantidad</th>
        <th style="width:22%" class="text-center">Subtotal</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td data-th="Product"><!-- sección de producto 4 -->
          <div class="row">
            <div class="col-sm-2 hidden-xs"><img src="../../resources/img/noimage.png" alt="..." class="img-responsive" /></div>
            <div class="col-sm-7 ml-3  ">
              <h4 class="nomargin">Product0 4</h4>
              <p>Descripción del producto que se está comprando</p>
            </div>
          </div>
        </td>
        <td data-th="Price">$1.99</td>
        <td data-th="Quantity">
          <input type="number" class="form-control text-center" value="1">
        </td>
        <td data-th="Subtotal" class="text-center">1.99</td>
        <td class="actions" data-th="">
          <button class="btn btn-info btn-sm"><i class="fas fa-plus"></i></button>
          <button class="btn btn-danger btn-sm"><i class="fas fa-minus"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
  <table id="cart" class="table table-hover table-condensed">
    <thead>
      <tr>
        <th style="width:50%">Producto</th>
        <th style="width:10%">Precio</th>
        <th style="width:8%">Cantidad</th>
        <th style="width:22%" class="text-center">Subtotal</th>
        <th style="width:10%"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td data-th="Product"><!-- sección de producto 5 -->
          <div class="row">
            <div class="col-sm-2 hidden-xs"><img src="../../resources/img/noimage.png" alt="..." class="img-responsive" /></div>
            <div class="col-sm-7 ml-3">
              <h4 class="nomargin">Product0 5</h4>
              <p>Descripción del producto que se está comprando</p>
            </div>
          </div>
        </td>
        <td data-th="Price">$1.99</td>
        <td data-th="Quantity">
          <input type="number" class="form-control text-center" value="1">
        </td>
        <td data-th="Subtotal" class="text-center">1.99</td>
        <td class="actions" data-th="">
          <button class="btn btn-info btn-sm"><i class="fas fa-plus"></i></button>
          <button class="btn btn-danger btn-sm"><i class="fas fa-minus"></i></button>
        </td>
      </tr>
    </tbody>

  </table>
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
  echo model_page::footer();
 ?>
