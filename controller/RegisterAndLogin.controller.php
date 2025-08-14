<?php
$username = isset($_POST["username"]) ? $_POST["username"] : "";
$email = isset($_POST["email"]) ? $_POST["email"] : "";
$pswd = isset($_POST["pswd"]) ? $_POST["pswd"] : "";
$log_mail = isset($_POST['log-email']) ? $_POST['log-email'] : "";
$log_pswd = isset($_POST['log-pswd']) ? $_POST['log-pswd'] : "";
$checked = false;
$error_signin = array("", "", "");
$error_login = "";
$error_Confirm = "";
$userDetail = "history";
$confirmError = "";
$checkedSignin = false;
$path = isset($_GET['path']) ? $_GET['path'] : "main";
// chưa đang nhập hoặc đăng ký
// quá trình đăng ký
if (isset($_POST["sign-up"])) {
    $checked = true; //dùng để kiểm tra trước đó có đăng ký chưa
    $username = isset($_POST["username"]) ? $_POST["username"] : ""; //lấy thông username    
    $email = isset($_POST["email"]) ? $_POST["email"] : ""; //lấy email
    $pswd = isset($_POST["pswd"]) ? $_POST["pswd"] : ""; //lấy password

    if ($userInfor->checkUsername($username) && $userInfor->checkEmail($email) && $userInfor->checkPassword($pswd)) {
        $result = $userInfor->checkEmailExit($email);
        if ($result == false) {
            $error_signin = array("", "", "");

            $_SESSION['signin'] = array($username, $email, $pswd, rand(1000, 9999));
            $checkedSignin = true;

            $mail->confirmMail($email, $_SESSION['signin'][3], $username);
            $path = "confirm";
        } else {
            $error_signin[1] = "Email already in use";
        }
    } else {
        $error_signin[0] = $userInfor->checkUsername($username) ? "" : "Username must be between 5 and 16 characters long";
        $error_signin[1] = $userInfor->checkEmail($email) ? "" : "Email invalidate";
        $error_signin[2] = $userInfor->checkPassword($pswd) ? "" : "password has at least one uppercase character, one lowercase character, one special character and a number";
    }
}
if (isset($_POST['login'])) {
  
    $checked = false;
    $log_mail = isset($_POST['log-email']) ? $_POST['log-email'] : "";
    $log_pswd = isset($_POST['log-pswd']) ? $_POST['log-pswd'] : "";
    $result = $userInfor->userLogin($log_mail, md5($log_pswd));
   
    if (isset($result['id'])) {
      
        $error_login = "";
        setcookie('userId', $result['id'], time() + (86400 * 7));

        echo '<meta http-equiv="refresh" content="0; url=./index.php?action=user"/>';
    }else{
        $error_login = "Email or password is incorrect";
       echo "
       <script>
       alert('Email or password is incorrect');
       </script>
       
       
       ";
    } 
}
if (isset($_POST['btnConfirm'])) {

    if (isset($_SESSION['signin'])) {


        if ($_SESSION['signin'][3] == $_POST['codeConfirm']) {
            $userInfor->userSign($_SESSION['signin'][0], $_SESSION['signin'][1], md5($_SESSION['signin'][2]));
            $checkedSignin = false;
            $ur = $userInfor->getId($_SESSION['signin'][1]);
            setcookie('userId', $ur['id'], time() + (86400 * 7));
            echo '<meta http-equiv="refresh" content="0; url=./index.php?action=user"/>';


            unset($_SESSION['signin']);

            $error_Confirm = "";
        } else {
            $path = "confirm";
            $error_Confirm = "<span>Incorrect code</span>";
        }
    } else if (isset($_SESSION['forget'])) {
        $checkedSignin = false;
        if ($_SESSION['forget'][1] == $_POST['codeConfirm']) {

            $path = "pswd";
            $error_Confirm = "";
        } else {
            $path = "confirm";
            $error_Confirm = "<span>Incorrect code  </span>";
        }
    }
}
if (isset($_GET['function']) && $_GET['function'] == "forget") {
    $checkedSignin=false;
    $path = "email";
    if (isset($_POST['btnEmail'])) {
        if ($userInfor->checkEmail($_POST['email']) == 1) {
            if ($userInfor->checkEmailExit($_POST['email'])) {
                $_SESSION['forget'] = array($_POST['email'], rand(1000, 9999));
                $mail->confirmMail($_SESSION['forget'][0],  $_SESSION['forget'][1]);
                $path = "confirm";
                $error_Confirm = "";
            } else {
                $error_Confirm = "<span> Email does not exist</span>";
            }
        } else {
            $error_Confirm = "<span> Email invalidate</span>";
        }
    }
}
if (isset($_POST['btnPswd'])) {
    if ($userInfor->checkPassword($_POST['pswdConfirm'])) {
        $userInfor->updatePassword($_SESSION['forget'][0], md5($_POST['pswdConfirm']));
        $path = "main";
        $error_Confirm = "";
        unset($_SESSION['forget']);
        echo '<meta http-equiv="refresh" content="0; url=./index.php?action=user"/>';
    } else {
        $path = "pswd";
        $error_Confirm = "<span>password has at least one uppercase character, one lowercase character, one special character and a number</span>";
    }
}

include "view/login.views.php";
