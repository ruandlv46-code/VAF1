</main>

<footer>

  <div class="container d-flex">

    <div class="d-flex redes-sociales align-self-end">

      <a href="#"><i class="icono fa-brands fa-facebook p-2"></i></a>
      <a href="#"><i class="icono fa-brands fa-instagram p-2"></i></a>
      <a href="#"><i class="icono fa-brands fa-linkedin p-2"></i></a>
      <a href="#"><i class="icono fa-brands fa-youtube p-2"></i></a>

    </div>

    <div class="ms-auto p-2 align-self-top d-flex">

      <button type="button" class="botonprim" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
        SUSCRIBETE
      </button>
    </div>

    <div class="ms-auto p-2 align-self-top d-flex">
      <a href="creditos.php" class="botonprim text-decoration-none">CREDITOS</a>

    </div>
  </div>


</footer>



<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Suscripcion</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="guardar.php" method="POST">
          <input type="email" name="s" id="" class="form-control" placeholder="Coloque aqui su correo" required>
          <input type="submit" value="Enviar" class="btn btn-primary mt-3">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>

      </div>
    </div>
  </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

</body>



</html>