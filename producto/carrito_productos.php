<?php
    require_once "../php/head.php";
    echo "<link rel='stylesheet' href='$link_base_root/estilos/carrito-productos.css'>";
    require_once "../php/header.php";
    // que pasa si el boton vaciar carrito es pulsado: Entonces tenenmos que destruir la variable session carrito y recargar la pagina
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["boton-vaciar-carrito"])){
        unset($_SESSION["carrito"]);
    }
    // que pasa si el boton vaciar carrito es pulsado: Entonces tenenmos que destruir la variable session carrito y recargar la pagina
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
                <th>Marca</th>
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
                <td><div class="fila-imagen-tabla">
                    <img src="<?php echo $_SESSION["carrito"][$i][3]?>" alt="Imagen del producto">
                </div></td>
                <td>
                    <!-- precio unitario -->
                    <?php echo number_format($_SESSION["carrito"][$i][4],2)?>
                </td>
                <td>
                    <!-- descuento -->
                    <?php echo $_SESSION["carrito"][$i][5]?>%
                </td>
                <td>
                    <!-- descuento total -->
                    <?php echo number_format($_SESSION["carrito"][$i][6],2)?>
                </td>
                <td>
                    <!-- precio sin descuento -->
                    <?php echo number_format($_SESSION["carrito"][$i][7],2)?>
                </td>
                <td class="precio-producto-tabla">
                    <!-- precio final -->
                    <?php echo number_format($_SESSION["carrito"][$i][8],2)?>
                </td>
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
                        echo number_format($montoFinal,2);
                    ?>
                </td>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                    <td><button class="boton-vaciar-carrito boton-fila-final" name="boton-vaciar-carrito">Vaciar carrito <i class="fas fa-thumbs-down"></i></button></td>
                </form>
            </tr>
        </tbody>
    </table>
    <?php
        // SE DEBE CONFIMAR LA COMPRA SI EL USUARIO YA A INICIADO SESIÓN (OBVIAMENTE YA HAY PRODUCTOS EN EL CARRITO)
        if(isset($_SESSION["correo"])){?>
        <div class="container-botones-confirmar-compra">
            <form action="<?php echo $link_base_root?>/compra/confirmar_compra.php" method="post">
                <button name="boton_confirmar_compra">
                    Confirmar Compra <i class="fas fa-shipping-fast"></i>
                </button>
            </form>
        </div>
    <?php
        }
        else{
            echo "<div class='container-botones-confirmar-compra'> Debe registrarse para confirmar la compra.</div>";
        }
    }else{
        echo "<div>No hay productos en carrito.</div>";
    }
    ?>
</main>
<?php
    require_once "../php/footer.php";
?>