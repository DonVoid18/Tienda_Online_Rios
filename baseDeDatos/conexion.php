<?php
$servername = "localhost";
$username = "root";
$password = "";
$bd = "tiendaVirtual";
// Create connection
$conn = new mysqli($servername, $username, $password, $bd);
// para admitir las tildes en toda la paginaaa
$conn -> set_charset("utf8");
// Check connection
if ($conn->connect_error) {
  die("Error de conexión: " . $conn->connect_error);
}
?>