<?php
$viewOrder = $checkout->view_Order($page);
if (isset($_POST['upavatar']) && $_FILES['avatar']['name'] != null) {
    $userInfor->upAvatar($_COOKIE['userId'], $_FILES['avatar']);
}
if (isset($_POST['updateInfor'])) {
    $userInfor->updateUser($_COOKIE['userId'], isset($_POST['username']) ? $_POST['username'] : "", isset($_POST['phonenumber']) && $userInfor->checkPhonenumber($_POST['phonenumber']) ? $_POST['phonenumber'] : "", isset($_POST['address']) ? $_POST['address'] : "");
}

include "view/user.views.php";
