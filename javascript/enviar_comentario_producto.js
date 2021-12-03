function enviarComentario(){
    // necesitamos saber la cantidad de estrellas o el valor de input
    let estrellas = document.querySelectorAll(".star_opinion_product");
    let cantidad_estrellas = 0;
    for (let i = 0; i < estrellas.length; i++) {
        if(estrellas[i].checked){
            cantidad_estrellas = 5-(i);
        }
    }
    let mensaje_usuario = document.getElementById("mensaje-usuario-comentario").value;
    let id_producto = document.getElementById("id_producto").value;
    let comentario_usuario = "cant_star="+cantidad_estrellas+"&id_producto="+id_producto+"&mensaje_usuario="+mensaje_usuario;
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