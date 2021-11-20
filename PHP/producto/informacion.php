<?php
    include "../head.php";
    echo "<link rel='stylesheet' href='http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/main-producto.css'>";
    echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>";
    include "../header.php";
    include "../registro.php";
    $codigoProducto = $_GET["codigo"];
?>
<?php
    include "../../baseDeDatos/conexion.php";
    $consulta = "SELECT * FROM productos WHERE codigo = '$codigoProducto'";
    $resultado = $conn->query($consulta);
    $row = $resultado->fetch_assoc();
    // $cantidadFilas = mysqli_num_rows($resultado);
    // echo "cantidad Filas".$cantidadFilas;
?>
    <main>
        <div id="mensaje-agregar-producto"></div>
        <div class="contenedor-producto">
            <div class="contenedor-imagen">
                <img src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\imagenes_productos/<?php echo $row["imagen"]?>" alt="Imagen del producto">
            </div>
            <div class="contenedor-informacion">
                <p class="titulo producto"><?php echo $row["modelo"]?></p>
                <p class="descripcion producto"><?php echo $row["descripcion"]?></p>
                <p class="codigo producto">Código: <?php echo $row["codigo"]?></p>
                <p class="precio producto">Precio: S/. <span><?php echo $row["precio"]?></span></p>
                <p class="descuento producto">Descuento: <span><?php echo $row["descuento"]?>%</span></p>
                <p class="cantidad producto">Cantida: <span value ="<?php echo $row["cantidad"]?>" class="cantidad-max-productos"><?php echo $row["cantidad"]?></span></p>
                <div class="contenedor-botones-cantidad">
                    <button class="boton-restar-producto">-</button>
                    <button class="boton-cantidad-producto">1</button>
                    <button class="boton-sumar-producto">+</button>
                </div>
                <form onsubmit="return enviar();" method="POST">
                    <input type="hidden" id="modelo-form" name="modelo-form" value="<?php echo $row["modelo"]?>">
                    <input type="hidden" id="descripcion-form" name="descripcion-form" value="<?php echo $row["descripcion"]?>">
                    <input type="hidden" id="codigo-producto-form" name="codigo-producto-form" value="<?php echo $row["codigo"]?>">
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
                        <td><?php echo $row["modelo"]?></td>
                    </tr>
                    <tr>
                        <td>Marca</td>
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
    </main>
    <script src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\JS\producto-informacion.js"></script>
    <script src="http://localhost:8080/PROYECTO-OFICIAL-FINAL\JS\ajax-codigo.js"></script>
<?php
    $conn->close();
    include "../footer.php";
?>