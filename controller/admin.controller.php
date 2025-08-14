<?php
$adminDetail = isset($_GET['act']) ? $_GET['act'] : "dashboard";
$keySearch = isset($_GET['keySearch']) ? $_GET['keySearch'] : "";
$page = isset($_GET['page']) ? (int) $_GET['page'] : 1;

// admin user
if ($adminDetail == 'user') {

    $userLists = $admin->viewListUser($page, $keySearch, isset($_GET['role']) ? $_GET['role'] : "");
    //  deleted
    if (isset($_GET['deletedid']) && isset($_POST['delete'])) {
        $admin->deleteUser($_GET['deletedid']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['avatarid']) . '"/>';
    }
    // updated avatar
    if (isset($_GET['avatarid']) && $_FILES['avatar']['name'] != null) {
        $admin->updateAvatar($_GET['avatarid'], $_FILES['avatar']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['avatarid']) . '"/>';
    }
    //   updated username
    if (isset($_GET['userid']) && $_POST['username'] != null) {
        $admin->updateUsername($_GET['userid'], $_POST['username']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['userid']) . '"/>';
    }
    //  update phone number
    if (isset($_GET['phonenumberid']) && isset($_POST['phonenumber'])) {
        $admin->updatePhonenumber($_GET['phonenumberid'], $_POST['phonenumber']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['phonenumberid']) . '"/>';
    }
    // update address
    if (isset($_GET['addressid']) && isset($_POST['address'])) {
        $admin->updateAddress($_GET['addressid'], $_POST['address']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['addressid']) . '"/>';
    }
    // update role
    if (isset($_GET['roleid']) && isset($_POST['rode'])) {
        $admin->updateRole($_GET['roleid'], $_POST['rode']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user&id=' . crc32($_GET['roleid']) . '"/>';
    }
    // import new user||member
    if (isset($_GET['new'])) {
        $admin->userRegister($_POST['username'], $_POST['email'], md5($_POST['password']), $_POST['phonenumber'], $_POST['address'], $_POST['type']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=user"/>';
    }
}
// admin product
if ($adminDetail == 'products') {
    $data = array(
        array('ID', 'title', 'img', 'src','cate_id','description', 'short description','discount', 'price', 'created', 'updated','delete')
       
    );
    $file = fopen('assets/download/product.csv', 'w');
    $products =   $product->viewProduct($page, isset($_GET['cate']) ? $_GET['cate'] : 0, $keySearch);;
    $optionCate = $product->viewCategory();
    if (isset($_GET['deletedId'])) {
        $admin->deleteProduct($_GET['deletedId']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=products"/>';
    }
    if (isset($_GET['import'])) {
        $admin->insertProduct($_POST['title'], $_FILES['img'], $_FILES['src'], $_POST['type'], $_POST['desc'], $_POST['sdesc'], $_POST['discount'], $_POST['price'], $_FILES['gallery']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=products"/>';
    }
    if (isset($_GET['updated'])) {
        $admin->updateProduct($_GET['id'], $_POST['title'], $_FILES['img'], $_FILES['src'], $_POST['type'], $_POST['desc'], $_POST['sdesc'], $_POST['discount'], $_POST['price'], $_FILES['gallery']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=products&id=' . $_GET['id'] . '"/>';
    }
    if (isset($_GET['delgallery'])) {
        $admin->delGallery($_GET['delgallery']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=products&id=' . $_GET['id'] . '"/>';
    }
}
if ($adminDetail == 'dashboard') {
    $year = isset($_GET['year'])?$_GET['year']:"";
    $month = "";
    if (isset($_GET['date'])) {

        $month_year_array = explode('-', $_GET['date']);
        $year = $month_year_array[0];
        $month = $month_year_array[1];
    }
    $statistics->AreaChart($year, $month);
}
if ($adminDetail == 'invoices'){
    $year = isset($_GET['year']) ? $_GET['year'] : "";
    $month = "";
    if (isset($_GET['date'])) {

        $month_year_array = explode('-', $_GET['date']);
        $year = $month_year_array[0];
        $month = $month_year_array[1];
    }
    $viewOrder=$admin->view_Order($year, $month);
}
if ($adminDetail == 'profile'){
    if (isset($_POST['updateInfor'])) {

        $userInfor->updateUser($_COOKIE['userId'], isset($_POST['username']) ? $_POST['username'] : "", isset($_POST['phonenumber']) && $userInfor->checkPhonenumber($_POST['phonenumber']) ? $_POST['phonenumber'] : "", isset($_POST['address']) ? $_POST['address'] : "");
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=profile"/>';
    }
    if (isset($_POST['upavatar']) && $_FILES['avatar']['name'] != null) {
      
        $userInfor->upAvatar($_COOKIE['userId'], $_FILES['avatar']);
        echo '<meta http-equiv="refresh" content="0; url=index.php?action=user&act=profile"/>';
    }
}

include "view/admin.views.php";
