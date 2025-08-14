<?php

class user
{

    var $code = "";


    function __construct()
    {
    }

    //phương thức đăng nhập
    function userLogin($email, $password)
    {

        $db = new connect();
        $email = strtolower($email);
        $query = "select * from `user` where `email`LIKE'$email' and `pass`LIKE'" . md5($password) . "' and `deleted`=0";
        // echo $query;
        $result = $db->getlist($query);
        return $result->fetch();
    }

    // phương thức đăng ký
    function checkEmailExit($email)
    {
        // check exist
        $db = new connect();
        $email = strtolower($email);
        $check = $db->getlist("select * from user where email='$email'and deleted=0");
        $set = $check->fetch();
        return $set;
    }
    // đăng ký
    function userSign($username, $email, $pass)
    {

        $db = new connect();
        $pass = md5($pass);
        // check exist
        $email = strtolower($email);
        if ($this->checkEmailExit($email) == false) {

            $query = "insert into user(id, avatar, fullname, balance, email, phone_number, address, pass, role_id, deleted) values (NULL,default,'$username',100000,'$email',NULL,NULL,'$pass',default,default)";
            $db->send($query);
            $select = "SELECT MAX(id) FROM `user` ";
            $db->getonce($select);
            mkdir("assets/user/" . md5($db->getonce($select)[0]), 0700);
            mkdir("assets/user/" . md5($db->getonce($select)[0]) . "/avatar", 0700);
            copy("assets/avatar/people.png", "assets/user/" . md5($db->getonce($select)[0]) . "/avatar/people.png");
            return true;
        }
        return false;
    }
    //lấy id của người dùng bằng email
    function getId($email)
    {
        $db = new connect();
        $email = strtolower($email);
        $select = "select * from user where email='$email'and deleted=0";
        $result = $db->getonce($select);
        return $result;
    }
    // lấy thông người dùng bằng id
    function getInfor($id)
    {
        $db = new connect();
        $select = "select * from user where id='$id'and deleted=0";
        $result = $db->getonce($select);
        return $result;
    }
    //cập nhật ảnh đại diện của người dùng
    function upAvatar($id, $file)
    {
        $target_dir = "assets/user/" . md5($id) . "/avatar/";
        $target_file = $target_dir . basename($file["name"]);

        move_uploaded_file($file["tmp_name"], $target_file);
        $update = "UPDATE `user` SET avatar='" . $file["name"] . "' WHERE id=" . $id;
        $db = new connect();
        $db->send($update);
    }
    // cập nhật mật khẩu thông qua email
    function updatePassword($email, $pass)
    {

        $pass = md5($pass);
        $update = "UPDATE user SET pass='" . $pass . "' WHERE id=" . $this->getId($email)[0];
        $db = new connect();
        $db->send($update);
    }
    // người dùng cập nhật thông tin
    function updateUser($userId, $username = "", $phoneNumber = "", $address = "")
    {
        $cc = new connect();
        // Construct the SQL query to update the user's information.
        $sql = "UPDATE user SET";
        if (!empty($username)) {
            $sql .= " fullname='$username',";
        }
        if (!empty($phoneNumber)) {
            
            $sql .= " phone_number='$phoneNumber',";
        }
        if (!empty($address)) {
            $sql .= " address='$address',";
        }
        // Remove the trailing comma from the query string.
        $sql = rtrim($sql, ',');
        // Add the WHERE clause to specify the user to update.
        $sql .= " WHERE id=$userId";

        return
            $cc->send($sql);
    }
    //kiểm tra định dạng trường thông tin
    // kiểm tra username có độ dài từ 5 đến 16 ký tự
    function checkUsername($username)
    {

        return preg_match('/(\w|\W){5,16}$/', $username);
    }
    // kiểm tra định dạng email
    function checkEmail($email)
    {
        return preg_match('/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/', $email);
    }
    // kiểm tra định dạng mật khẩu
    function checkPassword($password)
    {


        return preg_match('/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,32}$/', $password);
    }
    // kiểm tra số điện thoại tại khu vực việt nam
    function checkPhonenumber($phonenumber)
    {

        return preg_match('/^(0|84)(2(0[3-9]|1[0-6|8|9]|2[0-2|5-9]|3[2-9]|4[0-9]|5[1|2|4-9]|6[0-3|9]|7[0-7]|8[0-9]|9[0-4|6|7|9])|3[2-9]|5[5|6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])([0-9]{7})$/', $phonenumber);
    }
}
