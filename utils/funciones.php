<?php






function listar_todo($conn,$tabla){

// 1- Realizar la consulta o query

$sqlquery = "SELECT * FROM " . $tabla . ";";


// 2- Ejecutar la consulta

$result = $conn->query($sqlquery);


// 3- retornar y convertir la consulta en un array asociativo

return $result->fetch_all(MYSQLI_ASSOC);

}





function categoria_particular($conn,$tabla, $id){

// 1- Realizar la consulta o query

$sqlquery = "SELECT * FROM " . $tabla . " Where id=" . $id .";";


// 2- Ejecutar la consulta

$result = $conn->query($sqlquery);


// 3- retornar y convertir la consulta en un array asociativo

return $result->fetch_all(MYSQLI_ASSOC);

}






function buscar ($conn, $termino_busqueda){

// escapar el termino ($termino_busqueda) para evitar injection sql

$termino_busqueda = $conn->real_escape_string($termino_busqueda);

// consultas personajes
$sqlPersonajes = "SELECT 'personajes' as tabla, id, img1, nombre, descripcion, fecha_de_nacim, edad, actor FROM personajes WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";

// consultas vehiculos
$sqlVehiculos = "SELECT 'vehiculos' as tabla, id, img1, nombre, descripcion, img2, img3, img4, img5, img6 FROM vehiculos WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";

/* // consultas tiempo
$sqlTiempo = "SELECT 'tiempo' as tabla,id,nombre,descripcion,img1 FROM tiempo WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";

// consultas peliculas
$sqlPeliculas = "SELECT 'peliculas' as tabla,id,nombre, descripcion,img1 FROM peliculas WHERE LOWER(nombre) LIKE '%$termino_busqueda%' "; */

/* // consultas cameos
$sqlCameos = "SELECT 'cameos' as tabla,id,nombre, descripcion,img1 FROM cameos WHERE LOWER(nombre) LIKE '%$termino_busqueda%' "; */



// 2- Ejecutar las consultas y convertiendo en array asociativo (ORM Eloquent)

$resultPersonajes = $conn->query($sqlPersonajes)->fetch_all(MYSQLI_ASSOC);
$resultVehiculos = $conn->query($sqlVehiculos)->fetch_all(MYSQLI_ASSOC);
/* $resultTiempo = $conn->query($sqlTiempo)->fetch_all(MYSQLI_ASSOC);
$resultPeliculas = $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);
$resultCameos = $conn->query($sqlCameos)->fetch_all(MYSQLI_ASSOC);

*/


// 3- Combinar las 5 tablas

$resultado = array_merge($resultPersonajes,$resultVehiculos);

return $resultado;





}



?>


