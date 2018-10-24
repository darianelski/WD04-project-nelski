<div class="col-md-4">
	<div class="card card--portfolio">
		<div class="card__img pl-20 pr-20 pt-20">

			<?php if ($work->work_img_small !='') { ?>
				<img src="<?=HOST?>/usercontent/works/<?=$work->work_img_small?>" alt="<?=$work->title?>" />
			<?php } else { ?>
				<img src="<?=HOST?>/usercontent/photo-empty_small.jpg" alt="<?=$work->title?>" />
			<?php } ?>

		</div>
		<div class="card__desc pl-20 pr-20">
			<div class="card__title">

				<?=mbCutString($work->title, 48)?>

			</div>
			<a class="button" href="<?=HOST?>/works/work?id=<?=$work->id?>">Смотреть кейс</a>
		</div>
	</div>
</div>