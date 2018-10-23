<form class="login-form" method="POST" action="<?=HOST?>/registration">
	<h1 class="text-center login-form__header">Регистрация</h1>

	<?php 

		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";

	?>

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>

	<input class="input-form-registration" name="email" type="email" placeholder="Email" />
	<input class="input-form-registration" name="password" type="password" placeholder="Пароль" />
	<div class="text-center pt-30">
		<input type="submit" class="button button--enter" name="register" value="Регистрация"/>
	</div>
</form>