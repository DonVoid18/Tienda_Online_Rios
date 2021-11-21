<?php
    include ("../head.php");
?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;1,400&family=Open+Sans:wght@500&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/estilo-perfil-usuario.css">
<?php
    include ("../header.php");
?>
<!-- cuerpo de la página -->
    <form action="" class="form-container">
        <div class="container-titulo-perfil">
            <h2>DATOS DE TU CUENTA</h2>
            <button class="boton_cerrar_sesion" id="boton-cerrar-sesion-usuario" name="boton-cerrar-sesion-usuario">
                Cerrar Sesión
            </button>
        </div>
        <div class="container-datos-usuario">
            <div class="container-info-personal">
                <div class="container-input">
                    <label for="nombre_usuario" class="descripcion_input">Nombre</label>
                    <input type="text" value="DonVoid" id="nombre_usuario" class="input_info" disabled>
                </div>
                <div class="container-input">
                    <label for="apellido_paterno" class="descripcion_input">Apellido Paterno</label>
                    <input type="text" value=" " id="apellido_paterno" class="input_info" disabled>
                </div>
                <div class="container-input">
                    <label for="fecha_nacimiento" class="descripcion_input">Fecha de nacimiento</label>
                    <input type="text" value=" " id="fecha_nacimiento" class="input_info" disabled>
                </div>
                <div class="container-input">
                    <label for="dni_usuario" class="descripcion_input">DNI</label>
                    <input type="text" value=" " id="dni_usuario" class="input_info" disabled>
                </div>
                <div class="container-input">
                    <label for="celular_usuario" class="descripcion_input">Celular</label>
                    <input type="text" value="" id="celular_usuario" class="input_info" disabled>
                </div>
            </div>
            <div class="container-sesion-usuario">
                <div class="container-input">
                    <label for="correo_usuario" class="descripcion_input">Correo Electrónico</label>
                    <input type="text" value="" id="correo_usuario" class="input_info" disabled>
                </div>
                <div class="container-input">
                    <label for="password_usuario" class="descripcion_input">Contraseña</label>
                    <input type="text" value="" id="password_usuario" class="input_info" disabled>
                </div>
                <div class="container-botones-perfil">
                    <button type="button" id="boton_modificar_perfil">Modificar datos</button>
                    <button type="submit">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </form>
    <script>
        let inputs = document.querySelectorAll(".container-datos-usuario .input_info");
        let boton_modificar = document.querySelector("#boton_modificar_perfil");
        boton_modificar.addEventListener("click", desactivarBloqueo);
        function desactivarBloqueo(){
            for (let i = 0; i < inputs.length; i++) {
            inputs[i].removeAttribute("disabled");
            }
        }
    </script>
<?php
    include ("../footer.php");
    
?>