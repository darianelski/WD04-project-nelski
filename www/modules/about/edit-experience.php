<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Редактировать - О авторе";

$experiences = R::find('experience', 'ORDER BY id DESC');

if (isset($_POST['newExperience'])) {

	if ( trim($_POST['period']) == '' ) {
		$errors[] = ['title' => 'Введите период работы'];
	}

	if ( trim($_POST['title']) == '' ) {
		$errors[] = ['title' => 'Введите должность'];
	}

		if (empty($errors)) {

			$experience = R::dispense('experience');
			$experience->period = htmlentities($_POST['period']);
			$experience->title = htmlentities($_POST['title']);
			$experience->description = htmlentities($_POST['description']);

			R::store($experience);
			// header('Location: ' . HOST . "/about");
			// exit();

		}

}



// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/about/edit-experience.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>