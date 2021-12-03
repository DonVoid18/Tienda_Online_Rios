    <!-- footer de la pagina -->
    <footer class="container-footer">
    <div class="container-seccion">
        <p>Entérate de nuestras ofertas</p>
        <div class="container-input-email-footer">
            <input type="email" placeholder="Correo electrónico">
            <button><i class="fas fa-angle-double-right"></i></button>
        </div>
        <div class="container-redes-sociales-footer">
            <a href="">
                <i class="fab fa-facebook"></i>
            </a>
            <a href="">
                <i class="fab fa-whatsapp"></i>
            </a>
            <a href="">
                <i class="fab fa-instagram"></i>
            </a>
        </div>
    </div>
    <div class="container-seccion">
        <p>Información para el cliente</p>
        <div class="container-ul-seccion">
            <ul>
                <li><a href="">Contáctenos</a></li>
                <li><a href="">Nuestras tiendas</a></li>
                <li><a href="">Cambio y devoluciones</a></li>
            </ul>
        </div>
    </div>
    <div class="container-seccion">
        <p>Gestión de cuenta</p>
        <div class="container-ul-seccion">
            <ul>
                <li><a href="">Mi cuenta</a></li>
                <li><a href="<?php echo $link_base_root?>\usuario\registrar_usuario.php">Registrate</a></li>
                <li><a href="">Actualizar datos</a></li>
                <li><a href="">Cambiar contraseña</a></li>
            </ul>
        </div>
    </div>
    <div class="container-seccion">
        <p>Medios de pago</p>
        <div class="medios-pago-logo">
            <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/yape.jpg" alt="Logo de método de pago">
            <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/bcp_logo.jpg" alt="Logo de método de pago">
            <img src="<?php echo $link_base_root?>/imagenes_banner/imagenes_pagos/icon-pago_tienda.svg" alt="Logo de método de pago">
        </div>
    </div>
    </footer>
    <div class="contenedor-banner-footer">
        <div class="contenedor-footer-img">
            <img src='<?php echo $link_base_root?>/imagenes_banner/footer-logo.png' alt="">
        </div>
    </div>
</body>
</html>