<!DOCTYPE html>
<html lang="en">
<head>
  <title> Bootstrap Example </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <?php require_once('_css.php') ?>
  <?php require_once('_js.php') ?>
  
</head>
<body>

<?php require_once('_nav.php') ?>
  
<div class="container">

  <?php if( count($productos) > 0 ): ?>

  <?php foreach($productos as $pro): ?>

    <div class="card" style="width: 18rem;">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><?php echo $pro->nombre ?></h5>
        <h6 class="card-subtitle mb-2 text-muted"><?php echo $pro->nombre_categoria ?></h6>
        <p class="card-text"><?php echo $pro->descripcion ?></p>
        <p class="col-6">$<?php echo number_format($pro->precio, 2, ',', '.') ?></p>
        <a href="../vistas/carrito" class="btn btn-primary col-6">Comprar</a>
      </div>
    </div>
    <?php endforeach ?>

    <?php else: ?>
    <p>No se han encontrado registros </p>

    
    <?php endif ?>

<nav aria-label="...">
  <ul class="pagination">
    <?php if($paginas['anterior']): ?>
      <li class="page-item">
        <a class="page-link" href="?pag=<?php echo $paginas['primera'] ?>" tabindex="-1"> Primera </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="?pag=<?php echo $paginas['anterior'] ?>"> <?php echo $paginas['anterior'] ?> </a>
      </li>
    <?php endif ?>
    <li class="page-item active">
      <span class="page-link disabled" href="#"><?php echo $paginas['actual'] ?></span>
    </li>
    <?php if($paginas['siguiente']): ?>
      <li class="page-item">
        <a class="page-link" href="?pag=<?php echo $paginas['siguiente'] ?>"> <?php echo $paginas['siguiente'] ?> </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="?pag=<?php echo $paginas['ultima'] ?>"> Última </a>
      </li>
    <?php endif ?>
  </ul>
</nav>

</div>

<?php require_once('_footer.php') ?>

<script>

    function eliminarProducto(p_url_eliminar)
    {
     
      Swal.fire({
        title: 'Está segura/o?',
        text: "Este registro no se podrá recuperar",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Aceptar'
      }).then((result) => {
        if (result.isConfirmed) {
          location.href = p_url_eliminar;
        }
      });

    }

</script>

</body>
</html>