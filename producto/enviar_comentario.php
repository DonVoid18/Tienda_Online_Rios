<?php
    session_start();
    require_once "../base_de_datos/conexion.php";
    $id_usuario = $_SESSION["id_usuario"];
    $codigo_producto = $_POST["id_producto"];
    $mensaje_usuario = $_POST["mensaje_usuario"];
    $cantidad_estrellas = $_POST["cant_star"];
    // generamos la insersión a la base de datos en tabla de comentarios
    $consulta_insertar_comentario = "INSERT INTO opinion (id_usuario,id_producto,comentario,producto_puntaje) VALUES ('$id_usuario','$codigo_producto','$mensaje_usuario','$cantidad_estrellas')";
    $confirmar_comentario = $conn->query($consulta_insertar_comentario);
    if($confirmar_comentario === TRUE){
        echo "Tu comentario se ha registrado correctamente, gracias <i class='far fa-smile-beam'></i>";
    }
    else{
        // los datos no se enviaron por cualquier error
        echo "Lo sentimos estamos teniedo problemas para poder registra tu comentario <i class='far fa-sad-cry'></i>";
    }
?>