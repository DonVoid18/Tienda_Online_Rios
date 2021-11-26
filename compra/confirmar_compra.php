<?php
    require_once "../php/head.php";
?>
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-confirmar-comprar.css">
<?php
    require_once "../php/header.php";
?>
<main class="container-principal">
        <div class="container-seccion-pedido">
            <div class="container-title-seccion-pedido">
                <span>PRODUCTOS DEL PEDIDO</span>
            </div>
            <div class="container-seccion-productos-pedido">
                <div class="container-producto-pedido">
                    <div class="container-imagen-producto-pedido">
                        <img src="imagenes_banner/huawei1.jpg" alt="Imagen del producto">
                    </div>
                    <div class="container-descripcion-producto-pedido">
                        <p class="marca-producto-pedido">XIOMI</p>
                        <p class="descripcion-producto-pedido">anoasnd onfansdofnasodso asdfna sodnf</p>
                        <p class="cantidad-producto-pedido">Cantidad: 12</p>
                        <p class="precio-producto-pedido">S/ 1,000.00</p>
                    </div>
                </div>
            </div>
            <div class="container-boleta-pedido">
                <div class="container-detalle-boleta-pedido">
                    <table>
                        <tr>
                            <td>SubTotal: S/ </td>
                            <td>1212</td>
                        </tr>
                        <tr>
                            <td>Total Descuento: S/ </td>
                            <td>1212</td>
                        </tr>
                        <tr class="boleta-precio-final">
                            <td>Total Pedido: S/ </td>
                            <td class="boleta-precio-num-final">1212</td>
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
            <div class="container-dato-destino-pedido">
                <label for="departamento_pedido">Departamento</label>
                <select name="" id="departamento_pedido">
                    <option value="">Huánuco</option>
                    <option value="">Lima</option>
                </select>
            </div>
            <div class="container-dato-destino-pedido">
                <label for="departamento_pedido">Provincia</label>
                <select name="" id="departamento_pedido">
                    <option value="">Ambo</option>
                    <option value="">Huánuco</option>
                    <option value="">Tingo María</option>
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
<?php
    require_once "../php/footer.php";
?>