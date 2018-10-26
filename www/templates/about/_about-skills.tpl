<?php function showIndicator($title, $value, $color){ 

	$offset = 289 * ( 1 - intval($value)/100);

	?>

	<div class="indicator">
		<svg class="svg-box" viewBox="0 0 112 112">
			<circle class="circle-1" cx="56" cy="56" r="50"></circle>
			<circle class="circle-2" cx="56" cy="56" r="50" stroke-dashoffset="<?=$offset?>" stroke="<?=$color?>"></circle>
		</svg>
		<div class="indicator__value"><?=$title?> </div>
	</div>

<?php } ?>

<div class="user-content section-page about-me__tech-wrapper indicators-section dark mt-60 pt-50 mb-80 pb-40">
	<div class="container">
		<div class="row justify-content-between align-items-center">
			<div class="col-md-9 offset-md-3">
				<div class="about-me__tech-title-container justify-content-between mb-40">
					<div class="about-me__tech-title-container-block">
						<div class="title-3">Технологии <br /></div>
						<p class="about-me__tech-title-container-item">Которые использую в работе</p>
					</div>

					<?php if ( isAdmin() ) { ?>
					<div class="button-edit__about-me-item">
						<a class="button button--edit" href="<?=HOST?>/edit-skills">
						Редактировать
					</a>
					</div>
					<?php } ?>
					
				</div>
			</div>
		</div>
		<div class="row justify-content-between align-items-center">
			<div class="col-md-3 text-center">
				<div class="title-3 pb-40">Frontend</div>
			</div>
			<div class="col-md-9">
				<div class="indicators-section dark">
					<div class="indicators-row">

						<?php showIndicator('HTML5', $skills['html'], '#3aaa35') ?>
						<?php showIndicator('CSS3', $skills['css'], '#3aaa35') ?>
						<?php showIndicator('JS', $skills['js'], '#3aaa35') ?>
						<?php showIndicator('Jquery', $skills['jquery'], '#3aaa35') ?>

					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-between align-items-center">
			<div class="col-md-3 text-center">
				<div class="title-3 pb-40">Backend</div>
			</div>
			<div class="col-md-9">
				<div class="indicators-section dark">
					<div class="indicators-row">

						<?php showIndicator('PHP', $skills['php'], '#009cf5') ?>
						<?php showIndicator('MySql', $skills['mysql'], '#009cf5') ?>

					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-between align-items-center">
			<div class="col-md-3 text-center">
				<div class="title-3 pb-40">Workflow</div>
			</div>
			<div class="col-md-9">
				<div class="indicators-section dark">
					<div class="indicators-row">

						<?php showIndicator('Git', $skills['git'], '#ffcc00') ?>
						<?php showIndicator('Gulp', $skills['gulp'], '#ffcc00') ?>
						<?php showIndicator('Npm', $skills['npm'], '#ffcc00') ?>
						<?php showIndicator('Yarn', $skills['yarn'], '#ffcc00') ?>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>