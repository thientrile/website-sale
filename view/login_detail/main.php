<input type="checkbox" id="chk" aria-hidden="true" <?php echo $checked ? "checked" : ""; ?>>

<div class="signup">

	<form action="index.php?action=user" method="POST">
		<label for="chk" aria-hidden="true">Login</label>
		<input type="email" name="log-email" placeholder="Email" required="" value="<?php echo $log_mail; ?>">
		<span id="error-login"></span>
		
		<input type="password" name="log-pswd" placeholder="Password" required="" value="<?php echo $log_pswd; ?>">
		<a href="index.php?action=user&function=forget">Forgot password</a>

		<button type="submit" name="login">Login</button>
	</form>
</div>

<div class="login">
	<form action="index.php?action=user" method="POST">
		<label for="chk" aria-hidden="true">Sign up</label>
		<input type="text" name="username" placeholder="User name" required="" value="<?php echo $username; ?>">
		<?php

		echo $error_signin[0] != "" ? "<span>$error_signin[0]</span>" : "";
		?>
		<input type="email" name="email" placeholder="Email" required="" value="<?php echo $email; ?>">
		<?php

		echo $error_signin[1] != "" ? "<span>$error_signin[1]</span>" : "";
		?>

		<input type="password" name="pswd" placeholder="Password" required="" value="<?php echo $pswd; ?>">
		<?php

		echo $error_signin[2] != "" ? "<span>$error_signin[2]</span>" : "";
		?>

		<button type="submit" name="sign-up">Sign up</button>

	</form>