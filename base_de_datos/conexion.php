<?php
$servername = "localhost";
$username = "root";
$password = "";
$base_datos = "tienda_online_rios";
// Create connection
$conn = new mysqli($servername, $username, $password, $base_datos);
// Check connection
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}
//echo "Conexión establecidad";
?>