<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>

<div class="content">
	<div class="user-content main-page">


		<div class="hr-line"> </div>
		<div class="container section-page">

			<div class="title-1">Новые <a href="<?=HOST?>/works">работы</a></div>
			<div class="row mb-70">

				<?php foreach ($works as $work) { 
					include ROOT . "templates/_parts/_work-card.tpl"; 
				} ?>

			</div>

			<div class="title-1">Новые записи в <a href="<?=HOST?>/blog">блоге</a></div>
			<div class="row">
				<?php foreach ($posts as $post) { 
					include ROOT . "templates/_parts/_blog-card.tpl"; 
				} ?>
			</div>
		</div>
	</div>
</div>