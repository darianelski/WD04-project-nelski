<div class="container user-content section-page about-me__description-wrapper mb-60">
	<div class="row">
		<div class="col-md-3">

			<?php if ($about->photo !='') {?>
				<div class="avatar">
					<img src="<?=HOST?>/usercontent/about/<?=$about->photo?>" alt="avatar" />
				</div>		
			<?php } ?>

		</div>
		<div class="col-md-9">
			<div class="about-me__title-container justify-content-between">
				<div class="title-1 about-me__title-container-item">
					<?=$about->name?>
				</div>

				<?php if ( isAdmin() ) { ?>
				<div class="button-edit__about-me-item">
					<a class="button button--edit" href="<?=HOST?>/edit-text">
						Редактировать
					</a>
				</div>
				<?php } ?>

			</div>
			<div class="about-me__description mt-25">
				<?=$about->description?>
			</div>
		</div>
	</div>
</div>