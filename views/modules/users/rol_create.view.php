
    <div class="container-fluid page-header position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 140px">

            <div class="d-inline-flex mt-5">
                <p class="m-0 text-white"><a class="text-white" href="?c=Users&a=rolCreate">Crear Rol</a></p>
                <p class="m-0 text-white px-3">/</p>
                <p class="m-0 text-white"><a class="text-white" href="?c=Users&a=rolRead">Consultar Rol</a></p></p>
                <p class="m-0 text-white px-3">/</p>
                <p class="m-0 text-white"><a class="text-white" href="">Buscar Rol</a></p></p>
            </div>
        </div>
    </div>

	<div class="container-fluid pt-5">
        <div class="container">
            <div class="section-title">
                <h4 class="text-primary text-uppercase display-4" style="letter-spacing: 5px;">Crear Roles</h4>
            </div>
            <form action="" method="POST" class="form-neon" autocomplete="off">
                <fieldset class="border p-5 mb-4">
                    <legend class="w-auto">Información Roles</legend>
                    <div class="row">
                        <div class="col-md-7 mb-3">
                            <label for="rol_name" class="form-label">Nombre Rol</label>
                            <input type="text" class="form-control" id="rol_name" name="rol_name" pattern="[a-zA-Z0-9-]{1,27}" maxlength="27">
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
