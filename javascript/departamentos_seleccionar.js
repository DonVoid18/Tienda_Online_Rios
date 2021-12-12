let departamento_seleccionado = document.getElementById("departamento_pedido");
departamento_seleccionado.addEventListener("change",function(){
    let selectedOption = this.options[departamento_seleccionado.selectedIndex];
    enviarDepartamento(selectedOption.value);
    console.log(selectedOption.value);
});
function enviarDepartamento(nombre_departamento){
    let departamento = "departamento="+nombre_departamento;
    $.ajax({
        type:'post',
        url:'seleccionar_departamento.php',
        data: departamento,
        success:function(provincias){
            $("#provincia_pedido").html(provincias);
        }
    });
}
