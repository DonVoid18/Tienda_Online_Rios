<?php
    include "../php/head.php";
    include "../php/header.php";
?>
    <div class="contenedor-formulario">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" class="formulario">
            <div class="mensaje-php">
            <?php
                // necesitmo agregar un contador de errores
                $NumErrores = 0;
                if($_SERVER["REQUEST_METHOD"] == "POST"){
                    $nombre = $apellidoP = $fechaNacimiento = $dni = $celular = $correo = $password = $password2 = "";
                    // nombre
                    if(empty($_POST["nombre"])){
                        $NumErrores++;
                    }else{
                        $nombre = validarDato($_POST["nombre"]);
                    }
                    // apellido
                    if(empty($_POST["apellidoP"])){
                        $NumErrores++;
                    }else{
                        $apellidoP = validarDato($_POST["apellidoP"]);
                    }

                    // fecha de nacimiento
                    if(empty($_POST["fecha-nacimiento"])){
                        $NumErrores++;
                    }else{
                        $fechaNacimiento = validarDato($_POST["fecha-nacimiento"]);
                    }

                    // dni
                    if(empty($_POST["dni"])){
                        $NumErrores++;
                    }else{
                        $dni = validarDato($_POST["dni"]);
                    }
                    // celular
                    if(empty($_POST["celular"])){
                        $NumErrores++;
                    }else{
                        $celular = validarDato($_POST["celular"]);
                    }

                    // correo
                    if(empty($_POST["correo"])){
                        $NumErrores++;
                    }else{
                        $correo = validarDato($_POST["correo"]);
                    }

                    // password
                    if(empty($_POST["pass"])){
                        $NumErrores++;

                    }else{
                        $pass = $_POST["pass"];
                    }
                    // repeatPassword
                    if(empty($_POST["repeatPassword"])){
                        $NumErrores++;
                    }else{
                        $password2 = validarDato($_POST["repeatPassword"]);
                    }

                    // si se encuentran errores entonces
                    if($NumErrores != 0){
                        // el error se muestra cuando se presiona el boton de enviar los datos
                        $mensajeError = "Los datos de algún campo se encuentran inválidos...";
                        echo $mensajeError;
                    }else{
                        // necesitamos saber que el correo, celular y dni no se repitan
                        $consulta_buscar_datos = "SELECT * FROM usuarios WHERE celular = '$celular' || dni = '$dni' || email = '$correo'";
                        $datos_consultados = $conn->query($consulta_buscar_datos);
                        if($datos_consultados->num_rows > 0){
                            // se encuentran datos repetidos
                            $mensajeDatosRepetidos = "El correo, celular o dni ya se encuentran registrados";
                            echo $mensajeDatosRepetidos;
                        }
                        else{
                            $consulta_insertar_datos = "INSERT INTO usuarios (nombre,apellido_paterno,fecha_nacimiento,dni,celular,email,password) VALUES ('$nombre','$apellidoP','$fechaNacimiento','$dni','$celular','$correo','$pass')";
                            $datos_insertados = $conn->query($consulta_insertar_datos);
                            if($datos_insertados === TRUE){
                                // los datos se enviaron
                                echo "Te registraste correctamente";
                            }
                            else{
                                // los datos no se enviaron por cualquier error
                                echo "Error: " . $enviar. "<br>" . $conn->error;
                            }
                        }
                        $conn->close();
                    }
                }
                // validamos los datos
                function validarDato($dato){
                    $dato = trim($dato);
                    $dato = stripslashes($dato);
                    $dato = htmlspecialchars($dato);
                    return $dato;
                }
            ?>
            </div>
            <div class="titulo-principal"><p>Crear una cuenta de usuario</p></div>
            <div class="subtitulo"><strong>Información Personal</strong></div>
            <div class="contenedor-input" id="nombre">
                <p>Nombre</p>
                <input type="text" name="nombre">
                <span class="info-error">Por favor, use solo letras A-Z/a-z en este campo.</span>
            </div>
            <div class="contenedor-input" id="apellidoP">
                <p>Apellido paterno</p>
                <input type="text" name="apellidoP">
                <span class="info-error">Por favor, use solo letras A-Z/a-z en este campo.</span>
            </div>
            <div class="contenedor-input" id="fecha-nacimiento">
                <p>Fecha de nacimiento</p>
                <input type="text" name="fecha-nacimiento" placeholder="Día / Mes / Año">
                <span class="info-error">Por favor, ingrese correctamente su fecha de nacimiento.</span>
            </div>
            <div class="contenedor-input" id="dni">
                <p>DNI</p>
                <input type="text" name="dni">
                <span class="info-error">Por favor, ingrese solo 8 dígitos y valores válidos.</span>
            </div>
            <div class="contenedor-input" id="celular">
                <p>Celular</p>
                <p><strong>Perú</strong> (+51)</p>
                <input type="text" name="celular">
                <span class="info-error">Por favor, ingrese solo 9 dígitos y valores válidos.</span>
            </div>

            <div class="subtitulo"><strong>Información de inicio de sesión</strong></div>
            <div class="contenedor-input" id="correo">
                <p>Email</p>
                <input type="email" name="correo">
                <span class="info-error">Por favor, ingrese correctamente su correo electrónico.</span>
            </div>
            <div class="contenedor-input" id="password">
                <p>Contraseña</p>
                <input type="password" name="pass">
                <span class="info-error">Por favor, la contraseña debe contar con minúsculas, mayúsculas y número para que esté correcto.</span>
            </div>
            <div class="contenedor-input" id="repeatPassword">
                <p>Confirmar contraseña</p>
                <input type="password" name="repeatPassword">
                <span class="info-error">Las contraseñas no coinciden.</span>
            </div>
            <div class="contenedor-checkbox">
                <input type="checkbox">
                <span>Acepto todos los términos y condiciones</span>
            </div>
            <div class="contenedor-boton boton-enviar">
                <button type="submit" name="registrar">CREAR CUENTA</button>
            </div>
        </form>
    </div>
    <!-- agregamos el footer -->
    <script src="<?php echo $link_base_root?>/javascript/codigo-registro.js"></script>
<?php include "../php/footer.php" ?>