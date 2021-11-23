</head>
<body>
    <header class="header-1">
        <div class="contenedor-menu-1">
            <div class="contenedor-logo-imagen">
                <a href="<?php echo $link_base_root?>\index.php"><img src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\imagenes\logo-principal.png" alt="logo de la página"></a>
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
                    require_once $base_link."/base_de_datos/conexion.php";//CONEXIÓN A LA BASE DE DATOSS
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
                <?php
                    //aqui deben aparecer todas todas las secciones de la base de datos
                    $seccion_header = "SELECT DISTINCT nombre_categoria FROM categoria";
                    $secciones = $conn->query($seccion_header);
                    if ($secciones->num_rows > 0) {
                        while($row = $secciones->fetch_assoc()) {?>
                            <li class="item-menu-2"><a href="<?php echo $link_base_root?>/secciones/<?php echo $row["nombre_categoria"];?>.php" class="item-link-2"><?php echo $row["nombre_categoria"];?></a></li>
                <?php                        }
                    } else {
                      echo "No tenemos resultados";
                    }
                ?>
            </ul>
        </nav>
    </header>
    <?php
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["button-enviar-registro"])){
        $correo = $_POST["correo_modal"];
        $pass = $_POST["pass_modal"];
        $consulta_validacion = "SELECT * FROM usuarios WHERE correo = '$correo' && pass='$pass'";
        $validacion_datos = $conn->query($consulta_validacion);
        $cantidadFilas = mysqli_num_rows($validacion_datos);
        $row = $validacion_datos->fetch_assoc();
        // si se encuentra 1 fila entonces el usuario si existe de lo contrario no existe
        if($cantidadFilas !== 0){
            $_SESSION["correo"] = $correo;
            $_SESSION["nombre"] = $row["nombre"];
            header("Location: http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\index.php");
        }
    }else{?>
    <?php if(!isset($_SESSION["correo"])){?>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" autocomplete="off">
        <div class="contenedor-global-modal desactivo">
            <div class="contenedor-registro-ventana-modal">
                <div class="contenedor-modal-icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="contenedor-modal-titulo">
                    <h3>Ingresar a mi cuenta</h3>
                </div>
                <div class="contenedor-modal-correo">
                    <span><i class="fas fa-at"></i></span>
                    <input type="text" name="correo_modal" placeholder="Correo">
                </div>
                <p class="mensaje-error-modal">Email inválido</p>
                <div class="contenedor-modal-pass">
                    <span><i class="fas fa-lock"></i></span>
                    <input type="password" name="pass_modal" placeholder="Contraseña">
                </div>
                <p class="mensaje-error-modal">Contraseña inválida</p>
                <div class="contenedor-modal-botonEnviar">
                    <button type="submit" name="button-enviar-registro">Ingresar</button>
                </div>
                <div class="contenedor-modal-link">
                    <a href="<?php echo $link_base_root?>\usuario\registrar_usuario.php">¿No tienes una cuenta?</a>
                </div>
            </div>
        </div>
    </form>
    <?php } ?>
    <script src='<?php echo $link_base_root?>\javascript\ventana-modal.js'></script>
    <!-- html de la ventana modal -->
    <?php } ?>