<div class="confirm">
    <form action="index.php?action=user&function=<?php echo $checkedSignin ? "email" : "password"; ?>" method="post">
        <label for="code">Email confirmation code</label>
        <input type="number" name="codeConfirm">
        <?php
        echo $error_Confirm;
        ?>
        <button type="submit" name="btnConfirm">Confirm</button>
    </form>
</div>