</head>
<body>
    <header class="header-1">
        <div class="contenedor-menu-1">
            <div class="contenedor-logo-imagen">
                <a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\index.php"><img src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\imagenes\logo-principal.png" alt="logo de la página"></a>
            </div>
            <div class="contenedor-buscador-input">
                <input type="text" placeholder="Buscar producto">
                <button class="icon-buscador">
                    <i class="fas fa-search"></i>
                </button>
            </div>
            <nav>
                <ul>
                    <?php
                    // iniciar sesion
                    session_start();
                    if(isset($_SESSION["correo"])){?>
                        <li class="item-menu" class="cuenta-activa"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\usuario\usuario_perfil.php"><i class="fas fa-user"></i> <?php echo $_SESSION["nombre"]?></a></li>                        
                    <?php }
                    else{?>
                        <li class="item-menu ingresar-cuenta"><span><i class="fas fa-user"></i></span>  Ingresar</li>
                    <?php } ?>
                    <li class="item-menu"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\carrito-productos.php" class="item-link"><span><i class="fas fa-shopping-cart"></i></span> Mi carrito 
                    <?php
                    if(isset($_SESSION["carrito"])){
                        // entonces que nos muestre la cantidad de productos
                        if(count($_SESSION["carrito"])>0){
                            echo "<span id='cantidad-productos-carrito'>".count($_SESSION["carrito"])."</span>";
                        }
                    }
                    ?></a></li>
                </ul>
            </nav>
        </div>
    </header>
    <header class="header-2">
        <nav>
            <ul>
                <li class="item-menu-2"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/televisores.php" class="item-link-2">Televisores</a></li>
                <li class="item-menu-2"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/celulares.php" class="item-link-2">Celulares</a></li>
                <li class="item-menu-2"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/audio-musica.php" class="item-link-2">Audio y música</a></li>
                <li class="item-menu-2"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/gaming.php" class="item-link-2">Gaming</a></li>
                <li class="item-menu-2"><a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/equipos.php" class="item-link-2">Equipos</a></li>
            </ul>
        </nav>
    </header>
    <?php
    if(isset($_SESSION["correo"])){?> 
        <!-- agregamos el script -->
        <script src=''></script>
    <?php } ?>                   