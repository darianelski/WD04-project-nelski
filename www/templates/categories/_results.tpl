<?php if ($_GET['result'] == 'catCreated') {?>
	<div class="mt-20 notify notify--success" data-notify-hide>
		Категория успешно добавлена!
	</div>
	
<?php } ?>

<?php if ($_GET['result'] == 'catUpdated') {?>
	<div class="mt-20 notify notify--success" data-notify-hide>
		Категория успешно отредактирована!
	</div>
	
<?php } ?>

<?php if ($_GET['result'] == 'catDeleted') {?>
	<div class="mt-20 notify notify--error" data-notify-hide>
		Категория успешно удалена!
	</div>
	
<?php } ?>

