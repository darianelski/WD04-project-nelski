<div class="container user-content section-page about-me__jobs-list-wrapper">
	<div class="row">
		<div class="col-md-9 offset-md-3">
			<div class="about-me__jobs-container justify-content-between mb-30">
				<div class="title-1 about-me__jobs-container-item">Опыт работы</div>

				<?php if ( isAdmin() ) { ?>
				<div class="button-edit__about-me-item">
					<a class="button button--edit" href="<?=HOST?>/edit-experience">
						Редактировать
					</a>
				</div>
				<?php } ?>
				
			</div>
			<ul class="about-me__definition-list">

				<?php foreach ($experiences as $experience) { 
					include ROOT . "templates/about/_experience-card.tpl";
				} ?>

				<li class="about-me__definition-list__item pb-30">
					<div class="about-me__definition-list__def">февраль 2017 — по настоящее время</div>
					<div class="title-4 about-me__definition-list__title">Frontend разработчик, Вконтактe, mail.ru group</div>
					<div class="about-me__definition-list__description">
						<p>Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.</p>
					</div>
				</li>

			</ul>
		</div>
	</div>
</div>