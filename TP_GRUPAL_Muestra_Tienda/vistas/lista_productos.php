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
<table class="table">
  <thead>
    <tr>
      <th scope="col"> Nombre </th>
      <th scope="col"> Precio </th>
      <th scope="col"> Categoría </th>
      <th scope="col"> Acciones </th>
    </tr>
  </thead>
  <tbody>
    <?php if( count($productos) > 0 ): ?>

      <?php foreach($productos as $pro): ?>
        <tr>
          <td> <?php echo $pro->nombre ?> </td>
          <td> $<?php echo number_format($pro->precio, 2, ',', '.') ?> </td>
          <td> <?php echo $pro->nombre_categoria ?> </td>
          <td> 
            <a class="text text-primary" href="modificar_producto.php?ide=<?php echo $pro->id ?>"> Editar </a>
            |
            <a class="text text-danger" href="#" onclick="eliminarProducto('eliminar_producto.php?ide=<?php echo $pro->id ?>')"> Eliminar </a>
          </td>
        </tr>
      <?php endforeach ?>

    <?php else: ?>
      
      <tr>
        <td colspan="3" class="text-center"> No se han encontrado registros </td>
      </tr>
    
    <?php endif ?>

  </tbody>
</table>

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