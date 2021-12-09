// seleccionar los iconos
const view_boton = document.querySelector(".boton_password_view .fa-eye");
const view_boton_not = document.querySelector(".boton_password_view .fa-eye-slash");
const boton_view_pass = document.querySelector(".boton_password_view");
const input_password = document.querySelector("#password_usuario");
boton_view_pass.addEventListener("click",viewPassword);
function viewPassword(){
    if(input_password.getAttribute("type") === "password"){
        view_boton.style.display = "none";
        view_boton_not.style.display = "inline-block";
        input_password.setAttribute("type","text");
    }else{
        view_boton.style.display = "inline-block";
        view_boton_not.style.display = "none";
        input_password.setAttribute("type","password");
    }
}