	    <!-- Page Header Start -->
		<div class="container-fluid page-header position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 140px">

            <div class="d-inline-flex mt-5">
                <p class="m-0 text-white"><a class="text-white" href="?c=Users&a=userCreate">Crear Usuario</a></p>
                <p class="m-0 text-white px-3">/</p>
                <p class="m-0 text-white"><a class="text-white" href="?c=Users&a=userRead">Consultar Usuario</a></p></p>
                <p class="m-0 text-white px-3">/</p>
                <p class="m-0 text-white"><a class="text-white" href="user_search.html">Buscar Usuario</a></p></p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

			    <!-- Menu Start -->
                <div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase display-4" style="letter-spacing: 5px;">Crear Usuario</h4>
        </div>
        <form action="" method="POST" class="form-neon" autocomplete="off">
            <fieldset class="border p-4 mb-4 wrapper">
                <legend class="w-auto">Información Personal</legend>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="rol_code" class="form-label">Rol</label>
                        <select class="form-control" name="rol_code" id="rol_code">
                            <option value="" selected disabled>Seleccione una opción</option>
                            <?php foreach ($roles as $rol) : ?>
									<option value="<?php echo $rol->getRolCode() ?>"><?php echo $rol->getRolName() ?></option>
								<?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="user_state" class="form-label">Estado</label>
                        <select class="form-control" name="user_state" id="user_state">
                            <option value="" selected disabled>Seleccione una opción</option>
                            <option value="1">Activo</option>
                            <option value="0">Inactivo</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="user_name" class="form-label">Nombres</label>
                        <input type="text" class="form-control" id="user_name" name="user_name" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" maxlength="40">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="user_lastname" class="form-label">Apellidos</label>
                        <input type="text" class="form-control" id="user_lastname" name="user_lastname" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" maxlength="40">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="user_id" class="form-label">Identificación</label>
                        <input type="text" class="form-control" id="user_id" name="user_id" pattern="[0-9()+]{1,20}" maxlength="20">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="user_email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="user_email" name="user_email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" maxlength="150">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="user_pass" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="user_pass" name="user_pass" pattern=".{6,}" maxlength="20">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="user_pass_conf" class="form-label">Repetir contraseña</label>
                        <input type="password" class="form-control" id="user_pass_conf" name="user_pass_conf" pattern=".{6,}" maxlength="20">
                    </div>
                </div>

            </fieldset>

        
                <div class="text-center">
                    <button type="reset" class="btn btn-secondary"><i class="fas fa-paint-roller"></i> LIMPIAR</button>
                    <button type="submit" class="btn btn-info"><i class="far fa-save"></i> GUARDAR</button>
                </div>
            </form>
        </div>
    </div>

<script src="generator/script.js"></script>