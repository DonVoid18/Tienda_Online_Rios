const input_comentario = document.querySelector("#mensaje-usuario-comentario");
const boton_enviar_comentario = document.querySelector("#boton_enviar_comentario");
boton_enviar_comentario.disabled = true;
input_comentario.addEventListener("change",function(){
    // esta función se ejecuta cada vez que se pierde el focus en el input
    if(document.querySelector("#mensaje-usuario-comentario").value === ""){
        boton_enviar_comentario.disabled = true;
        input_comentario.removeAttribute("style");
    }else{
        boton_enviar_comentario.disabled = false;
        input_comentario.style.boxShadow = "0 0 0.1875rem 0.0625rem #38b000";
    }
});