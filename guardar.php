<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email = $_POST['s'];

    //Guardar el mail 
    $resultado = gurdarEmail($conn, $email);

    //si se guardar correctamente redirigimmos 

    if($resultado === "correcto"){
        header("Location: gracias.php");
        exit;
    }else {
        echo "<p>Error al guardar el email: $resultado </p>";
    }
}else {
    echo "Acceso no permitido ";
}
?>
