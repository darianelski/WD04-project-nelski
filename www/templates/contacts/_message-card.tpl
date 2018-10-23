<div class="user-message">
	<div class="user-message__top">
		<div class="user-message__date">
			<?=$message->date_time?>
		</div>
		<a class="button button--small button--remove" href="<?=HOST?>/messages-delete?id=<?=$message->id?>">Удалить</a>
	</div>
	<div class="user-message__header">
		<div class="user-message__name">
			<?=$message->name?>
		</div>
		<a class="user-message__link" href="mailto:<?=$message->email?>">
			<?=$message->email?>
		</a>
	</div>
	<div class="user-message__text">
		<p><?=$message->message?></p>
	</div>

	<?php 

		if ($message->message_file !='') { ?>

			<div class="user-message__bottom">
				<div class="user-message__attachments">Прикрепленный файл: </div>
				<a class="user-message__attachments-name" href="<?=HOST?>/usercontent/upload_files/<?=$message->message_file?>" target="_blank">
					<?=$message->message_file_name_original?>
				</a>
			</div>
			
		<?php }

	?>

</div>