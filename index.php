
<?php require "partials/header.php"; ?>




<body>


    <h1 class="text-center">PELICULA VOLVER AL FUTURO</h1>

    <div class="container"> 
    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/img-carrusel_index/fotocarrusel1.jpg" class="d-block w-100" alt="#1">
            </div>
            <div class="carousel-item">
                <img src="img/img-carrusel_index/fotocarrusel2.jpg" class="d-block w-100" alt="#2">
            </div>
            <div class="carousel-item">
                <img src="img/img-carrusel_index/fotocarrusel3.jpg" class="d-block w-100" alt="#3">
            </div>
            <div class="carousel-item">
                <img src="img/img-carrusel_index/fotocarrusel4.jpg" class="d-block w-100" alt="#4">
            </div>
            <div class="carousel-item">
                <img src="img/img-carrusel_index/fotocarrusel5.jpg" class="d-block w-100" alt="#5">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    </div>

    <br>


    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">SINOPSIS</h5>
                    <p class="card-text">Un clasico del cine de los 80 donde Marty McFly, un joven aventurero, viaja accidentalmente al año 1955 en un DeLorian convertido en una maquina del tiempo por el excentrico cientifico Doc Brown.
        Alli se encuentra con sus padres adolescentes y debe asegurarse de que se enamoren, o corre el riesgo de desaparecer de la historia. Con la ayuda del Doc, Marty lucha contra el tiempo para regresar al 1985 en una aventura llena de humor,
        ciencia ficción y acción.</p>
                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="col-md-4">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/NZMtvziROC0?si=MCQwrG1qg-Yt46Of" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
            
        </div>
    </div>



    <div class="d-flex container-fluid gap-3">
        <div class="card" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title text-center">PERSONAJES</h5>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
            <div>
                <img src="img/img-index/index-personajes.webp" class="card-img-top" alt="...">
            </div>
        </div>

        <div class="card" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title text-center">PELICULAS</h5>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
            <div>
                <img src="img/img-index/index-peliculas.jpg" class="card-img-top" alt="...">
            </div>
        </div>

        <div class="card" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title text-center">VEHICULOS</h5>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
            <div>
                <img src="img/img-index/index-vehiculos.jpeg" class="card-img-top" alt="...">
            </div>
        </div>

        <div class="card" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title text-center">LINEA DEL TIEMPO</h5>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
            <div>
                <img src="img/img-index/index-lineadetiempo.webp" class="card-img-top" alt="...">
            </div>
        </div>

        <div class="card" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title text-center">CAMEOS</h5>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
            <div>
                <img src="img/img-index/index-cameos.jpg" class="card-img-top" alt="...">
            </div>
        </div>

    </div>


</body>

<?php require "partials/footer.php";
?>