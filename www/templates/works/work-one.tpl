<?php $work = R::load('works', $_GET['id']); ?>

<div class="content">

			<div class="container user-content">
				<div class="row">
					<div class="col-md-11 mt-50 mb-10 offset-md-1 my-portfolio__row">
						<h1><?=$work['title']?></h1>

						<?php if ( isAdmin() ) { ?>
						<a class="button button--edit" href="<?=HOST?>/works/work-edit?id=<?=$work['id']?>">Редактировать</a>
						<a class="button button--remove" href="<?=HOST?>/works/work-delete?id=<?=$work['id']?>">Удалить</a>
						<?php } ?>

					</div>
				</div>
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<div class="post mb-0">
							<div class="post-infom mt-0">
								<div class="post-info__subtitle mb-55 my-portfolio__row">
									<div class="post-info__author"><?=$work['name']?> <?=$work['secondname']?></div>
									<!-- <div class="post-info__topic"> 
										<a class="post-info__link" href="#"></a>
									</div> -->
									<div class="post-info__date">
										<?php echo rus_date("j F Y H:i", strtotime($work['date_time'])); ?>
									</div>
								</div>
							</div>

							<?php if ($work['work_img'] !='') { ?>
								<div class="work-img">
									<img src="<?=HOST?>/usercontent/works/<?=$work['work_img']?>" alt="<?=$work['title']?>" />
								</div>
							<?php } ?>

						</div>
					</div>
				</div>
			</div>



	<section class="my-portfolio__description">
		<div class="container user-content">
			<div class="row">
				<div class="mb-50 col-md-10 my-portfolio__row offset-md-1">
					<div class="col-md-6 ml-md-0 pl-md-0">
						<h3>Кратко о проекте</h3>
						<?=$work['text']?>
					</div>
					<div class="col-md-4">
						<h3>Технологии</h3>
						<nav class="my-portfolio__nav">
							<ul>
								<li class="my-portfolio__item"><?=$work['tech']?></li>
								<!-- <li class="my-portfolio__item">HTML5, CSS3.</li>
								<li class="my-portfolio__item">JavaScript, jQuery.</li>
								<li class="my-portfolio__item">LESS, PUG, Gulp, npm, bower.</li> -->
							</ul>
						</nav>

					<?php if ($work->link !='') { ?>

						<h3>Ссылка на проект</h3><a href="<?=$work['link']?>" target="_blank"><?=$work['link']?></a>

					<?php } ?>

					<?php if ($work->github !='') { ?>

						<h3>Код на github</h3><a href="<?=$work['github']?>" target="_blank"><?=$work['github']?></a>

					<?php } ?>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 my-portfolio__buttons-nav offset-md-1">
					<a class="button button--icon-left" href="<?=HOST?>/works"><i class="fas fa-arrow-left"></i>Все работы</a>
					<a class="button button--icon-right" href="#">Следующая работа<i class="fas fa-arrow-right"></i></a>
				</div>
			</div>
		</div>
	</section>
</div>