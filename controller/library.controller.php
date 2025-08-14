<?php
if (isset($_COOKIE['userId'])){
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 1;
    $new=$checkout->view_Libary($page);
    include 'view/libary.views.php';
}
else{
    echo '<meta http-equiv="refresh" content="0; url=./index.php?action=home"/>';
}
// Convert data from string to date type for searching with sql
