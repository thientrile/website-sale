<?php



if (isset($_GET['act']) && $_GET['act'] == 'logout' && isset($_COOKIE['userId'])) {
    /*
This code checks if the 'act' variable is set in the URL and if it is equal to 'logout' and if the 'userId' cookie is set. If all of these conditions are true, then it sets the 'userId' cookie to null, unsets the 'userId' cookie, and redirects the page to index.php?action=home. This code is likely used for logging out a user from a website.*/
    setcookie('userId', null, time() - 86400 * 7);
    unset($_COOKIE['userId']);
    echo '<meta http-equiv="refresh" content="0; url=index.php?action=home"/>';
}
if (isset($_COOKIE['userId'])) {
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 1;




    if ($userInfor->getInfor($_COOKIE['userId'])[8] != 2) {


        include "controller/admin.controller.php";
    } else {
        include "controller/client.controller.php";
    }
} else {
    include "controller/RegisterAndLogin.controller.php";
}
