<?php

require_once "utils/db_connection.php";
require_once "utils/funciones.php";

// capturar lo que viene por url (GET)

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

$tablas= [
'personajes'=> ['personaje'=>'bienvenidos'],
'vehiculos'=>['vehiculo'=>'bienvenidos'],
'peliculas'=>['peliculas'=>'peliculas'],
'tiempo'=>['tiempo'=>'bienvenidos'],
'cameos'=>['cameo'=>'bienvenidos']


];


if(!array_key_exists($tabla,$tablas)){

    

header('location: error404.php');
}

//var_dump($tabla);

// llamar a la funcion

$categorias = listar_todo($conn, $tabla);











?>

<?php require "partials/header.php"; ?>




<?php /* echo "<pre>";
var_dump($categorias);
echo "</pre>"; */ ?>


<main>



    <h1 class="text-center p-5">Guia de <?= $tabla ?></h1>

    <div class="container row mx-auto" >

        <?php foreach ($categorias as $c) { ?>
            <div class="col-4 mt-4 mb-4" >
                <div class="card" style="width: 18rem; height:600px;">
                    <img height="300px"src="img/<?= $tabla ?>/<?= $c["img1"] ?> " class="card-img-top" alt="#">
                    
                    <div class="card-body">
                        <h5 class="card-title card-text"><?= $c["descripcion"] ?> </h5>
                    </div>
                </div>

            </div>


        <?php } ?>

    </div>

</main>



<?php require "partials/footer.php";?>