<?php
    include "../head.php";
    echo "<link rel='stylesheet' href='http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/estilo-main.css'>";
    include "../header.php";
    include "../registro.php";
?>
<main>
    <?php 
        $nombre = "";
        // guardamos el link de la seccion televisores
        if($linkPagina == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/televisores.php"){
            $nombre = "televisores";
        };
        // guardamos el link de la seccion celulares
        if($linkPagina == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/celulares.php"){
            $nombre = "celulares";
        };
        // guardamos el link de la seccion audio y musica
        if($linkPagina == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/audio-musica.php"){
            $nombre = "audio-musica";
        };
        // guardamos el link de la seccion gaming
        if($linkPagina == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/gaming.php"){
            $nombre = "gaming";
        };
        // guardamos el link de la seccion equipos
        if($linkPagina == "http://localhost:8080/PROYECTO-OFICIAL-FINAL/PHP/secciones/equipos.php"){
            $nombre = "equipos";
        };
        include "../../baseDeDatos/conexion.php";
        $consulta = "SELECT * FROM productos WHERE seccion = '$nombre' ORDER BY RAND() LIMIT 20";
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
                    echo "No producto";
                }else{
                    echo $nombre;
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
            <?php while($row = $resultado->fetch_assoc()) {?>
            <div class="contenedor-producto">
                <div class="contenedor-producto-imagen">
                    <!-- imagen del producto -->
                    <img src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\imagenes_productos/<?php echo $row["imagen"]?>" alt="Imagen del producto" loading="lazy">
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
        </div>
        <?php
            // cerramos la conexion a la base de datos
            $conn->close();
        ?>
    </div>
    <!-- todo el contenido de la página -->  
</main>
<?php
    include "../footer.php";
?>