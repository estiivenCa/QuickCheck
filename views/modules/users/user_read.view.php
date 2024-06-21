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
                <h4 class="text-primary text-uppercase display-4" style="letter-spacing: 5px;">Consultar Usuario</h4>
            </div>
            <form>
                <table class="table">
                    <thead>
				<?php foreach ($users as $user) : ?>
                        <tr>
                            <th scope="col">ROL</th>
                            <th scope="col">CÓDIGO</th>
                            <th scope="col">NOMBRES</th>
                            <th scope="col">APELLIDOS</th>
                            <th scope="col">IDENTIFICACIÓN</th>
                            <th scope="col">EMAIL</th>
							<th scope="col">ESTADO</th>
                            <th scope="col">ACTUALIZAR</th>
                            <th scope="col">ELIMINAR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
						<td><?php echo $user->getRolName(); ?></td>
						<td><?php echo $user->getUserCode(); ?></td>
						<td><?php echo $user->getUserName(); ?></td>
						<td><?php echo $user->getUserLastName(); ?></td>
						<td><?php echo $user->getUserId(); ?></td>
						<td><?php echo $user->getUserEmail(); ?></td>
						<td><?php echo $state[$user->getUserState()]; ?></td>

						<td>
							<a href="?c=Users&a=userUpdate&idUser=<?php echo $user->getUserCode(); ?>" class="btn btn-success">
								<i class="fas fa-sync-alt"></i>
							</a>
						</td>
						<td>
							<a href="?c=Users&a=userDelete&idUser=<?php echo $user->getUserCode(); ?>" class="btn btn-warning">
								<i class="far fa-trash-alt"></i>
							</a>
						</td>
                        </tr>
						<?php endforeach; ?>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <!-- Menu End -->