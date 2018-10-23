<div class="col-md-4">
	<div class="card card--post">
		<div class="card__img">
			<?php if ($post->post_img_small !='') { ?>
				<img src="<?=HOST?>/usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
			<?php } else { ?>
				<img src="<?=HOST?>/usercontent/photo-empty_small.jpg" alt="<?=$post->title?>" />
			<?php } ?>

			

		</div>
		<div class="card__desc">
			<div class="card__title">

				<?=mbCutString($post->title, 48)?>
					
			</div>
			<a class="button" href="<?=HOST?>/blog/post?id=<?=$post->id?>">Читать</a>
		</div>
	</div>
</div>