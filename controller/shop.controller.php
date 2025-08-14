<?php
if (isset($_GET['keySearch']) && $_GET['keySearch'] != "") {
    $note = "Search: '" . $_GET['keySearch']."'";
} else {

    switch (isset($_GET['cate']) ? $_GET['cate'] : 0) {

        case 1:
            $note = "Audio";
            break;
        case 2:
            $note = "Graphics";
            break;
        case 3:
            $note = "Themes";
            break;
        case 4: {
                $note = "Videos";
                break;
            }
        default: {
                $note = "Create Amazing Digital Works";
                break;
            }
    }
}



if (isset($_GET['act']) && $_GET['act'] == "detail") {
    $view = $_GET['act'];
    $new = $product-> viewProductDetails($_GET['id']);
    $gallery = $product->viewProductGallery($_GET['id']);
    $dot=$product->countProductGallery($_GET['id'])[0];
    //thêm vào giỏ hàng
    if (isset($_POST['addcart']) && isset($_COOKIE['userId'])) {
        $cart = new cart();
        $cart->addCart($_COOKIE['userId'], $_GET['id']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=shop&act=detail&id=' . $_GET['id'] . '"/>';
    }
} else {
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 1;


    $new =   $product->viewProduct($page, isset($_GET['cate']) ? $_GET['cate'] : 0, isset($_GET['keySearch']) ? $_GET['keySearch'] : "");
    $view = "shop";
}

include 'view/' . $view . '.views.php';
