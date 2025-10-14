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

<main class="container my-5">

    <?php foreach ($vehiculos as $index => $p): ?>
        <?php $carouselId = "carouselVehiculo" . $index; ?>

        <div class="card mb-5 shadow-sm">
            <!-- Carrusel de imágenes -->
            <div id="<?= $carouselId ?>" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000" data-bs-wrap="true">
                <div class="carousel-inner">
                    <?php
                    // Lista de imágenes posibles
                    $imagenes = [$p['img1'], $p['img2'], $p['img3'], $p['img4'], $p['img5']];
                    $contador = 0;
                    $hayImagen = false;

                    foreach ($imagenes as $img):
                        if (!empty($img)):
                            $hayImagen = true;
                    ?>
                            <div class="carousel-item <?= $contador === 0 ? 'active' : '' ?>">
                                <img src="img/vehiculos/<?= htmlspecialchars($img) ?>"
                                    class="d-block w-100"
                                    alt="<?= htmlspecialchars($p['nombre'] ?? 'Imagen del vehículo') ?>">
                            </div>
                    <?php
                            $contador++;
                        endif;
                    endforeach;
                    ?>

                    <?php if (!$hayImagen): ?>
                        <!-- Imagen por defecto si no hay fotos -->
                        <div class="carousel-item active">
                            <img src="img/vehiculos/default.jpg" class="d-block w-100" alt="Sin imagen disponible">
                        </div>
                    <?php endif; ?>
                </div>

                <!-- Controles -->
                <button class="carousel-control-prev" type="button" data-bs-target="#<?= $carouselId ?>" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#<?= $carouselId ?>" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>

            <!-- Información del vehículo -->
            <div class="card-body">
                <h5 class="card-title"><?= htmlspecialchars($p['nombre'] ?? 'Sin título') ?></h5>
                <p class="card-text"><?= htmlspecialchars($p['descripcion'] ?? 'Sin descripción disponible.') ?></p>
                <p class="card-text">
                    <small class="text-muted">Última actualización: <?= htmlspecialchars($p['fecha'] ?? 'N/A') ?></small>
                </p>
            </div>
            
        </div>
    <?php endforeach; ?>




</main>

<?php require "partials/footer.php"; ?>