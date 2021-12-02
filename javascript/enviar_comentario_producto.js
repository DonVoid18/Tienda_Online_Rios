function enviarComentario(){
    // necesitamos saber la cantidad de estrellas o el valor de input
    let estrellas = document.getElementsByName("opinion_star");
    let cantidad_estrellas = 0;
    for (let i = 0; i < estrellas.length; i++) {
        if(estrellas[i].checked){
            cantidad_estrellas = 5-(i);
        }
    }
    let mensaje_usuario = document.getElementsByName("mensaje-usuario-comentario").value;
    let correo_usuario = document.getElementsByName("correo_usuario_comentario").value;
    let comentario_usuario = "cant_star="+cantidad_estrellas+"&mensaje_usuario="+mensaje_usuario+"&correo_usuario="+correo_usuario;
    $.ajax({
        type:'post',
        url:'enviar_comentario.php',
        data: comentario_usuario,
        success:function(respuesta1){
            $("#mensaje_comentario_correcto").html(respuesta1);
        }
    });
    return false;
}