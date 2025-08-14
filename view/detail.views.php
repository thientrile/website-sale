<div class="img-top" style="background: url('./assets/img/pro/seamless-gold-rhombus-grid-pattern-black-background_53876-97589.jpg')">
	<div class="container">
		<h1 class="ps-5 heading-title animate__animated animate__fadeInUp text-white text-center"><?php echo $new['title'] ?></h1>
		<p class="heading-sub animate__animated animate__fadeInUp text-start ps-5 text-center" style="font-size: 1em;"><?php echo $new['sDescription'] ?></p>
	</div>
</div>
<div class="creative ">
	<div class="container translate-top shadow-lg" style="background: white;">
		<div class="row p-3">
			<div class="col-md-8">
				<div id="media-carousel" class="carousel slide" data-bs-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators" style="bottom:auto;top:0">
					<?php for($i=0;$i<$dot;$i++) {?>
						<li data-bs-target="#media-carousel" data-bs-slide-to="<?php echo $i ?>" class="<?php echo $i==0?"active":"" ?>"></li>
						
						<?php }?>
					</ol>
					<!-- Slides -->

					<div class="carousel-inner">

						<?php
						$count = 0;
						while ($set = $gallery->fetch()) {
							$fileType = getFileType($set[3]);

							if ($fileType == 'audio') { ?>
								<div class="carousel-item  <?php echo $count == 0 ? "active" : "" ?>">
									<img class="d-block w-100 " src=" assets/products/<?php echo md5($set[1]) . "/img/" . $new[2] ?>" alt="<?php echo $new[2] ?>">
									<audio class="d-block w-100" src=" assets/products/<?php echo md5($set[1]) . "/gallery/" . $set['thumnali'] ?>" controls></audio>

								</div>
							<?php	} elseif ($fileType == 'image') { ?>
								<div class="carousel-item  <?php echo $count == 0 ? "active" : "" ?>">
									<img class="d-block w-100 " style="object-fit: cover;" src=" assets/products/<?php echo md5($set[1]) . "/gallery/" . $set['thumnali'] ?>" alt="<?php echo $set['thumnali'] ?>">

								</div>
							<?php	} elseif ($fileType == 'video') { ?>
								<div class="carousel-item <?php echo $count == 0 ? "active" : "" ?> ">
									<video class="d-block w-100" src=" assets/products/<?php echo md5($set[1]) . "/gallery/" . $set['thumnali'] ?>" controls></video>

								</div>
							<?php	}

							?>



						<?php $count++;
						} ?>
					</div>

					<!-- Controls -->
					<!-- <a class="carousel-control-prev" href="#media-carousel" role="button" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</a>
					<a class="carousel-control-next" href="#media-carousel" role="button" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</a> -->
				</div>

			</div>
			<div class="col-md-4">
				<div class="card mt-4 border border-3" style="width:100%;">
					<div class="card-header text-center">Item Details</div>
					<div class="card-body d-flex justify-content-center align-items-center flex-column">
						<h3 class="">
							<?php
							if ($new['discount'] > 0) {
								echo '<sub style="text-decoration:line-through">   ' . currency_format($new['price']) . '</sub>';

								echo currency_format($new['price'] - $new['discount'] * $new['price']);
							} else {
								echo currency_format($new['price']);
							}
							?>
						</h3>
						<form action="index.php?action=shop&act=detail&id=<?php echo $new['id']; ?>" method="post" class="text-center">
							<input type="hidden" name="id" value="<?php echo $new['id']; ?>">
							<?php
							if (isset($_COOKIE['userId'])) {
								if ($checkout->check_Libary($new['id']) == false) {
									echo '<button data-bs-toggle="modal" data-bs-target="#payment" type="button" name="buy" class="btn btn-success p-3">Buy</button>';
									$temp = new cart();
									$kq = $temp->checkCart($_COOKIE['userId'], $new['id']);
									if ($kq == false) {
										echo '<button type="submit" name="addcart" class="btn btn-outline-warning p-3 ms-2">Add To Cart</button>';
									} else {
										echo '<a href="index.php?action=cart"class="btn btn-outline-warning p-3 ms-2">View In The Cart</a>';
									}
								} else {
									echo '<a href="index.php?action=library"class="btn btn-outline-warning p-3 ms-2">View In The Library</a>';
								}
							} else {
								echo "<h5 class='text-center'>Sign in to purchase</h5>";
								echo "<a href='index.php?action=user' class='btn btn-success'>Login</a>";
							}


							?>
						</form>
					</div>
				</div>
				<div class="card mt-4 border border-3" style="width:100%;">
					<div class="card-header text-center">DETAILS</div>
					<div class="card-body d-flex justify-content-start align-items-center flex-column">
						<ul class="list-group" style="width:100%">
							<li class="list-group-item">Category:<a href="index.php?action=shop&cate=<?php echo $set['category_id']; ?>" style="font-size:1em;text-decoration: none;" class="text-success">
									<?php $cate = $cc->getonce("select * from category where id=" . $new['category_id']);
									echo $cate['name']; ?>
								</a></li>
							<li class="list-group-item">Released Date:<?php echo $new['created_at'] ?></li>
							<li class="list-group-item">Last Updated:<?php echo $new['updated_at'] ?></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-8 mt-5">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" data-bs-toggle="tab" href="#description">Description</a>
					</li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane container active" id="description">

						<?php
						echo $new['description'];

						?>
					</div>

				</div>
			</div>





		</div>
	</div>

</div>
<div class="modal fade" id="payment">
	<div class="modal-dialog modal-fullscreen">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">PAY BILLS</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<?php
				$Balance = $userInfor->getInfor($_COOKIE['userId']);
				?>
				<h5 class=" <?php
							if ($Balance >= 0) {
								echo "text-primary";
								echo - ($cart->cartPrice($_COOKIE['userId']) - $cart->cartDiscount($_COOKIE['userId']));
							}




							?>">Balance(
					<?php

					echo  currency_format($Balance['balance']);
					if (isset($_COOKIE['userId'])) {
						$kq =  $cart->countCart($_COOKIE['userId']);
						$sl = $kq['COUNT(*)'];
						$c = $cart->viewCart($_COOKIE['userId']);
					}

					?>)</h5>

				<div class="container">

					<div class="row">
						<div class="col-md-9 py-3">
							<table class="table table-striped ">
								<thead>
									<tr>

										<th>Title</th>
										<th>Image</th>
										<th>Price</th>
										<th></th>

									</tr>
								</thead>
								<tbody>



									<tr>

										<td><?php echo $new['title']; ?></td>
										<td><img src="assets/img/body/creative/<?php echo $new['img'] ?>" style="width:100px" alt=""></td>
										<td>
											<?php
											if ($new['discount'] > 0) {
												echo '<sub style="text-decoration:line-through">' . currency_format($new['price']) . '</sub>';
												echo currency_format($new['price'] - $new['discount'] * $new['price']);
											} else {
												if ($new['price'] == 0) {
													echo '<span class="badge bg-success">Free</span>';
												} else {

													echo currency_format($new['price']);
												}
											}
											?>

										</td>




								</tbody>
							</table>

						</div>
						<div class="col-md-3">
							<div class="card" style="width:100%">
								<div class="card-body">
									<h4 class="card-title">Payment Invoice</h4>
									<div class="card-text" style="display:flex;justify-content:space-between;"><span>Price:</span>
										<span><?php echo currency_format($new['price']); ?></span>
									</div>
									<?php if ($new['discount'] * $new['price'] > 0) { ?>
										<div class="card-text" style="display:flex;justify-content:space-between;"><span>Sale Discount:</span>
											<span>-<?php echo currency_format($new['discount'] * $new['price']); ?></span>
										</div>
									<?php } ?>
									<div class="card-text" style="display:flex;justify-content:space-between;"><span>Subtotal:
										</span>
										<span><?php echo currency_format($new['price'] - $new['discount'] * $new['price']); ?></span>
									</div>
									<form action="index.php?action=checkout&act=one" method="post">
										<input type="hidden" name="product_id" value="<?php echo $new['id'] ?>">
										<input type="hidden" name="discount" value="<?php echo $new['discount'] ?>">
										<input type="hidden" name="price" value="<?php echo $new['price'] ?>">
										<button class="btn btn-primary w-100" type="submit">Payment</button>
									</form>

								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">

				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
</div>