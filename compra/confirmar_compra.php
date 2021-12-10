<?php
    require_once "../php/head.php";
?>
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-confirmar-comprar.css">
<?php
    require_once "../php/header.php";
    if((isset($_SESSION["carrito"]) && count($_SESSION["carrito"])>0 && isset($_SESSION["correo"]))){?>
    <main class="container-principal">
        <div class="container-seccion-pedido">
            <div class="container-title-seccion-pedido">
                <span>PRODUCTOS DEL PEDIDO</span>
            </div>
            <div class="container-seccion-productos-pedido">
            <?php for ($i=0; $i < count($_SESSION["carrito"]); $i++) { ?>
                <div class="container-producto-pedido">
                    <div class="container-imagen-producto-pedido">
                        <img src="<?php echo $_SESSION["carrito"][$i][3]?>" alt="Imagen del producto">
                    </div>
                    <div class="container-descripcion-producto-pedido">
                        <p class="marca-producto-pedido"><?php echo $_SESSION["carrito"][$i][2]?></p>
                        <p class="descripcion-producto-pedido"><?php echo $_SESSION["carrito"][$i][9]?></p>
                        <p class="cantidad-producto-pedido">Cantidad: <?php echo $_SESSION["carrito"][$i][1]?></p>
                        <p class="precio-producto-pedido">S/ <?php echo number_format($_SESSION["carrito"][$i][8],2)?></p>
                    </div>
                </div>
            <?php } ?>
            </div>
            <div class="container-boleta-pedido">
                <div class="container-detalle-boleta-pedido">
                    <table>
                        <tr>
                            <td>SubTotal: S/ </td>
                            <td>
                                <!-- sin descuento -->
                                <?php
                                    $monto_sin_descuento = 0;
                                    for ($i=0; $i < count($_SESSION["carrito"]); $i++) { 
                                        $monto_sin_descuento = $monto_sin_descuento + $_SESSION["carrito"][$i][7];
                                    }
                                    echo number_format($monto_sin_descuento,2);
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Total Descuento: S/ </td>
                            <td>
                                <!-- descuento total -->
                                <?php
                                    $descuento_total_productos = 0;
                                    for ($i=0; $i < count($_SESSION["carrito"]); $i++) { 
                                        $descuento_total_productos = $descuento_total_productos + $_SESSION["carrito"][$i][6];
                                    }
                                    echo number_format($descuento_total_productos,2);
                                ?>
                            </td>
                        </tr>
                        <tr class="boleta-precio-final">
                            <td>Total Pedido: S/ </td>
                            <td class="boleta-precio-num-final">
                            <?php
                                $montoFinal = 0;
                                for ($i=0; $i < count($_SESSION["carrito"]); $i++) { 
                                    $montoFinal = $montoFinal + $_SESSION["carrito"][$i][8];
                                }
                                echo number_format($montoFinal,2);
                            ?>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="container-seccion-pedido">
            <div class="container-title-seccion-pedido">
                <span>DESTINO DEL PEDIDO</span>
            </div>
            <div class="container-dato-destino-pedido">
                <label for="">Dirección</label>
                <input type="text" placeholder="Dirección de donde vive">
            </div>
            <!-- realizamos la consulta multi tabla para obtener los valores -->
            <?php
                $consulta_departamento = "SELECT nombre_departamento FROM departamento";
                $departamentos = $conn->query($consulta_departamento);
            ?>
            <div class="container-dato-destino-pedido">
                <label for="departamento_pedido">Departamento</label>
                <select name="" id="departamento_pedido">
                    <option value="seleccionar" selected>Seleccionar</option>
                    <?php
                    while($row_departamento = $departamentos->fetch_assoc()) {?>
                        <option value="<?php echo $row_departamento["nombre_departamento"]?>"><?php echo $row_departamento["nombre_departamento"]?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="container-dato-destino-pedido">
                <label for="departamento_pedido">Provincia</label>
                <select name="" id="provincia_pedido">
                    <option value="seleccionar" selected>Seleccionar</option>
                </select>
            </div>
            <div class="container-button-enviar-datos-pedido">
                <button>Realizar Pedido <i class="fas fa-shipping-fast"></i></button>
            </div>
        </div>
        <div class="container-seccion-pedido">
            <div class="container-title-seccion-pedido">
                <span>MÉTODOS DE PAGO</span>
            </div>
            <div class="container-seccion-metodos-pagos">
                <div class="container-metodo-pago">
                    <p class="nombre-metodo-pago">Pago en Tienda</p>
                    <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/icon-pago_tienda.svg" alt="Logo de método de pago">
                    <p class="number-metodo-pago">Jr. 28 de julio al lado del mercado</p>
                </div>
                <div class="container-metodo-pago">
                    <p class="nombre-metodo-pago">Deposito a cuenta</p>
                    <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/bcp_logo.jpg" alt="Logo de método de pago">
                    <p class="number-metodo-pago">1231231231231231</p>
                </div>
                <div class="container-metodo-pago">
                    <p class="nombre-metodo-pago">Yape</p>
                    <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/yape.jpg" alt="Logo de método de pago">
                    <p class="number-metodo-pago">(+51) 923929304</p>
                </div>
            </div>
        </div>
    </main>
    <script src='<?php echo $link_base_root?>\javascript\departamentos_seleccionar.js'></script>
<?php
    }else{
        echo "Esta página necesita requisitos previos";
    }
?>
<?php
    require_once "../php/footer.php";
?>