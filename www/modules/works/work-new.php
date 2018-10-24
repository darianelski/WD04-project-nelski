<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Работы - добавить новый пост";

$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['workNew'])) {

	if ( trim($_POST['workTitle']) == '' ) {
		$errors[] = ['title' => 'Введите заголовок работы'];
	}

	if ( trim($_POST['workText']) == '' ) {
		$errors[] = ['title' => 'Введите описание работы'];
	}

	if (empty($errors)) {

		$work = R::dispense('works');
		$work->title = htmlentities($_POST['workTitle']);
		$work->cat = htmlentities($_POST['workCat']);
		$work->text = $_POST['workText'];
		$work->result = $_POST['workResult'];
		$work->tech = $_POST['workTech'];
		$work->link = $_POST['workLink'];
		$work->github = $_POST['workGithub'];
		$work->authorID = $_SESSION['logged_user']['id'];
		$work->dateTime = R::isoDateTime();


		// Проверяем, пришла ли картинка 
		if (isset($_FILES['workImg']['name']) && $_FILES['workImg']['tmp_name'] != '') {

			// записываем параметры изображения в переменные
			$fileName = $_FILES['workImg']['name'];
			$fileTmpLoc = $_FILES['workImg']['tmp_name'];
			$fileType = $_FILES['workImg']['type'];
			$fileSize = $_FILES['workImg']['size'];
			$fileErrorMsg = $_FILES['workImg']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Проверяем, действительно ли это - изображение
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Картинка слишком маленькая'];
			}

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

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			$workImgFolderLocation = ROOT . 'usercontent/works/';
			$uploadFile = $workImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла'];
			}

			include_once( ROOT . "libs/image_resize_imagick.php" );

			$target_file = $workImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 530;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$work->workImg = $db_file_name;


			$target_file = $workImgFolderLocation . $db_file_name;
			$resized_file = $workImgFolderLocation  . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 200;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$work->workImgSmall = "320-" . $db_file_name;


		}

		R::store($work);
		header('Location: ' . HOST . "/works?result=workCreated");
		exit();


	}


}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/works/work-new.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>