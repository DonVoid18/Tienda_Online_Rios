function enviar(){
    let marca = document.getElementById("marca-form").value;
    let descripcion = document.getElementById("descripcion-form").value;
    let codigo = document.getElementById("codigo-producto-form").value;
    let precio = document.getElementById("precio-form").value;
    let descuento = document.getElementById("descuento-form").value;
    let cantidad = document.getElementById("cantidad-productos-form").value;
    let data1 = "marca-form="+marca+"&descripcion-form="+descripcion+"&codigo-producto-form="+codigo+"&precio-form="+precio+"&descuento-form="+descuento+"&cantidad-productos-form="+cantidad;
    $.ajax({
        type:'post',
        url:'operacion_carrito_productos.php',
        data: data1,
        success:function(resp){
            $("#mensaje-agregar-producto").html(resp);
        }
    });
    return false;
}