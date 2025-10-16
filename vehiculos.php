<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";

// Validamos parámetros GET
$tabla = $_GET["categoria"] ?? false;
$id = $_GET["id"] ?? false;

// Obtenemos los datos desde la base de datos
$vehiculos = categoria_particular($conn, $tabla, $id);
?>





<?php require "partials/header.php"; ?>

<!-- zona se prueba -->
<!-- <div class="container bg-white">
<?php var_dump($vehiculos); ?>
</div>

<div class="container bg-white">
<?php var_dump($vehiculos[0]['img2']); ?>
</div>


<div class="container bg-white">
    <h1> TEST</h1>
<img src="img/vehiculos/<?= $vehiculos[0]['img2'] ?>">
</div>

<div class="container bg-white">
<img src="img/<?php $tabla ?>/aero1.jpg">
</div>

<div class="container bg-white">
<?php var_dump($tabla); ?>
</div>

<div class="container bg-white">
<p> <?php $tabla ?> </p>
</div>

<div class="container bg-white">
  <img height="300px"src="img/<?= $tabla ?>/<?= $c["img1"] ?> " class="card-img-top" alt="#">
</div> -->

<div class="d-flex flex-column align-items-center">

    <div class="container w-50 card mb-3 mt-5">

        <div class="row card-body justify-content-center">
            <div class="col-10 p-2">

                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="img/vehiculos/<?= $vehiculos[0]['img2']; ?>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="d-flex flex-column align-items-end">

                                    <h5>Vista 1</h5>

                                    <a class="btn btn-active botonsec" data-bs-toggle="button" href="previews.php?categoria=personajes" role="button">Saber +</a>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="img/vehiculos/<?= $vehiculos[0]['img3']; ?>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                               <div class="d-flex flex-column align-items-end">

                                    <h5>Vista 2</h5>

                                    <a class="btn btn-active botonsec" data-bs-toggle="button" href="previews.php?categoria=personajes" role="button">Saber +</a>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/vehiculos/<?= $vehiculos[0]['img4']; ?>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="d-flex flex-column align-items-end">

                                    <h5>Vista 3</h5>

                                    <a class="btn btn-active botonsec" data-bs-toggle="button" href="previews.php?categoria=personajes" role="button">Saber +</a>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/vehiculos/<?= $vehiculos[0]['img5']; ?>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="d-flex flex-column align-items-end">

                                    <h5>Vista 4</h5>

                                    <a class="btn btn-active botonsec" data-bs-toggle="button" href="previews.php?categoria=personajes" role="button">Saber +</a>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/vehiculos/<?= $vehiculos[0]['img6']; ?>" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                               <div class="d-flex flex-column align-items-end">

                                    <h5>Vista 5</h5>

                                    <a class="btn btn-active botonsec" data-bs-toggle="button" href="previews.php?categoria=personajes" role="button">Saber +</a>

                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>


    <!-- Información del vehículo -->

    <div class="container w-50 card mt-2 mb-3">

        <div class="card-body">
            <h5 class="card-title"><?= $vehiculos[0]['nombre'] ?></h5>
            <p class="card-text"><?= $vehiculos[0]['descripcion'] ?></p>

        </div>

    </div>
</div>





</main>

<?php require "partials/footer.php"; ?>