const restar_boton = document.querySelector(".boton-restar-producto");
const sumar_boton = document.querySelector(".boton-sumar-producto");
const contenedor_cantidad_producto = document.querySelector(".boton-cantidad-producto");
const cantidad_producto_form = document.querySelector(".cantidad-producto-form");
let min = 1;
let max = document.querySelector(".cantidad-max-productos").innerHTML;
// min 1 y max = cantidad de productos
sumar_boton.addEventListener("click",function(e){
    if(min<max){
        min++;
        contenedor_cantidad_producto.innerHTML = min;
        contenedor_cantidad_producto.value = min;
    }
    cantidad_producto_form.value = min;
});
restar_boton.addEventListener("click",function(e){
    if(min>1){
        min--;
        contenedor_cantidad_producto.innerHTML = min;
        contenedor_cantidad_producto.value = min;
    }
    cantidad_producto_form.value = min;
});