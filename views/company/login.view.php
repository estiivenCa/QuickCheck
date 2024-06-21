<!-- Espacio superior -->
<div class="mb-5"></div>

<!-- Start Contact -->
<div class="col-md-5 mx-auto" style="background-color: lightblue; border: 1px solid #ccc; border-radius: 8px;">
    <div class="row py-3">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1 text-primary"><b>Iniciar Sesión</b></h1>
            </div>
        </div>
        <form class="col-md-8 m-auto" action="" method="post" role="form">
            <div class="mb-3">
                <label for="user_email" class="form-label">Usuario</label>
                <input type="text" class="form-control mt-1" id="user_email" name="user_email" placeholder="Correo electrónico">
            </div>
            <div class="mb-3">
                <label for="user_pass" class="form-label">Contraseña</label>
                <input type="password" class="form-control mt-1" id="user_pass" name="user_pass" placeholder="Entre 5 y 8 caracteres">
            </div>
            <div class="row">
                <div class="col text-center mt-2">
                    <button type="submit" class="btn btn-primary btn-lg px-5">Enviar</button>
                </div>
            </div>
            <div class="mb-3 mt-3">
                <h3 class="h5"><?php echo $message ?></h3>
            </div>
        </form>
    </div>
</div>
<!-- End Contact -->

<!-- Espacio inferior -->
<div class="mb-5"></div>
