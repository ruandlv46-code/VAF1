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
$sqlPersonaje = "SELECT 'personajes' as tabla, id, nombre, afiliacion, planeta_natal, habilidades, arma, actor, imagen FROM personajes WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";

// consultas Naves
$sqlNaves = "SELECT 'naves' as tabla,id,nombre,descripcion,tipo,fabricante,longitud,velocidad_maxima,armamento,capacidad,imagen FROM naves WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";

// consultas Sables
$sqlSables = "SELECT 'sables' as tabla,id,nombre,descripcion,color,propietario,afiliacion,cristal,imagen FROM sables WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";


// consultas Peliculas
$sqlPeliculas = "SELECT 'peliculas' as tabla,id,nombre,episodio,descripcion,director,año_extreno,duracion,imagen FROM peliculas WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";


// 2- Ejecutar las consultas y convertiendo en array asociativo (ORM Eloquent)

$resultPersonaje = $conn->query($sqlPersonaje)->fetch_all(MYSQLI_ASSOC);
$resultNaves = $conn->query($sqlNaves)->fetch_all(MYSQLI_ASSOC);
$resultSables = $conn->query($sqlSables)->fetch_all(MYSQLI_ASSOC);
$resultPeliculas = $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);


// 3- Combinar las 4 tablas

$resultado = array_merge($resultPersonaje,$resultNaves,$resultSables,$resultPeliculas);

return $resultado;





}



?>