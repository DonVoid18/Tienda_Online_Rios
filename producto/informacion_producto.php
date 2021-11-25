<?php
    require_once "../php/head.php";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/main-producto.css'>";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/estilo-comentarios-producto.css'>";
    echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>";
    require_once "../php/header.php";
    $nombre_producto = $_GET["nombre_producto"];
?>
<?php
    $consulta_producto = "SELECT * FROM productos WHERE marca = '$nombre_producto'";
    $datos_producto = $conn->query($consulta_producto);
    $row = $datos_producto->fetch_assoc();
    // $cantidadFilas = mysqli_num_rows($resultado);
    // echo "cantidad Filas".$cantidadFilas;
?>
    <main>
        <div id="mensaje-agregar-producto"></div>
        <div class="contenedor-producto">
            <div class="contenedor-imagen">
                <img src="<?php echo $row["imagen_producto"]?>" alt="Imagen del producto">
            </div>
            <div class="contenedor-informacion">
                <p class="titulo producto"><?php echo $row["marca"]?></p>
                <p class="descripcion producto"><?php echo $row["descripcion"]?></p>
                <p class="codigo producto">Código: <?php echo $row["id_producto"]?></p>
                <p class="precio producto">Precio: S/. <span><?php echo $row["precio"]?></span></p>
                <p class="descuento producto">Descuento: <span><?php echo $row["descuento"]?>%</span></p>
                <p class="cantidad producto">Cantidad: <span value ="<?php echo $row["cantidad"]?>" class="cantidad-max-productos"><?php echo $row["cantidad"]?></span></p>
                <div class="contenedor-botones-cantidad">
                    <button class="boton-restar-producto">-</button>
                    <button class="boton-cantidad-producto">1</button>
                    <button class="boton-sumar-producto">+</button>
                </div>
                <form onsubmit="return enviar();" method="POST">
                    <input type="hidden" id="marca-form" name="marca-form" value="<?php echo $row["marca"]?>">
                    <input type="hidden" id="descripcion-form" name="descripcion-form" value="<?php echo $row["descripcion"]?>">
                    <input type="hidden" id="codigo-producto-form" name="codigo-producto-form" value="<?php echo $row["id_producto"]?>">
                    <input type="hidden" id="precio-form" name="precio-form" value="<?php echo $row["precio"]?>">
                    <input type="hidden" id="descuento-form" name="descuento-form" value="<?php echo $row["descuento"]?>">
                    <input type="hidden" class="cantidad-producto-form" id="cantidad-productos-form" name="cantidad-productos-form" value="1"> 
                    <button type="submit" class="bottom-carrito">Agregar al carrito</button>
                </form>
            </div>
        </div>
        <div class="contenedor-tabla">
        <div class="titulo-tabla-ficha-tecnica">Ficha Técnica</div>
            <table class="ficha-tecnica-tabla">
                <thead>
                    <tr>
                        <th>Atributo</th>
                        <th>Detalle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Modelo</td>
                        <td><?php echo $row["marca"]?></td>
                    </tr>
                    <tr>
                        <td>Descripción: </td>
                        <td><?php echo $row["descripcion"]?></td>
                    </tr>
                    <tr>
                        <td>Descuento</td>
                        <td><?php echo $row["descuento"]?>%</td>
                    </tr>
                    <tr>
                        <td>Métedo de entrega</td>
                        <td><b>Recoger en tienda</b></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- seccion de comentarios -->
        <div class="container-comentarios-producto">
            <div class="container-tituto-comentarios-producto">
                <p>
                    <strong>
                        Comentarios
                    </strong>
                </p>
            </div>
            <div class="container-comentario-usuario">
                <div class="container-nombre-usuario-comentario">
                    <span>
                        <strong>
                            Angelo Patrick
                        </strong>
                    </span>
                    <span class="valoracion-producto-estrellas">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </span>
                </div>
                <div class="container-mensaje-usuario-comentario">
                    <p>Este producto es muy bueno es todos los aspectos.
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Corporis voluptatem saepe ducimus exercitationem veritatis, officia assumenda earum animi dolorum vitae optio, necessitatibus magni tempora possimus dolore minima sit et recusandae itaque illo! Deserunt iste, dolore dolorem suscipit, velit, rerum sapiente nulla accusamus dolorum necessitatibus modi dignissimos. Corporis praesentium commodi consectetur.
                    </p>
                </div>
                <div class="container-fecha-usuario-comentario">
                    Hora: 12:10:01 | Fecha: 12/12/12
                </div>
            </div>
        </div>
    </main>
    <script src="<?php echo $link_base_root?>\javascript\producto-informacion.js"></script>
    <script src="<?php echo $link_base_root?>\javascript\guardar_producto_carrito.js"></script>
<?php
    $conn->close();
    include "../php/footer.php";
?>