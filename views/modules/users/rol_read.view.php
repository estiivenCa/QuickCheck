
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
                <h4 class="text-primary text-uppercase display-4" style="letter-spacing: 5px;">Consultar Roles</h4>
            </div>
            <form>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">CÓDIGO</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">Actualizar</th>
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
					<?php foreach ($roles as $rol) : ?>
                        <tr>
                            <th scope="row"><?php echo $rol->getRolCode(); ?></th>
                            <td><?php echo $rol->getRolName(); ?></td>

							<td>
								<a href="?c=Users&a=rolUpdate&idRol=<?php echo $rol->getRolCode(); ?>" class="btn btn-success">
									<i class="fas fa-sync-alt"></i>
								</a>
							</td>
							<td>
								<a href="?c=Users&a=rolDelete&idRol=<?php echo $rol->getRolCode(); ?>" class="btn btn-warning">
									<i class="far fa-trash-alt"></i>
								</a>
							</td>
                        </tr>
					<?php endforeach; ?>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary">Guardar Cambios</button>
            </form>
        </div>
    </div>
	<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled">
							<a class="page-link" href="#" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>