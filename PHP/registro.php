<?php
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["button-enviar-registro"])){
        echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        // http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/index.php
        // http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\index.php
        if("http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]" == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/index.php" || "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]" == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/carrito-productos.php"){
            include "../baseDeDatos/conexion.php";
        }
        else{
            include "../../baseDeDatos/conexion.php";
        }
        $correo = $_POST["correo_modal"];
        $pass = $_POST["pass_modal"];
        $consulta = "SELECT * FROM usuarios WHERE correo = '$correo' && pass='$pass'";
        $resultado = $conn->query($consulta);
        $cantidadFilas = mysqli_num_rows($resultado);
        $row = $resultado->fetch_assoc();
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
                    <a href="http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\registroOficial.php">¿No tienes una cuenta?</a>
                </div>
            </div>
        </div>
    </form>
    <script src='http://localhost:8080/PROYECTO-OFICIAL-FINAL\JS\ventana-modal.js'></script>
    <?php } ?>
    <!-- html de la ventana modal -->
    <?php } ?>