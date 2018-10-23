<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Удалить категорию</h1>

				

				<form action="<?=HOST?>/blog/category-delete?id=<?=$cat['id']?>" method="POST">
					<div class="form-group">
						<p>Вы действительно хотите удалить категорию <strong><?=$cat['cat_title']?></strong> с id = <?=$cat['id']?> ?</p>
					</div>
					<input type="submit" name="catDelete" class="button button--remove mr-20" value="Удалить">
					<a class="button" href="<?=HOST?>/blog/categories">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
