<?php
    require_once ("../php/head.php");
    echo "<link rel='stylesheet' href='$link_base_root/estilos/estilo-main.css'>";
    require_once ("../php/header.php");
?>
<main>
    <?php
        $text_busqueda = $_GET["search"];
        $consulta_busqueda_productos = "SELECT categoria.nombre_categoria,categoria.descripcion,productos.id_producto,productos.marca,productos.descripcion,productos.cantidad,productos.precio,productos.imagen_producto,oferta.descuento,oferta.estado_oferta FROM productos INNER JOIN categoria ON productos.categoria_id_categoria=categoria.id_categoria INNER JOIN oferta ON 
        productos.id_producto = oferta.productos_id_producto  WHERE (categoria.descripcion LIKE '%$text_busqueda%') OR (categoria.nombre_categoria LIKE '%$text_busqueda%') OR (productos.marca LIKE '%$text_busqueda%') OR (productos.descripcion LIKE '%$text_busqueda%')";
        $resultados_busqueda = $conn->query($consulta_busqueda_productos);
        $cantidadFilas = mysqli_num_rows($resultados_busqueda);
        // $row = $resultado->fetch_assoc();
        // echo $cantidadFilas;
        // print_r(array_values($row));
    ?>
    <div class="seccion">
        <?php
        if($cantidadFilas !==0){?>
            <div class="si-existe-producto">Cantidad de resultados: <?php echo $cantidadFilas?></div>
        <?php
        }
        ?>
        <div class="contenedor-productos">
            <?php
                if($cantidadFilas == 0){?>
                <div class="no-existe-producto">
                <p>No hay resultados de búsqueda <i class="far fa-frown"></i></p>
                </div>
                <?php } ?>
            <?php while($row = $resultados_busqueda->fetch_assoc()) {?>
            <div class="contenedor-producto">
                <div class="contenedor-producto-imagen">
                    <!-- imagen del producto -->
                    <img src="<?php echo $row["imagen_producto"]?>" alt="Imagen del producto" loading="lazy">
                </div>
                <div class="contenedor-producto-info">
                    <div class="contenedor-producto-titulo">
                        <p><?php
                        echo $row["marca"];
                        ?></p>
                    </div>
                    <div class="contenedor-producto-descripcion">
                        <?php
                        print $row["descripcion"];
                        ?>
                    </div>
                    <?php
                            if($row["estado_oferta"] === "1"){?>
                        <div class="contenedor-producto-precio">
                                <p>S/. <span class="precio"><?php
                                echo number_format($row["precio"],2);
                                ?></span></p>
                        </div>
                        <?php
                                }
                        ?>
                    <div class="contenedor-producto-precio-oferta">
                        <p>
                            S/. <span class="precio-oferta">
                                <?php
                                if($row["estado_oferta"] === "1"){
                                    $descuento_precio = round($row["precio"] * ($row["descuento"]/100),2);
                                    $precio_nuevo = number_format($row["precio"]-$descuento_precio,2);
                                    echo $precio_nuevo;
                                }else{
                                    echo number_format($row["precio"],2);
                                }
                                ?>
                            </span>
                        </p>
                    </div>
                    <!-- aqui tenemos que validar si el producto tiene la oferta habilitada o no -->
                    <?php
                        if($row["estado_oferta"] === "1"){?>
                            <div class="contenedor-banner-descuento-producto">
                                <span>-<?php echo $row["descuento"]?>%</span>
                            </div>
                        <?php
                        }
                        ?>
                    <div class="contenedor-producto-botom">
                        <form action="<?php echo $link_base_root?>/producto/informacion_producto.php" method="GET">
                            <button type="submit">Ver producto <span><i class="fas fa-eye"></i></span></button>
                            <input type="hidden" name="codigo_producto" value="<?php echo $row["id_producto"]?>">
                            <input type="hidden" name="nombre_producto" value="<?php echo $row["marca"]?>">
                            <input type="hidden" name="descripcion_producto" value="<?php echo $row["descripcion"]?>">
                        </form>
                    </div>
                    <div class="contenedor-producto-codigo">
                        <span>Código: <?php
                        echo $row["id_producto"];
                        ?></span>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
        <?php
            // cerramos la conexion a la base de datos
            $conn->close();
        ?>
    </div>
    <!-- todo el contenido de la página -->
</main>
<?php
    require_once ("../php/footer.php");
?>