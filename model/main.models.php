<?php
/* It's starting a session. */
session_set_cookie_params(0);

// Start the session
session_start();

// Unset all session variables
// $_SESSION = array();

// Destroy the session
// session_destroy();
set_include_path(get_include_path() . PATH_SEPARATOR . './');
spl_autoload_extensions('.models.php');
spl_autoload_register();

/* It's creating a new instance of the `connect` class. */
$cc = new connect();
$userInfor = new user();
$cart = new cart();
$mail = new sendmail();
$product = new product();
$paging = new pagination();
$statistics=new statistics();
if (isset($_COOKIE['userId'])) {

    $checkout = new  invoice($_COOKIE['userId']);
    $admin = new admin($_COOKIE['userId']);
}

// tạo điều hướng controllers
$ctrl = 'home';
if (isset($_GET['action'])) {
    $mydir = 'controller';

    $myfiles = array_diff(scandir($mydir), array('.', '..'));
    $ctrl = array_search($_GET['action'] . ".controller.php", $myfiles, false) ? $_GET['action'] : 'home';
}


/* It's checking if the function `currency_format` exists. If it doesn't, it creates it. */
if (!function_exists('currency_format')) {

    /**
     * It formats the number to a currency format.
     * 
     * @param number The number you want to format.
     * @param suffix The currency symbol to be used.
     */
    function currency_format($number, $suffix = '$')
    {
        if (!empty($number)) {
            return "{$suffix}" . number_format($number, 2, '.', ',');
        }
    }
}

$cart = 0;
function random()
{
    $interval = 30; // Interval in seconds
    srand(floor(time() / $interval));
    echo rand(1000, 9999);
}
function getFileType($extension)
{
    

    switch ($extension) {
        case 'mp3':
        case 'wav':
        case 'wma':
        case 'm4a':
        case 'aac':
            return 'audio';
        case 'jpg':
        case 'jpeg':
        case 'png':
        case 'gif':
        case 'bmp':
            return 'image';
        case 'mp4':
        case 'avi':
        case 'wmv':
        case 'mov':
        case 'flv':
            return 'video';
        default:
            return 'unknown';
    }
}
