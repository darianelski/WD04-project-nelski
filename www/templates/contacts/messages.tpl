<div class="content">
	<div class="container user-content section-page feedback-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<?php 

					if (isset($_GET['result'])) {
						include ROOT . 'templates/blog/_results.tpl';
					}

				?>

				<div class="title-1 mt-0">Сообщения от посетителей</div>

				<?php 
					foreach ($messages as $message) { 
						include ROOT . "templates/contacts/_message-card.tpl";
					}
				?>

			</div>
		</div>
	</div>
</div>