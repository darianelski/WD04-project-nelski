<?php function skillItem($name, $title){

	global $skills; ?>

		<div class="col-lg-2">
			<p class="edit-tech-text"><b><?=$title;?></b></p>
			<input 	class="input edit-tech-input" 
							name="<?=$name;?>" 
							type="type" 
							placeholder="0" 
							value="<?=$skills[$name]?>"/>
			<label class="edit-tech-label">%</label>
		</div>

<?php	} ?>

<div class="content">
	<div class="container user-content section-page">
		<h1>Редактировать - Технологии</h1>

		<?php require ROOT . "templates/_parts/_errors.tpl" ?>

		<div class="section-ui">
			<form class="edit-tech" action="edit-skills" method="POST">
				<div class="section-ui">
					<div class="row">

						<?php skillItem('html', 'HTML5'); ?>
						<?php skillItem('css', 'CSS3'); ?>
						<?php skillItem('js', 'JS'); ?>
						<?php skillItem('jquery', 'jQuery'); ?>

					</div>
				</div>
				<div class="section-ui">
					<div class="row">

						<?php skillItem('php', 'PHP'); ?>
						<?php skillItem('mysql', 'MySql'); ?>
						
					</div>
				</div>
				<div class="section-ui">
					<div class="row">

						<?php skillItem('git', 'Git'); ?>
						<?php skillItem('gulp', 'Gulp'); ?>
						<?php skillItem('npm', 'Npm'); ?>
						<?php skillItem('yarn', 'Yarn'); ?>

					</div>
				</div>
				<div class="section-ui">
					<div class="row">
						<div class="col-lg-1 mr-70">
							<input type="submit" name="skillsUpdate" class="button button--save mr-20" value="Сохранить">
						</div>

						<div class="col-lg-2"><a class="button" href="<?=HOST?>/about">Отмена</a></div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>