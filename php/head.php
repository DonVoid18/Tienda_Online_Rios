<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RIOS GAMING</title>
    <!-- aqui van los estilos principales de la pagina -->
    <?php
        $ruta_carpeta_raiz = "/TIENDA_ONLINE_RIOS";//cambiar cada vez que el nombre de la carpeta raiz cambie
        $link_base_root = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'].$ruta_carpeta_raiz;
        $base_link = realpath($_SERVER["DOCUMENT_ROOT"]).$ruta_carpeta_raiz;
    ?>
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-header.css">
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-footer.css">
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-registro.css">
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-ventana-modal.css">
    <?php
    ?>
    <script src="https://kit.fontawesome.com/71a4b48035.js" crossorigin="anonymous"></script>