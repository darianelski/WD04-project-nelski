<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Удалить сообщение</h1>

				<form action="<?=HOST?>/messages-delete?id=<?=$messages['id']?>" method="POST">
					<div class="form-group">
						<p>Вы действительно хотите удалить сообщение от <strong><?=$messages->name?></strong> с id = <?=$messages->id?>?</p>
					</div>
					<input type="submit" name="msgDelete" class="button button--remove mr-20" value="Удалить">
					<a class="button" href="<?=HOST?>/messages">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
