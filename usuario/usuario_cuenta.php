<?php
    require_once ("../php/head.php");
?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;1,400&family=Open+Sans:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo $link_base_root?>/estilos/estilo-perfil-usuario.css">
<?php
    ob_start();
    require_once ("../php/header.php");
    if($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["boton-cerrar-sesion-usuario"])){
        session_destroy();
        header("Location: $link_base_root\index.php");
    }
    // redireccionar al panel del administrador
    if($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["boton_panel_administrador"])){
        header("Location: $link_base_root\./../../Panel/index.php");
    }
    if($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["boton_guardar_datos_usuario"])){
        $nombre_usuario = $_POST["nombre"];
        $apellido_paterno_usuario = $_POST["apellido_paterno"];
        $dni_usuario = $_POST["dni"];
        $celular_usuario = $_POST["celular"];
        $email_usuario = $_POST["email"];
        $password_usuario = $_POST["password"];
        $correo_actual_validacion = $_SESSION["correo"];
        $consulta_actualizar_datos_usuario = "UPDATE usuarios SET nombre='$nombre_usuario', apellido_paterno='$apellido_paterno_usuario', dni='$dni_usuario', celular='$celular_usuario', email='$email_usuario', password='$password_usuario' WHERE email='$correo_actual_validacion'";
        if($conn->query($consulta_actualizar_datos_usuario) === TRUE){
            $_SESSION["correo"] = $email_usuario;
            $_SESSION["nombre"] = $nombre_usuario;
            $_SESSION["apellido_paterno"] = $apellido_paterno_usuario;
            $_SESSION["dni"] = $dni_usuario;
            $_SESSION["celular"] = $celular_usuario;
            $_SESSION["password"] = $password_usuario;
            echo "<div style='padding: 10px 0;text-align:center;font-weight: 700'>Los datos se han actualizado correctamente.</div>";
            header("Location: $link_base_root\usuario/usuario_cuenta.php");
        }
        else{
            echo "Los datos no han sido actualizados, intentalo más tarde";
        }
    }
?>
<!-- cuerpo de la página -->
<main id="main_container_perfil_usuario">
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
        <div class="container-titulo-perfil">
            <h2>DATOS DE TU CUENTA
                <?php
                if(isset($_SESSION["rango"])){
                    echo "- ADMINISTRADOR";
                }
                ?>
            </h2>
            <button class="boton_cerrar_sesion" id="boton-cerrar-sesion-usuario" name="boton-cerrar-sesion-usuario">
                 Cerrar Sesión <i class="fas fa-sign-out-alt"></i>
            </button>
        </div>
        <div class="container-datos-usuario">
            <div class="container-info-personal">
                <div class="container-input">
                    <label for="nombre_usuario" class="descripcion_input">Nombre</label>
                    <input type="text" id="nombre_usuario" class="input_info" name="nombre" value="<?php echo $_SESSION["nombre"];?>" required>
                </div>
                <div class="container-input">
                    <label for="apellido_paterno" class="descripcion_input">Apellido Paterno</label>
                    <input type="text" id="apellido_paterno" class="input_info" name="apellido_paterno" value="<?php echo $_SESSION["apellido_paterno"]?>" required>
                </div>
                <div class="container-input">
                    <label for="dni_usuario" class="descripcion_input">DNI</label>
                    <input type="text" id="dni_usuario" class="input_info" name="dni" value="<?php echo $_SESSION["dni"]?>" required>
                </div>
                <div class="container-input">
                    <label for="celular_usuario" class="descripcion_input">Celular (+51)</label>
                    <input type="text" id="celular_usuario" class="input_info" name="celular" value="<?php echo $_SESSION["celular"]?>" required>
                </div>
            </div>
            <div class="container-sesion-usuario">
                <div class="container-input">
                    <label for="correo_usuario" class="descripcion_input">Correo Electrónico</label>
                    <input type="email" id="correo_usuario" class="input_info" name="email" value="<?php echo $_SESSION["correo"]?>" required>
                </div>
                <div class="container-input">
                    <label for="password_usuario" class="descripcion_input">Contraseña</label>
                    <input type="password" id="password_usuario" class="input_info" name="password" value="<?php echo $_SESSION["password"]?>" required>
                    <span class="boton_password_view">
                        <i class="fas fa-eye"></i>
                        <i class="fas fa-eye-slash"></i>
                    </span>
                </div>
                <div class="container-botones-perfil">
                    <!-- <button type="button" id="boton_modificar_perfil">Modificar datos <i class="fas fa-user-edit"></i></button> -->
                    <button type="submit" id="boton_guardar_datos" name="boton_guardar_datos_usuario">Guardar Cambios <i class="fas fa-save"></i></button>
                    <?php
                    if(isset($_SESSION["rango"])){?>
                        <button type="submit" id="boton_panel_administrador" name="boton_panel_administrador">Panel de administrador <i class="fas fa-users-cog"></i></button>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </form>
</main>
    <script src="<?php echo $link_base_root?>/javascript/boton_mostrar_password.js"></script>
<?php
    include ("../php/footer.php");
?>