<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Удалить пост</h1>

				<form action="<?=HOST?>/blog/post-delete?id=<?=$post['id']?>" method="POST">
					<div class="form-group">
						<p>Вы действительно хотите удалить пост <strong><?=$post['title']?></strong> с id = <?=$post['id']?>?</p>
					</div>
					<input type="submit" name="postDelete" class="button button--remove mr-20" value="Удалить">
					<a class="button" href="<?=HOST?>/blog">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
