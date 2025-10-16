<?php

require_once "utils/db_connection.php";
require_once "utils/funciones.php";

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

$tablas= [
'personajes'=> ['personaje'=>'bienvenidos'],
'vehiculos'=>['vehiculo'=>'bienvenidos'],
'tiempo'=>['tiempo'=>'bienvenidos'],
'cameos'=>['cameo'=>'bienvenidos'],
'peliculas'=>['pelicula'=>'bienvenidos']

];

if(!array_key_exists($tabla,$tablas)){

header('location: error404.php');
}

$categorias = listar_todo($conn, $tabla); 

?>
<?php require "partials/header.php"; ?>

<h1 class="text-center p-5">PELICULAS</h1>



<?php foreach ($categorias as $c) { ?>

  <div class="container card mb-3 p-2 ">
    <div class="row">
      <div class="col-2 p-2 ms-5">
        <img src="img/img-peliculas/<?= $c['img1'] ?>" class="img-fluid rounded" alt="Imagen de portada de volver al futuro 1">
      </div>

      <div class="col-9 mx-auto">
        <div class="card-body">
          <div>
          <h5 class="card-title"><?= $c['nombre'] ?></h5>
          </div>
          <div>
          <p class="card-text"><?= $c['descripcion'] ?></p>
          </div>
          <p class="card-text"><small class="text-body-secondary"></small></p>
        </div>
      </div>
    </div>
  </div>
<?php } ?>
   



</body>



<?php require "partials/footer.php";
?>