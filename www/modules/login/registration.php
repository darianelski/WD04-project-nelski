<?php 

$title = "Регистрация";

// Если форма отправлена, то делаем регистрацию
if (isset($_POST['register'])) {

	if ( trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите email', 'desc' => '<p>Email обязателен.</p>'];
	}

	if ( trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите пароль'];
	}

	// Проверка, что пользователь уже существует
	if (R::count('users', 'email = ?', array($_POST['email'])) > 0) {
		$errors[] = [
									'title' => 'Пользователь с таким email уже существует.',
									'desc' => '<p>Используйте другой email.</p>'
								];
	}
	

	if (empty($errors)) {
		// Регистрация пользователя
		$user = R::dispense('users');
		$user->email = htmlentities($_POST['email']);
		$user->role = 'user';
		$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		R::store($user);

		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = 1;
		$_SESSION['role'] = $user->role;

		header('Location: ' . HOST . "/profile-edit");
		// header('Location: ' . HOST . "/");
		exit();

	}

}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/login/form-registration.tpl';
$content = ob_get_contents();
ob_end_clean();

include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/login/login-page.tpl';
include ROOT . 'templates/_parts/_foot.tpl';
?>