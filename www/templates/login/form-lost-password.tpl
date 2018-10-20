<form class="login-form" id="lost-form" method="POST" action="<?=HOST?>/lost-password">
	<h1 class="text-center login-form__header">Забыл пароль</h1>

	<?php 
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";

	 ?> 

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>

	<input class="input-form-registration" name="email" type="email" placeholder="Email" />
	<div class="login-form-links text-center">
		<a href="<?=HOST?>/login">Перейти на страницу входа</a>
	</div>
	<div class="text-center pt-30">
		<input type="submit" class="button button--enter pl-50 pr-50" name="restore" value="Восстановить"/>
	</div>
</form>