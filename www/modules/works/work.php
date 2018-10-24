<?php 

$sql = ' 
				SELECT 
					works.id, works.title, works.text, works.work_img, works.work_img_small, works.date_time, works.author_id, works.cat,
					users.name, users.secondname,
					categories.cat_title
				FROM `works`
				INNER JOIN categories ON works.cat = categories.id
				INNER JOIN users ON works.author_id = users.id

				WHERE works.id = ' . $_GET['id'] . ' LIMIT 1';

$work = R::getAll($sql);

$work = $work[0];

$title = $work['title'];

// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/works/work-one.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';

?>