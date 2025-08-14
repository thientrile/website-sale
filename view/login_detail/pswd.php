<div class="confirm">
    <form action="index.php?action=user&act=forget" method="post">
        <label for="pswd">Enter your new password</label>
        <input type="text" name="pswdConfirm">
        <?php  echo $error_Confirm;?>
        <button type="submit" name="btnPswd">Confirm</button>
    </form>
</div>