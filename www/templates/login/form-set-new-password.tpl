<form class="login-form" id="lost-form" method="POST" action="<?=HOST?>/set-new-password">

	<?php if ( $newPasswordReady == false ): ?>
		<h1 class="text-center login-form__header">Введите новый пароль</h1>
	<?php endif ?>

	<?php 
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";

	 ?> 

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>

	<input class="input-form-registration" name="resetpassword" type="password" placeholder="Новый пароль" />
	<div class="login-form-links text-center">
		<a href="<?=HOST?>/login">Перейти на страницу входа</a>
	</div>
	<div class="text-center pt-30">
		<?php if ( $newPasswordReady == false ): ?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input type="submit" class="button button--enter pl-50 pr-50" name="set-new-password" value="Установить"/>
		<?php endif ?>


		
	</div>
</form>