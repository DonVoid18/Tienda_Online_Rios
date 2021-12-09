const contenedor_total = document.querySelector(".contenedor-global-modal");
const boton_menu_1 = document.querySelector(".ingresar-cuenta");
const botones_footer_modal = document.querySelectorAll(".ingresar_cuenta_footer");
// agregamos evento a todos los botones del footer
for (let i = 0; i < botones_footer_modal.length; i++) {
    botones_footer_modal[i].addEventListener("click",cerrarVentanaModal);
}
// agregamos el evento blur
contenedor_total.addEventListener("click", function(e){
    abrirCerrarVentanaModal(e);
});

boton_menu_1.addEventListener("click",cerrarVentanaModal);
// funciones de cierre y abrir ventana modal
function abrirCerrarVentanaModal(e){
    if(contenedor_total === e.target){
        contenedor_total.classList.add("desactivo");
    }
}
function cerrarVentanaModal(){
    contenedor_total.classList.remove("desactivo");
}
// js de las validaciones de registro modal
const contendor_registro = document.querySelector(".contenedor-registro-ventana-modal");
const inpust_registro_modal = document.querySelectorAll(".contenedor-registro-ventana-modal input");
const mensajes_registro_modal = document.querySelectorAll(".contenedor-global-modal .mensaje-error-modal");

// expresiones regulares
let expresionesRegulares_modal = [
    // validar correo
    /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,
];
// agregamos eventos a todos lo inputs
for (let index = 0; index < inpust_registro_modal.length; index++) {
    inpust_registro_modal[index].addEventListener("blur", function (e){
        validar_registro_modal(e);
    });
    inpust_registro_modal[index].required = true;
}
function validar_registro_modal(evento){
    let name_modal = evento.target.name;
    let value_modal = evento.target.value.trim();
    switch(name_modal){
        case "correo_modal":
            if(expresionesRegulares_modal[0].test(value_modal)){
                // necesitamos desaparecer el error
                mensajes_registro_modal[0].style.display = "none";
            }else{
                mensajes_registro_modal[0].style.display = "block";
            }
            break;
        case "pass_modal":
            if(value_modal !== ""){
                // necesitamos desaparecer el error
                mensajes_registro_modal[1].style.display = "none";
            }
            else{
                mensajes_registro_modal[1].style.display = "block";
            }
            break;
    }
}