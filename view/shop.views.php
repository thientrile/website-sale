<div class="img-top" style="background: url('./assets/img/pro/seamless-gold-rhombus-grid-pattern-black-background_53876-97589.jpg')">

    <div class="container">
        <h1 class="ps-5 heading-title animate__animated animate__fadeInUp text-white text-start">Shop </h1>
        <h3 class="heading-sub animate__animated animate__fadeInUp text-start ps-5"><?php echo $note; ?></h3>
    </div>
</div>
<div class="creative">
    <div class="container translate-top">
        <div class="row">

            <?php

            while ($set = $new->fetch()) {

            ?>
                <div class="col-lg-4 col-md-6">
                    <div class="card">
                        <div class="creative-img-cover">
                            <img class="card-img-top" src="assets/products/<?php echo md5($set['id']) . "/img/" . $set['img'] ?>" alt="Card image" style="width: 100%" />
                            <div class="creative-icon">
                                <span class="plus" style="--bg: #fff; --color: #34b7ae">
                                    <a href="index.php?action=shop&act=detail&id=<?php echo $set['id']; ?>">

                                        <i class="fa-solid fa-plus"></i>

                                    </a>
                                </span>
                                <span class="cart" style="--bg: #34b7ae; --color: #fff"><a href="index.php?action=cart"><i class="fa-solid fa-cart-shopping"></i></a>
                                </span>
                            </div>
                        </div>

                        <div class="card-body">
                            <a href="index.php?action=shop&cate=<?php echo $set['category_id']; ?>" class="heading-note"><?php

                                                                                                                            $cate = $cc->getonce("select * from category where id=" . $set['category_id']);
                                                                                                                            echo $cate['name'];


                                                                                                                            ?></a>
                            <br>
                            <a href="index.php?action=shop&act=detail&id=<?php echo $set['id']; ?>" class="card-title h5 text-dark" style="text-decoration: none;"><?php echo $set['title'] ?></a>
                            <p class="card-text card-price">
                                <span><?php
                                        if ($set['discount'] > 0) {

                                            echo '         <sub style="text-decoration:line-through">' . currency_format($set['price']) . '</sub>';
                                            echo currency_format($set['price'] - $set['price'] * $set['discount']);
                                        } else if ($set['price'] > 0) {
                                            echo currency_format($set['price']);
                                        } else {
                                            echo "Free";
                                        }
                                        ?>



                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
        <div>
            <?php
            if ($product->countpage > 1) {
                $paging->renderPaging($page, $product->countpage, 3);
            ?>

            <?php
            } ?>
        </div>


    </div>

</div>