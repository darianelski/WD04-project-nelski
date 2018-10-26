<?php if ($_GET['result'] == 'postDeleted') {?>
	<div class="mt-20 notify notify--error" data-notify-hide>
		Пост был удален.
	</div>
	
<?php } ?>

<?php if ($_GET['result'] == 'postCreated') {?>
	<div class="mt-20 notify notify--success" data-notify-hide>
		Новый пост добавлен.
	</div>
	
<?php } ?>

<?php if ($_GET['result'] == 'postUpdated') {?>
	<div class="mt-20 notify notify--update" data-notify-hide>
		Пост успешно отредактирован.
	</div>
	
<?php } ?>

<?php if ($_GET['result'] == 'msgDeleted') {?>
	<div class="mt-20 notify notify--error mb-20" data-notify-hide>
		Сообщение было удалено.
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'workDeleted') {?>
	<div class="mt-20 notify notify--error mb-20" data-notify-hide>
		Работа была удалена.
	</div>
<?php } ?>

<?php if ($_GET['result'] == 'workUpdated') {?>
	<div class="mt-20 mb-20 notify notify--update" data-notify-hide>
		Работа успешно отредактирована.
	</div>
	
<?php } ?>