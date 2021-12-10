<?php
    require_once "../base_de_datos/conexion.php";
    $nombre_departamento = $_POST["departamento"];
    $consulta_provincias = "SELECT provincia.nombre_provincia FROM provincia INNER JOIN departamento ON departamento.id_departamento = provincia.id_departamento WHERE departamento.nombre_departamento='$nombre_departamento'";
    $provincias_resultado = $conn->query($consulta_provincias);
    $cant_provincias = mysqli_num_rows($provincias_resultado);
    if($cant_provincias!==0){
        while($row = $provincias_resultado->fetch_assoc()){
            echo "<option value='$row[nombre_provincia]'>$row[nombre_provincia]</option>";
        }
    }else{
        echo "<option value='' selected>Seleccionar</option>";
    }
    $conn->close();
?>