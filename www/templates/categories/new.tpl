<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Создать новую категорию</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl" ?>


				<form action="<?=HOST?>/blog/category-new" method="POST">
					<div class="form-group">
						<label class="label">Название категории
							<input class="input" name="catTitle" type="text" placeholder="Введите название категории" />
						</label>
					</div>
					<input type="submit" name="catNew" class="button button--save mr-20" value="Сохранить">
					<a class="button" href="<?=HOST?>/blog/categories">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>
