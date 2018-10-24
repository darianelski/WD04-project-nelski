<div class="content">
	<div class="section-page">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 user-content">

						<div class="title-1 mb-35">Редактировать - Опыт работы</div>
						<div class="aboutme-job-block mb-35">

							<?php foreach ($experiences as $experience) { 
								include ROOT . "templates/about/_experience-card-edit.tpl";
							} ?>

						</div>

					<form action="<?=HOST?>/edit-experience" method="POST">

						<?php require ROOT . "templates/_parts/_errors.tpl" ?>

						<div class="title-1 mb-35">Добавить новое место работы</div>
						<div class="add-job-block">
							<div class="form-group">
								<label class="label">
									Период
									<input 	class="input" 
													name="period" 
													type="text" 
													placeholder="Введите даты начала и окончания работы" 
													value="<?=@$_POST['period']?>"/>
								</label>
							</div>
							<div class="form-group">
								<label class="label">
									Название должности
									<input 	class="input" 
													name="title" 
													type="text" 
													placeholder="Введите название должности" 
													value="<?=@$_POST['title']?>"/>
								</label>
							</div>
							<div class="form-group">
								<label class="label">
									Описание работы, должностные обязанности, достигнутые результаты
									<textarea class="textarea" name="description" type="type" placeholder="Напишите интересное краткое содержательное описание"><?=@$_POST['description']?></textarea>
								</label>
							</div>
							<input type="submit" name="newExperience" class="button button--save mr-20" value="Добавить">
							<a class="button" href="<?=HOST?>/about">Отмена</a>
						</div>
						
					</form>
					
				</div>
			</div>
		</div>
	</div>
</div>