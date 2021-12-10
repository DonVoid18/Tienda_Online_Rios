function enviarCorreoAnonymous(){
    // seleccionamos el valor del input
    let correo_anonymous = document.querySelector("#correo_usuario_anonymous");
    let mensaje_validacion_correo_anonymous = document.querySelector("#container_result_correo_anonymous");
    // expresiones regulares para la validacion del correo
    let expresionesRegulares_footer = [
        // validar correo
        /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,
    ];
    if(correo_anonymous.value !== ""){
        if(expresionesRegulares_footer[0].test(correo_anonymous.value)){
            let valores = {
                "correo": correo_anonymous.value
            };
            $.ajax({
                data: valores,
                url: 'enviar_correo/enviar_correo.php',
                type: 'post',
                success: function(mensaje_mostrar){
                    $('#container_result_correo_anonymous').html(mensaje_mostrar);
                }
            });
            correo_anonymous.value = "";
        }else{
            mensaje_validacion_correo_anonymous.innerText = "Correo Incorrecto";
        }
    }
}