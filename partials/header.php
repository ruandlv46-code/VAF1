<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vuelta al futuro</title>
     <link rel="icon" type="image/x-icon" href="img/icono.ico">
    
    


    <!-- 1.BOOTSTRAP CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">




    <!-- 2.CUSTOM CSS -->
<link rel="stylesheet" href="css/estilos.css">


    <!-- 3.FAVICON -->
    <link rel="shortcut icon" href="img/fav2.jpg" type="x-icon">

    <!-- 4.ICONOS -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">


</head>



<header>

    <div class="d-flex justify-content-between p-3">

        <form action="busqueda.php" method="GET" class="d-flex ms-5" role="search">
            <input class="form-control me-2" name="q" type="search" placeholder="Buscador" aria-label="Search" />
            <button class="btn btn-outline-success" type="submit">Buscar</button>
        </form>

        <div>
            <img class="container-sm img-fluid " src="img/BTTF_Logo_tr_xsm.png" alt=" No logo">

        </div>
    </div>

    <nav class="navbar navbar-expand-lg">

        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-5 me-5 mb-2 mb-lg-0 w-100 justify-content-between">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">INICIO</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="previews.php?categoria=personajes">PERSONAJES</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="peliculas.php">PELICULAS</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="previews.php?categoria=vehiculos">VEHICULOS</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="preview2.php?categoria=tiempo">LINEA DE TIEMPO</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="preview2.php?categoria=cameos">CAMEOS</a>
                    </li>
                </ul>

            </div>

        </div>


    </nav>



</header>

<body>
    


<main>


