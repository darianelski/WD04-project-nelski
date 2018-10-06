<form class="login-form" method="POST" action="<?=HOST?>/login">
	<h1 class="text-center login-form__header">Вход на сайт</h1> 

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	
	<input class="input-form-registration" name="email" type="email" placeholder="Email" />
	<input class="input-form-registration" name="password" type="password" placeholder="Пароль" />
	<div class="login-form-links">
		<a href="<?=HOST?>/lost-password">Забыл пароль</a>
	</div>
	<div class="text-center pt-30">
		<input type="submit" class="button button--enter pl-50 pr-50" name="login" value="Войти"/>
	</div>
</form>