<?php
    include "head.php";
    echo "<link rel='stylesheet' href='http://localhost:8080/PROYECTO-OFICIAL-FINAL/estilos/carrito-productos.css'>";
    include "header.php";
    include "registro.php";

    // que pasa si el boton vaciar carrito es pulsado: Entonces tenenmos que destruir la variable session carrito y recargar la pagina
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["boton-vaciar-carrito"])){
        unset($_SESSION["carrito"]);
    }
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["button-eliminar-producto"])){
        $codEliminar = $_POST["codigo-producto-eliminar"];
        unset($_SESSION["carrito"][$codEliminar]);
        $_SESSION["carrito"] = array_values($_SESSION["carrito"]);
    }
?>
<main>
    <?php if(isset($_SESSION["carrito"]) && count($_SESSION["carrito"])>0){?>
        <table class="tabla-productos-informacion">
        <thead>
            <tr>
                <th>Cantidad</th>
                <th>Modelo</th>
                <th>Imagen</th>
                <th>Precio Unitario</th>
                <th>Descuento %</th>
                <th>Descuento total</th>
                <th>Precio sin descuento</th>
                <th>Precio Final</th>
                <th>Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <?php for ($i=0; $i < count($_SESSION["carrito"]); $i++) { ?>
            <tr>
                <td><input  readonly="readonly" type="number" class="cantidad-input-tabla" value="<?php echo $_SESSION["carrito"][$i][1]?>"></td>
                <td><?php echo $_SESSION["carrito"][$i][2]?></td>
                <td><div class="fila-imagen-tabla"><img src="data:image/png;base64,<?php echo base64_encode($_SESSION["carrito"][$i][3])?>" alt="Imagen del producto"></div></td>
                <td><?php echo $_SESSION["carrito"][$i][4]?></td>
                <td><?php echo $_SESSION["carrito"][$i][5]?>%</td>
                <td><?php echo $_SESSION["carrito"][$i][6]?></td>
                <td><?php echo $_SESSION["carrito"][$i][7]?></td>
                <td class="precio-producto-tabla"><?php echo $_SESSION["carrito"][$i][8]?></td>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                    <input type="hidden" name="codigo-producto-eliminar" value="<?php echo $i?>">
                    <td><button id="button-eliminar-producto" name="button-eliminar-producto"><i class="fas fa-trash-alt"></i></button></td>
                </form>
            </tr>
            <?php } ?>
            <tr>
                <td colspan="7">Total</td>
                <td id="precio-total-productos">
                    <?php
                        $montoFinal = 0;
                        for ($i=0; $i < count($_SESSION["carrito"]); $i++) { 
                            $montoFinal = $montoFinal + $_SESSION["carrito"][$i][8];
                        }
                        echo $montoFinal;
                    ?>
                </td>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                    <td><button class="boton-vaciar-carrito boton-fila-final" name="boton-vaciar-carrito">Vaciar carrito</button></td>
                </form>
            </tr>
        </tbody>
    </table>
    <?php 
    }else{
        echo "<div>No hay productos en carrito.</div>";
    }
    ?>
</main>
<?php
    include "footer.php";
?>