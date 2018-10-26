<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить работу";

$work = R::load('works', $_GET['id']);

if (isset($_POST['workDelete'])) {

	// Если есть загруженное ранее изображение, то удаляем его
	$workImg = $work->work_img;
	$workImgFolderLocation = ROOT . 'usercontent/works/';


	if ($workImg !='') {
		$picurl = $workImgFolderLocation . $workImg;
		// Удаляем изображение
		if (file_exists($picurl)) {
			unlink($picurl);
		}

		$picurl320 = $workImgFolderLocation . '320-' . $workImg;
	  if ( file_exists($picurl320) ) { 
	  	unlink($picurl320); 
	  }
	}

	R::trash($work);
		
	header('Location: ' . HOST . "/works?result=workDeleted");
	exit();
}

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/works/work-delete.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>