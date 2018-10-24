<div class="content">
	<div class="container user-content section-page">
		<form action="<?=HOST?>/works/work-new" method="POST" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Добавить работу</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl" ?>

			
				<div class="form-group">
					<label class="label">Название
						<input class="input" name="workTitle" type="text" placeholder="Введите название работы" />
					</label>
				</div>
				<p class="label mb-0">Изображение</p>
				<p class="mt-0">
					Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.
				</p>
				<input class="inputfile" type="file" name="workImg" id="file" />
				<label class="label-input-file" for="file">Выбрать файл</label>
				<span>Файл не выбран</span>
				<div class="form-group">
					<label class="label"> Содержание
						<textarea 	class="textarea" 
												name="workText" 
												type="type" 
												placeholder="Введите описание"></textarea>
					</label>
				</div>
				<div class="form-group">
					<label class="label"> Результат
						<textarea 	class="textarea" 
												name="workResult" 
												type="type" 
												placeholder="Введите описание"></textarea>
					</label>
				</div>
				<div class="form-group">
					<label class="label"> Технологии
						<textarea 	class="textarea" 
												name="workTech" 
												type="type" 
												placeholder="Введите описание"></textarea>
					</label>
				</div>
			</div>
		</div>
				
			<div class="project-links">
				<div class="row">
					<div class="col-md-3 offset-md-1">
						<div class="form-group">
							<label class="label">
								Ссылка на проект
								<input class="input" name="workLink" type="text" placeholder="Введите ссылку" />
							</label>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<label class="label">Ссылка на GitHub
								<input class="input" name="workGithub" type="text" placeholder="Введите ссылку" />
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="project-buttons">
				<div class="row">
					<div class="col-md-12 offset-md-1">
						<input type="submit" name="workNew" class="button button--save mr-20" value="Сохранить">
						<a class="button" href="<?=HOST?>/works">Отмена</a>
					</div>
				</div>
			</div>

			</form>
</div>
</div>