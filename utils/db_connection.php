<?php

// configuraciones de la BD

$host = "localhost";
$user = "root";
$password = "";
$database = "vaf1";


try {
// Crear la conexion
$conn = new mysqli($host, $user, $password, $database);
// configurar codificacion de caracteres
$conn->set_charset("utf8mb4");

//echo "Conexion exitosa";


} catch (mysqli_sql_exception $e) {
error_log("Error de conexion on la base de datos");
die ("error de conexion, intente mas tarde");

}