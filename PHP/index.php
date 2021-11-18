<?php
    include "head.php";
    // creamos un arreglo que contenga los links de una pagina en especifica
    $arreglosLinks = [
        "<link rel='stylesheet' href='http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/estilo-slider.css'>",
        "<link rel='stylesheet' href='http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/estilo-main.css'>"
    ];
    for ($i=0; $i <count($arreglosLinks) ; $i++) { 
        echo $arreglosLinks[$i];
    }
    include "header.php";
    include "main.php";
    include "footer.php";
?>

