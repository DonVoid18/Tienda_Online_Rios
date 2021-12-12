<?php
    session_start();
    require_once "../base_de_datos/conexion.php";
    $direccion = $_POST["direccion"];
    $departamento = $_POST["departamento"];
    $provincia = $_POST["provincia"];
    $id_usuario = $_SESSION["id_usuario"];
    $monto_pedido = $_POST["monto_pedido"];
    $insertar_datos_pedido = "INSERT INTO pedido (usuarios_id_usuario,monto_total,direccion,departamento_delivery, provincia_delivery) VALUES ('$id_usuario','$monto_pedido','$direccion','$departamento','$provincia')";
    $resultado_pedido = $conn->query($insertar_datos_pedido);

    $consulta_optener_ultimo_pedido = "SELECT pedido.id_pedido FROM usuarios INNER JOIN pedido ON usuarios.id_usuario=pedido.usuarios_id_usuario WHERE usuarios.id_usuario='$id_usuario' ORDER BY pedido.id_pedido DESC LIMIT 1";
    $resultado_id_pedido = $conn->query($consulta_optener_ultimo_pedido);
    $id_ultimo_pedido_row = $resultado_id_pedido->fetch_assoc();

    $id_pedido = $id_ultimo_pedido_row["id_pedido"];

    for ($i=0; $i < count($_SESSION["carrito"]); $i++) {
        $id_producto = $_SESSION["carrito"][$i][0];
        $cantidad_producto = $_SESSION["carrito"][$i][1];
        $monto_producto = $_SESSION["carrito"][$i][8];
        $insertar_detalle_pedido = "INSERT INTO detalle_pedido (pedido_id_pedido,productos_id_producto,cantidad,monto_producto) VALUES ('$id_pedido','$id_producto','$cantidad_producto','$monto_producto')";
        $conn->query($insertar_detalle_pedido);
    }
    // necesitamos insertar todos los datos
    if($resultado_pedido === TRUE){
        echo "<div class='container-seccion-pedido'>
        <div class='container-title-seccion-pedido'>
            <span>PEDIDO REALIZADO</span>
        </div>
        <div class='container_informacion' id='container_informacion_pedido_realizado'>
            Se te enviará un correo a <strong>".$_SESSION["correo"]."</strong> con la boleta y detalles de la boleta, una vez que hayas cancelado el pedido, Gracias.
        </div>
        </div>";
        unset($_SESSION["carrito"]);
    }else{
        echo "<div class='container-seccion-pedido'>
        <div class='container-title-seccion-pedido'>
            <span>PEDIDO NO REALIZADO</span>
        </div>
        <div class='container_informacion' id='container_informacion_pedido_realizado'>
           Lo sentimos en estos momentos estamos teniendo problemas con nuestra tienda virtual, lo sentimos.
        </div>
        </div>";
    }
?>