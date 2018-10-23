<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить сообщение";

$messages = R::load('messages', $_GET['id']);

if (isset($_POST['msgDelete'])) {

	// Если есть загруженное ранее изображение, то удаляем его
	$msgImg = $messages->message_file;
	$msgImgFolderLocation = ROOT . 'usercontent/upload_files/';


	if ($msgImg !='') {
		$picurl = $msgImgFolderLocation . $msgImg;
		// Удаляем изображение
		if (file_exists($picurl)) {
			unlink($picurl);
		}
	}

	R::trash($messages);
		
	header('Location: ' . HOST . "/messages?result=msgDeleted");
	exit();
}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/contacts/messages-delete.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>