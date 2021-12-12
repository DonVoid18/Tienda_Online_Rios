<?php
$servername = "localhost";
$username = "root";
$password = "";
// colorcar el nombre dependiendo de la base de datos que tengas
$base_datos = "tienda_online_patrick_test";
// Create connection
$conn = new mysqli($servername, $username, $password, $base_datos);
$conn -> set_charset("utf8");
// Check connection
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}
//echo "Conexión establecidad";
?>