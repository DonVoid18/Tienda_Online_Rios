<?php
    require_once "../php/head.php";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/main-producto.css'>";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/estilo-comentarios-producto.css'>";
    echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>";
    require_once "../php/header.php";
    $nombre_producto = $_GET["nombre_producto"];
    $descripcion_producto = $_GET["descripcion_producto"];
    $codigo_producto =  $_GET["codigo_producto"];
?>
<?php
    $consulta_producto = "SELECT * FROM productos WHERE id_producto = '$codigo_producto' AND marca = '$nombre_producto' AND descripcion = '$descripcion_producto'";
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
                <p class="precio producto">Precio: S/. <span><?php echo number_format($row["precio"],2)?></span></p>
                <p class="precio_descuento producto">Precio Final: S/. <span><?php 
                    $descuento_precio = round($row["precio"] * ($row["descuento"]/100),2);
                    $precio_nuevo = number_format($row["precio"]-$descuento_precio,2);
                    echo $precio_nuevo;
                    ?></span></p>
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
            <?php
            if(isset($_SESSION["correo"])){?>
            <form class="container-nuevo-comentario-usuario" onsubmit="return enviarComentario();" method="POST">
                <div class="container-comentario-logo-usuario">
                    <i class="fas fa-user-edit"></i>
                </div>
                <div class="container-opinion-estrellas-usuario">
                        <input type="radio" name="opinion_star" id="star-1">
                        <label for="star-1">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-2">
                        <label for="star-2">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-3">
                        <label for="star-3">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-4">
                        <label for="star-4">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-5">
                        <label for="star-5">
                            <i class="fas fa-star"></i>
                        </label>
                </div>
                <div class="container-mensaje-input-usuario">
                    <p class="nombre_usuario_comentario_nuevo"><?php echo $_SESSION["nombre"]?></p>
                    <p>Danos tu opinión para saber que tan bueno es este producto</p>
                    <input type="text" name="mensaje-usuario-comentario" placeholder="Escribir un comentario para este producto...">
                    <input type="hidden" name="correo_usuario_comentario" value="<?php echo $_SESSION["correo"]?>">
                    <button type="submit">Enviar Comentario</button>
                </div>
            </form>
            <div id="mensaje_comentario_correcto"></div>
            <?php
            }
            ?>
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
    <script src="<?php echo $link_base_root?>\javascript\enviar_comentario_producto.js"></script>
    <script src="<?php echo $link_base_root?>\javascript\producto-informacion.js"></script>
    <script src="<?php echo $link_base_root?>\javascript\guardar_producto_carrito.js"></script>
<?php
    $conn->close();
    include "../php/footer.php";
?>