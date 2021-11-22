    <?php
    include "slider.php";
    include "registro.php";
    ?>
    <main>
        <?php 
            include "baseDeDatos/conexion.php";
            $consulta = "SELECT * FROM productos ORDER BY RAND() LIMIT 10";
            $resultado = $conn->query($consulta);
            $cantidadFilas = mysqli_num_rows($resultado);
            // $row = $resultado->fetch_assoc();
            // echo $cantidadFilas;
            // print_r(array_values($row));
        ?>
        <div class="seccion">
            <div class="seccion-titulo-productos">
                <span>
                    <?php
                    if($cantidadFilas == 0){
                        echo "No tenemos productos";
                    }else{
                        echo "Productos de la Tienda";
                    }
                    ?>
                </span>
            </div>
            <div class="contenedor-productos">
                <?php while($row = $resultado->fetch_assoc()) {?>
                <div class="contenedor-producto">
                    <div class="contenedor-producto-imagen">
                        <!-- imagen del producto -->
                        <img src="https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121294.jpg" alt="Imagen del producto" loading="lazy">
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
                                    1230
                                </span>
                            </p>
                        </div>
                        <div class="contenedor-banner-descuento-producto">
                            <span>-100%</span>
                        </div>
                        <div class="contenedor-producto-botom">
                        <form action="http://localhost:8080/PROYECTO-OFICIAL-FINAL\PHP\producto\informacion.php" method="GET">
                            <button type="submit">Ver producto <span><i class="fas fa-eye"></i></span></button>
                            <input type="hidden" name="codigo" value="<?php echo $row["codigo"]?>">
                        </form>
                        </div>
                        <div class="contenedor-producto-codigo">
                            <span>Código: <?php
                            echo $row["codigo"];
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