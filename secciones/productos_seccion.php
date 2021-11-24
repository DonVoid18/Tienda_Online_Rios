<?php
    require_once "../php/head.php";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/estilo-main.css'>";
    require_once "../php/header.php";
?>
<main>
    <?php 
        $consulta_producto_seccion = "SELECT * FROM categoria INNER JOIN productos on categoria.id_categoria = productos.categoria WHERE nombre_categoria = '$nombre_categoria'";
        $productos_seccion = $conn->query($consulta_producto_seccion);
        $cantidadFilas = mysqli_num_rows($productos_seccion);
        // $row = $resultado->fetch_assoc();
        // echo $cantidadFilas;
        // print_r(array_values($row));
    ?>
    <div class="seccion">
        <div class="seccion-titulo-productos">
            <span class="productos-no-existen">
                <?php
                if($cantidadFilas == 0){
                    echo strtoupper($nombre_categoria." - no hay productos");
                }else{
                    echo strtoupper($nombre_categoria);
                }
                ?>
            </span>
        </div>
        <div class="contenedor-productos">
            <?php
                if($cantidadFilas == 0){?>
                <div class="no-existe-producto">
                <p>Por el momento no contamos con productos <br> <i class="far fa-sad-tear"></i></p>
                </div>
                <?php } ?>
            <?php while($row = $productos_seccion->fetch_assoc()) {?>
            <div class="contenedor-producto">
                <div class="contenedor-producto-imagen">
                    <!-- imagen del producto -->
                    <img src="<?php echo $row["imagen_producto"]?>" alt="Imagen del producto" loading="lazy">
                </div>
                <div class="contenedor-producto-info">
                    <div class="contenedor-producto-titulo">
                        <p><?php
                        echo $row["modelo"];
                        ?></p>
                    </div>
                    <div class="contenedor-producto-descripcion">
                        <?php
                        print $row["descripcion"];
                        ?>
                    </div>
                    <div class="contenedor-producto-precio">
                        <p>S/. <span class="precio"><?php
                        echo $row["precio"];
                        ?></span></p>
                    </div>
                    <div class="contenedor-producto-precio-oferta">
                        <p>
                            S/. <span class="precio-oferta">
                                2300
                            </span>
                        </p>
                    </div>
                    <div class="contenedor-banner-descuento-producto">
                        <span>-<?php echo $row["descuento"]?>%</span>
                    </div>
                    <div class="contenedor-producto-botom">
                        <form action="<?php echo $link_base_root?>/producto/informacion_producto.php" method="GET">
                            <button type="submit">Ver producto <span><i class="fas fa-eye"></i></span></button>
                            <input type="hidden" name="nombre_producto" value="<?php echo $row["modelo"]?>">
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
    require_once "../php/footer.php";
?>