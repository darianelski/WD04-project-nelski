<div class="content">
	<div class="container user-content section-page team-portfolio">

		<?php 

			if (isset($_GET['result'])) {
				include ROOT . 'templates/blog/_results.tpl';
			}

		?>
		

		<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
			<div class="title-1"> 
				Работы <span>которые сделал я и моя команда</span>
			</div>

			<?php if ( isAdmin() ) { ?>
				<a class="button button--edit" href="<?=HOST?>/works/work-new">Добавить работу</a>
			<?php } ?>

			
		</div>

		

		<div class="row mb-50">

			<?php
			foreach ($works as $work) { 
				include ROOT . "templates/_parts/_work-card.tpl"; 
				}
			?>

		</div>

	</div>
</div>