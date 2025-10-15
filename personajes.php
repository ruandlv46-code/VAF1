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



<!-- <main class="container p-5">
  <style>
    .card img {
      width: 100%;
      height: 300px;
      /* podés ajustar: 250px, 400px, etc. */
      object-fit: cover;
      /* recorta sin deformar */
      border-radius: 10px;
    }
  </style> -->

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
  <!-- <div class="card mb-3" style="max-width: 540px;"> -->



  <div class="container card m-5 d-flex">
    <div class="row">
      <h1 class="card-title text-center p-4"> <b></b><?= $p['nombre'] ?></h1>
    </div>
    <div class="row d-flex">

      <div class="col-8 d-flex justify-content-center">
        <div class="card mb-5 ms-5 border-1" style="border-color: gris">
        <p class="p-3"><?= $p['descripcion'] ?></p>
        </div>
      </div>


      <div class="col-4">
        <div class="row">
          <div class="col-10 mx-auto mb-3">
            <img src="img/personajes/<?= $p['img1'] ?>" class="img-fluid rounded" alt="...">
          </div>
        </div>
        <div class="row text-center">
          <h5>Informacion biologica</h5>
          <p>Fecha de nacimiento: <?= $p['fecha_de_nacim'] ?> - Edad: <?= $p['edad'] ?></p>
          <h5>Informacion detras de escena</h5>
          <p>interpretado por: <?= $p['actor'] ?></p>
        </div>
      </div>

    </div>

  </div>
  </div>


  </div>

  <!--<div class="row justify-content-center g-4">
  <div class="col-12 col-sm-6 col-md-4 col-lg-3 d-flex justify-content-center">
    <div class="card text-center" style="width: 16rem;">
      <img src="img/personajes/<?= $p['img1'] ?>" class="card-img-top" alt="<?= $p['nombre'] ?>" style="height: 250px; object-fit: cover;">
      <div class="card-body">
        <h5 class="card-title"><?= $p['nombre'] ?></h5>
        <a href="#" class="btn btn-warning">Ver más</a>
      </div>
    </div>
  </div>
</div>-->


<?php } ?>

</main>






<?php require "partials/footer.php";
?>


<!-- GGG -->
<!-- 
<div class="container">
    <div class="card card-pequena">

      <div class="personaje-card mx-auto p-4 shadow-lg rounded-4">
        <div class="row g-4">

          <div class="row g-0">
            <div class="col-md-8">
              <div class="card-body">
                <h1 class="card-title"> <b></b><?= $p['nombre'] ?></h1>
                <br>
                <p class="fs-4"> <b></b><?= $p['descripcion'] ?></p>
              </div>
            </div>
            <div class="col-md-4 fs-3">
              <img src="img/personajes/<?= $p['img1'] ?>" class="img-fluid rounded-start" alt="...">
              <h5 class="fs-3">Informacion biologica</h5>
              <p>Fecha de nacimiento: <?= $p['fecha_de_nacim'] ?></p>
              <p>Edad: <?= $p['edad'] ?></p>
              <h5 class="fs-3">Informacion detras de escena</h5>
              <p>interpretado por:</p>
              <p><?= $p['actor'] ?></p>
            
          </div>

        </div>
      </div>
      </div> -->