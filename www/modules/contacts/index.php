<?php 

$title = "Контакты";

$contacts = R::load('contacts', 1);

if ( isset($_POST['newMessage'])) {

	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите имя' ];
	}

	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}

	if ( trim($_POST['message']) == '') {
		$errors[] = ['title' => 'Введите текст сообщения' ];
	}

	if ( empty($errors)) {
		$message = R::dispense('messages');

		$message->name = htmlentities($_POST['name']);
		$message->email = htmlentities($_POST['email']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();

		if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '') {

			// записываем параметры изображения в переменные
			$fileName = $_FILES['file']['name'];
			$fileTmpLoc = $_FILES['file']['tmp_name'];
			$fileType = $_FILES['file']['type'];
			$fileSize = $_FILES['file']['size'];
			$fileErrorMsg = $_FILES['file']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;

			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Изображение превышает размер в 4Мб'];
			}

			if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
				$errors[] = [
											'title' => 'Неверный формат файла',
											'desc' => '<p>Изображение должно быть в формате jpg, jpeg, gif или png. Выберите другое изображение.</p>',
										];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка'];
			}

			$msgImgFolderLocation = ROOT . 'usercontent/upload_files/';
			
			// Перемещаем загруженный файл в нужную директорию
			$uploadFile = $msgImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла'];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;

		}


		R::store($message);

		$success[] = ['title' => 'Сообщение успешно отправлено!'];


	}

}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/contacts/contacts.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>