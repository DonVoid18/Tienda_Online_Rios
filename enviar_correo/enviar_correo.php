<?php
    require_once "../base_de_datos/conexion.php";
    $correo_anonymous = $_POST["correo"];
    $consulta_insertar_correo_anonymous = "INSERT INTO correos_publicidad (id_correo, correo) VALUES ('','$correo_anonymous')";
    $resultado_insertar_correo = $conn->query($consulta_insertar_correo_anonymous);
    if($resultado_insertar_correo === TRUE){
        echo "<span style='color:green;'>Gracias por enviarnos tu correo <i class='far fa-grin-hearts'></i></span>";
    }else{
        echo "<span style='color:red;'>Intente más tarde, estamos teniendo problemas</span>";
    }
    $conn->close();
?>