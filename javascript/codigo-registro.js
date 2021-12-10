const contenedor = document.querySelector(".contenedor-formulario");
const inputs = document.querySelectorAll(".formulario input");
const mensajes = document.querySelectorAll(".formulario span");
// asignamos el valor hidden a todos los spam al inicio

// expresiones regulares
let expresionesRegulares = [
    // validar nombres y apellidos
    /(^[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{3,16})+$/,

    // validad el dni
    /^\d{8}(?:[-\s]\d{4})?$/,

    // validar numero de celular
    /^\(?([\d]{3})\)?[-.]?([\d]{3})[-.]?([\d]{3})$/,

    // validar correo
    /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,

    // validad contraseñas
    /^(?=(?:.*\d){1})(?=(?:.*[A-Z]){1})(?=(?:.*[a-z]){1})\S{8,16}$/

];


// agregamos eventos a todos lo inputs
for (let index = 0; index < inputs.length; index++) {
    inputs[index].addEventListener("blur", function (e){
        validar(e);
    });
    inputs[index].required = true;
}
function validar(evento){
    let name = evento.target.name;
    let value = evento.target.value.trim();
    switch(name){
        case "nombre":
            if(expresionesRegulares[0].test(value)){
                // necesitamos desaparecer el error
                mensajes[0].style.display = "none";
            }else{
                mensajes[0].style.display = "block";
            }
            break;
        case "apellidoP":
            if(expresionesRegulares[0].test(value)){
                // necesitamos desaparecer el error
                mensajes[1].style.display = "none";
            }else{
                mensajes[1].style.display = "block";
            }
            break;
        case "dni":
            if(expresionesRegulares[1].test(value)){
                // necesitamos desaparecer el error
                mensajes[2].style.display = "none";
            }else{
                mensajes[2].style.display = "block";
            }
            break;
        case "celular":
            if(expresionesRegulares[2].test(value)){
                // necesitamos desaparecer el error
                mensajes[3].style.display = "none";
            }else{
                mensajes[3].style.display = "block";
            }
            break;
        case "correo":
            if(expresionesRegulares[3].test(value)){
                // necesitamos desaparecer el error
                mensajes[4].style.display = "none";
            }else{
                mensajes[4].style.display = "block";
            }
            break;
        case "pass":
            if(expresionesRegulares[4].test(value)){
                // necesitamos desaparecer el error
                mensajes[5].style.display = "none";
            }else{
                mensajes[5].style.display = "block";
            }
            break;
        case "repeatPassword":
            if(expresionesRegulares[4].test(value)){
                // necesitamos desaparecer el error
                let contra = inputs[5].value;
                if(contra === value){
                    // las constraseñas no son iguales
                    mensajes[6].style.display = "none";
                }
                else{
                    mensajes[6].style.display = "block";
                }
            }else{
                mensajes[6].style.display = "block";
            }
            break;
    }
}