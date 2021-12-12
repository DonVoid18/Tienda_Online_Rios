let boton_enviar_pedido = document.querySelector("#boton_enviar_pedido_usuario");
let select_departamento_pedido = document.getElementById("departamento_pedido");
let select_provincia_pedido = document.getElementById("provincia_pedido");
boton_enviar_pedido.addEventListener("click",enviarPedido);
function enviarPedido(){
    let value_monto_pedido = document.querySelector("#precio_number_final_pedido").value;
    let input_direccion = document.querySelector(".input_direccion_pedido");
    let departamento_pedido = select_departamento_pedido.options[select_departamento_pedido.selectedIndex].value;
    let provincia_pedido = select_provincia_pedido.options[select_provincia_pedido.selectedIndex].value;
    if(input_direccion.value !== "" && departamento_pedido !== "seleccionar" && provincia_pedido !== "seleccionar"){
        let valores_pedido = {
            "direccion": input_direccion.value,
            "departamento": departamento_pedido,
            "provincia": provincia_pedido,
            "monto_pedido": value_monto_pedido
        };
        $.ajax({
            data: valores_pedido,
            // nesitamos hacerlo dinámico para cualquier persona
            url: `${window.location.origin}/Tienda_Online_Rios/compra/enviar_pedido.php`,
            type: 'post',
            success: function(pedido_realizado){
                $('#container_resultado_pedido').html(pedido_realizado);
            }
        });
        input_direccion.value = "";
        input_direccion.style=null;
        select_departamento_pedido.style=null;
        select_provincia_pedido.style=null;
    }else{
        input_direccion.style = "box-shadow: 0 0 0.1775rem 0.0605rem red;";
        select_departamento_pedido.style = "box-shadow: 0 0 0.1775rem 0.0605rem red;";
        select_provincia_pedido.style = "box-shadow: 0 0 0.1775rem 0.0605rem red;";
    }
}