function enviar(){
    var modelo = document.getElementById("modelo-form").value;
    var descripcion = document.getElementById("descripcion-form").value;
    var codigo = document.getElementById("codigo-producto-form").value;
    var precio = document.getElementById("precio-form").value;
    var descuento = document.getElementById("descuento-form").value;
    var cantidad = document.getElementById("cantidad-productos-form").value;
    var data1 = "modelo-form="+modelo+"&descripcion-form="+descripcion+"&codigo-producto-form="+codigo+"&precio-form="+precio+"&descuento-form="+descuento+"&cantidad-productos-form="+cantidad;
    $.ajax({
        type:'post',
        url:'carrito-compras.php',
        data: data1,
        success:function(resp){
            $("#mensaje-agregar-producto").html(resp);
        }
    });
    return false;
}