<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Редактировать пост"; 

$post = R::load('posts', $_GET['id']);
$cats = R::find('categories', 'ORDER BY cat_title ASC');


if (isset($_POST['postUpdate'])) {

	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	// die();


	if ( trim($_POST['postTitle']) == '' ) {
		$errors[] = ['title' => 'Введите заголовок поста'];
	}

	if ( trim($_POST['postText']) == '' ) {
		$errors[] = ['title' => 'Введите текст поста'];
	}

	if (empty($errors)) {

		$post->title = htmlentities($_POST['postTitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = $_POST['postText'];
		$post->authorID = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();

		if (isset($_POST['deleteImg']) &&  $_POST['deleteImg'] == "Удалить" ) {
			unlink( ROOT . 'usercontent/blog/' . $post->postImg );
			unlink( ROOT . 'usercontent/blog/' . $post->postImgSmall );
			$post->postImg = '';
			$post->postImgSmall = '';
		}


		// Проверяем, пришла ли картинка 
		if (isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != '') {

			// записываем параметры изображения в переменные
			$fileName = $_FILES['postImg']['name'];
			$fileTmpLoc = $_FILES['postImg']['tmp_name'];
			$fileType = $_FILES['postImg']['type'];
			$fileSize = $_FILES['postImg']['size'];
			$fileErrorMsg = $_FILES['postImg']['error'];
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
			$postImgFolderLocation = ROOT . 'usercontent/blog/';
			$uploadFile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			// Если есть загруженное ранее изображение, то удаляем его
			$postImg = $post->post_img;

			if ($postImg !='') {
				$picurl = $postImgFolderLocation . $postImg;
				// Удаляем изображение
				if (file_exists($picurl)) {
					unlink($picurl);
				}

				$picurl320 = $postImgFolderLocation . '320-' . $postImg;
			  if ( file_exists($picurl320) ) { 
			  	unlink($picurl320); 
			  }
			}

			

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла'];
			}

			include_once( ROOT . "libs/image_resize_imagick.php" );

			$target_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$post->postImg = $db_file_name;


			$target_file = $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation  . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$post->postImgSmall = "320-" . $db_file_name;


		}

		R::store($post);
		header('Location: ' . HOST . "/blog?result=postUpdated");
		exit();


	}


}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/blog/post-edit.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>