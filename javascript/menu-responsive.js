// este script se encuentra en el video 2 de la página
const navegacion = document.querySelector(".header-2");
const boton_responsive = document.querySelector(".container-button-togle-menu");
boton_responsive.addEventListener("click",function(){
    navegacion.classList.toggle("activo-menu-responsive");
});
window.onscroll = function (){
    // posición del scroll en pantalla
    let scroll = document.documentElement.scrollTop || document.body.scrollTop;
    // cuando pase los 50px el menu se va a ocultar
    if(scroll > 50){
        navegacion.classList.remove("activo-menu-responsive");
    }
}