<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Удалить работу</h1>

				<form action="<?=HOST?>/works/work-delete?id=<?=$work['id']?>" method="POST">
					<div class="form-group">
						<p>Вы действительно хотите удалить работу <strong><?=$work['title']?></strong> с id = <?=$work['id']?>?</p>
					</div>
					<input type="submit" name="workDelete" class="button button--remove mr-20" value="Удалить">
					<a class="button" href="<?=HOST?>/works">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
