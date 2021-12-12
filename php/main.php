<?php
    ?>
    <main>
        <?php
            $consulta_productos = "SELECT productos.*,oferta.descuento,estado_oferta FROM productos INNER JOIN oferta ON productos.id_producto=oferta.productos_id_producto ORDER BY RAND() LIMIT 20";
            $productos = $conn->query($consulta_productos);
            $cantidadFilas = mysqli_num_rows($productos);
        ?>
        <div class="seccion">
            <div class="seccion-titulo-productos">
                <span>
                    <?php
                    if($cantidadFilas == 0){
                        echo "No tenemos productos";
                    }else{
                        echo "Todos nuestros productos";
                    }
                    ?>
                </span>
            </div>
            <div class="contenedor-productos">
                <?php while($row = $productos->fetch_assoc()) {?>
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
                            echo $row["descripcion"];
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
                <?php
                // cerramos la conexion a la base de datos
                $conn->close();
                ?>
            </div>
        </div>
        <!-- todo el contenido de la página -->
    </main>