function enviar(){
    var marca = document.getElementById("marca-form").value;
    var descripcion = document.getElementById("descripcion-form").value;
    var codigo = document.getElementById("codigo-producto-form").value;
    var precio = document.getElementById("precio-form").value;
    var descuento = document.getElementById("descuento-form").value;
    var cantidad = document.getElementById("cantidad-productos-form").value;
    var data1 = "marca-form="+marca+"&descripcion-form="+descripcion+"&codigo-producto-form="+codigo+"&precio-form="+precio+"&descuento-form="+descuento+"&cantidad-productos-form="+cantidad;
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