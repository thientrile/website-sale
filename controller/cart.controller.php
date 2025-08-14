<?php
$count=0;

$sl = 0;
if (isset($_COOKIE['userId'])) {
    $kq =  $cart->countCart($_COOKIE['userId']);
    $sl = $kq['COUNT(*)'];
    $c=$cart->viewCart($_COOKIE['userId']);
}
if(isset($_POST['cartRemove'])){
    $cart->deleteOne($_POST['cartId']);
    echo '<meta http-equiv="refresh" content="0; url=index.php?action=cart"/>';
}
if(isset($_GET['act'])){
    $cart->deleteAll($_COOKIE['userId']);
    echo '<meta http-equiv="refresh" content="0; url=index.php?action=cart"/>';
}


include "view/cart.views.php";
