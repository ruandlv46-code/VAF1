<?php

require_once "utils/db_connection.php";
require_once "utils/funciones.php";

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

$id = $_GET["id"] ? $_GET["id"] : FALSE;

$personajes = categoria_particular($conn, $tabla, $id);

/* <!-- <?php 
echo "<pre>";
var_dump($personaje);
echo "</pre>";
?> --> */



?>

<?php require "partials/header.php"; ?>



<main class="container">

    <?php foreach ($personajes as $p) { ?>


      <!--   <div class="card mb-3 mt-5 mx-auto" style="max-width: 740px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="img/personajes/<?= $p['img1'] ?>" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"> <b>nombre : </b><?= $p['nombre'] ?></h5>
                        <p class="card-text"> <b>descripcion : </b><?= $p['descripcion'] ?></p>
                        <a href="previews.php?categoria=personajes" class="btn btn-warning">Volver</a>




                    </div>
                </div>
            </div>
        </div> -->
        <div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
   
    <div class="col-md-8">
      <div class="card-body">
     <h1 class="card-title"> <b></b><?= $p['nombre'] ?></h1>
         <p class="card-text"> <b></b><?= $p['descripcion'] ?></p>
        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
      </div>
    </div>
     <div class="col-md-4">
      <img src="img/personajes/<?= $p['img1'] ?>" class="img-fluid rounded-start" alt="...">
      <h5>Informacion biologica</h5>
      <p>Fecha de nacimiento: <?= $p['fecha_de_nacim'] ?></p>
      <p>Edad: <?= $p['edad'] ?></p>
    </div>
  </div>

</div>

    <?php } ?>

</main>






<?php require "partials/footer.php";
?>