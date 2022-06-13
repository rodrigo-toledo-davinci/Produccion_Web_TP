<?php

require_once('conf/conf.php');
require_once('modelos/Cnx.php');
require_once('modelos/Categoria.php');
require_once('modelos/Producto.php');
require_once('helpers/helper_input.php');

try{
    $cnx = new Cnx();
}catch(PDOException $e){
    echo 'Ha ocurrido un error';
    exit;
}

$producto = new Producto();

$errores = array();

if( isset($_POST['submit']) )
{

    $producto->nombre = test_input( $_POST['nombre'] ?? null );
    $producto->descripcion =  test_input( $_POST['descripcion'] ?? null ) ;
    $producto->precio = test_input( $_POST['precio'] ?? null );
    $producto->id_categoria = test_input( $_POST['id_categoria'] ?? null );

    $errores = $producto->validate();

    if(count($errores) == 0){
        $producto->save($cnx);
        header('Location: productos.php');
    }

}

$categorias = Categoria::all($cnx);
$action = 'agregar_producto.php';

require_once('vistas/guardar_producto.php');

unset($cnx);