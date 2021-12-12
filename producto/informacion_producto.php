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
    $consulta_producto = "SELECT productos.id_producto,productos.marca,productos.descripcion, productos.cantidad, productos.precio, productos.imagen_producto,oferta.descuento,oferta.estado_oferta,ficha_tecnica.ancho,ficha_tecnica.peso,ficha_tecnica.alto,ficha_tecnica.color FROM productos INNER JOIN oferta ON  productos.id_producto=oferta.productos_id_producto INNER JOIN ficha_tecnica ON productos.id_producto=ficha_tecnica.productos_id_producto WHERE id_producto = '$codigo_producto' AND marca = '$nombre_producto' AND productos.descripcion = '$descripcion_producto'";
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
                <?php
                    if($row["estado_oferta"] === "1"){?>
                    <p class="precio producto">Precio: S/. <span><?php echo number_format($row["precio"],2)?></span></p>
                <?php
                    }
                ?>
                <p class="precio_descuento producto">Precio Final: S/.
                    <span>
                    <?php
                    if($row["estado_oferta"] === "1"){
                        $descuento_precio = round($row["precio"] * ($row["descuento"]/100),2);
                        $precio_nuevo = number_format($row["precio"]-$descuento_precio,2);
                        echo $precio_nuevo;
                    }else{
                        echo $row["precio"];
                    }
                    ?>
                    </span>
                </p>
                <p class="descuento producto">Descuento:
                    <span>
                    <?php
                     if($row["estado_oferta"] === "1"){
                         echo $row["descuento"];
                     }else{
                         echo "0";
                     }
                     ?>%
                    </span>
                </p>
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
                    <input type="hidden" id="descuento-form" name="descuento-form" value="
                    <?php
                        if($row["estado_oferta"] === "1"){
                            echo $row["descuento"];
                        }else{
                            echo "0";
                        }
                    ?>
                    ">
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
                        <td>Marca</td>
                        <td><?php echo $row["marca"]?></td>
                    </tr>
                    <tr>
                        <td>Descripción: </td>
                        <td><?php echo $row["descripcion"]?></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><?php echo $row["precio"]?></td>
                    </tr>
                    <tr>
                        <td>Descuento</td>
                        <td>
                        <?php
                            if($row["estado_oferta"] === "1"){
                                echo $row["descuento"];
                            }else{
                                echo "0";
                            }
                        ?>%
                        </td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                        <td><?php echo $row["cantidad"]?></td>
                    </tr>
                    <tr>
                        <td>Ancho</td>
                        <td><?php echo $row["ancho"]?> cm</td>
                    </tr>
                    <tr>
                        <td>Alto</td>
                        <td><?php echo $row["alto"]?> cm</td>
                    </tr>
                    <tr>
                        <td>Peso</td>
                        <td><?php echo $row["peso"]?> Kg</td>
                    </tr>
                    <tr>
                        <td>Color</td>
                        <td><?php echo $row["color"]?></td>
                    </tr>
                    <tr>
                        <td>Métedo de entrega</td>
                        <td><b>Delivery</b></td>
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
                <div class="container_comentario_logo_usuario">
                    <img src="<?php echo $link_base_root?>/imagenes_banner/logo_new_comentario/new_comentario.png" alt="Logo del nuevo comentario">
                </div>
                <div class="container-opinion-estrellas-usuario">
                        <input type="radio" name="opinion_star" id="star-1" class="star_opinion_product">
                        <label for="star-1">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-2" class="star_opinion_product">
                        <label for="star-2">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-3" class="star_opinion_product">
                        <label for="star-3">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-4" class="star_opinion_product">
                        <label for="star-4">
                            <i class="fas fa-star"></i>
                        </label>

                        <input type="radio" name="opinion_star" id="star-5" class="star_opinion_product">
                        <label for="star-5">
                            <i class="fas fa-star"></i>
                        </label>
                </div>
                <div class="container-mensaje-input-usuario">
                    <span class="nombre_usuario_comentario_nuevo"><?php echo $_SESSION["nombre"]?></span>
                    <span class="descripcion_new_comentario_usuario">Brindanos tu opinión acerta de este producto.</span>
                    <input type="text" name="mensaje-usuario-comentario" id="mensaje-usuario-comentario" placeholder="Escribir un comentario para este producto...">
                    <input type="hidden" name="id_producto" id="id_producto" value="<?php echo $row["id_producto"]?>">
                    <button type="submit" id="boton_enviar_comentario">Enviar Comentario</button>
                </div>
            </form>
            <div id="mensaje_comentario_correcto"></div>
            <?php
            }
            ?>
            <?php
                // realizar una selección de todos los comentarios que se encuentran el base de datos
                $consulta_comentarios_usuarios = "SELECT opinion.fecha_registro,opinion.comentario,opinion.producto_puntaje,usuarios.nombre,usuarios.apellido_paterno FROM opinion INNER JOIN usuarios ON opinion.usuarios_id_usuario = usuarios.id_usuario WHERE opinion.productos_id_producto = '$codigo_producto'";
                $comentarios_usuarios = $conn->query($consulta_comentarios_usuarios);
                $cantidad_comentarios = mysqli_num_rows($comentarios_usuarios);
                if($cantidad_comentarios!==0){
                while($comentario = $comentarios_usuarios->fetch_assoc()){
                    ?>
                <div class="container-comentario-usuario">
                    <div class="container-nombre-usuario-comentario">
                        <span>
                            <strong>
                                <?php
                                    echo $comentario["nombre"]." ".$comentario["apellido_paterno"];
                                ?>
                            </strong>
                        </span>
                        <span class="valoracion-producto-estrellas">
                            <?php
                                for ($i=0; $i < 5; $i++) {
                                    if($i<$comentario["producto_puntaje"]){
                                        echo "<i class='fas fa-star star_valoracion_producto_encendida'></i>";
                                    }else{
                                        echo "<i class='fas fa-star star_valoracion_producto_apagada'></i>";
                                    }
                                ?>
                            <?php
                                }
                            ?>
                        </span>
                    </div>
                    <div class="container-mensaje-usuario-comentario">
                        <p>
                        <?php
                            echo $comentario["comentario"];
                        ?>
                        </p>
                    </div>
                    <div class="container-fecha-usuario-comentario">
                        <?php
                        // extraer la hora y la fecha que se encuentra en una misma cadena
                            $fecha_registro = $comentario["fecha_registro"];
                            $posicion_espacio = strpos($fecha_registro," ");
                            $fecha = substr($fecha_registro,0,$posicion_espacio);
                            $hora = substr($fecha_registro,$posicion_espacio+1,strlen($fecha_registro));
                            echo "Hora: ".$hora." | Fecha: ".$fecha;
                        ?>
                    </div>
                </div>
            <?php
                }
            }
            ?>
        </div>
    </main>
    <?php
    if(isset($_SESSION["correo"])){?>
        <!-- pequeño script para validar el campo del input -->
        <script src="<?php echo $link_base_root?>\javascript\validar_input_new_comentario.js"></script>
        <script src="<?php echo $link_base_root?>\javascript\enviar_comentario_producto.js"></script>
    <?php
    }
    ?>
    <script src="<?php echo $link_base_root?>\javascript\producto-informacion.js"></script>
    <script src="<?php echo $link_base_root?>\javascript\guardar_producto_carrito.js"></script>
<?php
    $conn->close();
    include "../php/footer.php";
?>