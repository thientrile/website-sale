<!DOCTYPE html>
<?php


include 'model/main.models.php';

?>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><?php echo  ucfirst($ctrl); ?></title>
</head>

<body>

	<?php
	if ($cc->error == false) {
		if ($ctrl == 'user' && (!isset($_COOKIE['userId']) || $userInfor->getInfor($_COOKIE['userId'])[8] != 2)) {
			include 'controller/' . $ctrl . '.controller.php';
		} else {

	?>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
			<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" />
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" />
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
			<link rel="stylesheet" href="./assets/css/style.css" />
			<div id="main">
				<!-- header -->
				<?php
				include "view/include/header.php";
				?>
				<!-- header end -->
				<div id="body">
					<?php
					/* Including the controller file. */

					include 'controller/' . $ctrl . '.controller.php';


					?>
				</div>
				<?php
				/* Including the footer.php file. */
				include 'view/include/footer.php';
				?>
			</div>
			<div class="modal fade" id="Modal-search">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<!-- Modal body -->
						<div class="modal-body" style="border: none">
							<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							<div class="container p-5">
								<h1>Search</h1>
								<form action="" method="get">
									<div class="row">
										<div class="col-3" style="padding: 0;">
											<select name="action" class="w-100 form-select input-group-text">
												<option value="shop">Product</option>
												<option value="Docs">Docs</option>
												<option value="Blog">Blog</option>
											</select>
										</div>
										<div class="col-9" style="padding: 0;">
											<input class="form-control w-100" name="keySearch" type="text" placeholder="Start typing and press Enter to search" value="<?php echo isset($_GET['keySearch'])? $_GET['keySearch']:"" ?>"  />
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>


			<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
			<script src="./assets/js/script.js"></script>
	<?php }
			
	} else {
		include 'view/error/404.php';
	}
	?>
</body>

</html>