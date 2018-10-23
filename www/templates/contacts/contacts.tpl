<div class="content">
	<div class="container user-content section-page">

		<?php if ( isAdmin() ) { ?>
			<div class="row justify-content-end">
				<a class="button button--edit mr-20" href="<?=HOST?>/contacts-edit">
				Редактировать
				</a>
				<a class="button" href="<?=HOST?>/messages">Сообщения</a>
			</div>
		<?php }  ?>

		<div class="row">
			<div class="col-md-5">
				<div class="contacts__title title-1">Контакты</div>

				<?php function showContactItem($name, $title){
					global $contacts;
					if ( @$contacts[$name] != "") {  ?>

					<div class="row contact-item mb-15">
						<div class="col"><strong><?=$title?></strong></div>
						<div class="col">
							<?php if ( $name == 'email'){ ?>
								<a 	class="contacts-block-info__item-link" target="_blank" 
									href="mailto:<?=$contacts[$name]?>">
									<?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'phone' ) { ?>
								<a 	class="contacts-block-info__item-link" target="_blank" 
									href="tel:<?=$contacts[$name]?>">
									<?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'skype' ) { ?>
								<a 	class="contacts-block-info__item-link" target="_blank"  
									href="skype:<?=$contacts[$name]?>?chat">
									<?=$contacts[$name]?>
								</a>
							<?php } else if ( $name == 'github' ) { ?>
								<a 	class="contacts-block-info__item-link" target="_blank"  
									href="<?=$contacts[$name]?>">
									<?=$contacts[$name]?>
								</a>
							<?php } else { ?>
								<?=$contacts[$name]?>
							<?php } ?>
							
						</div>
					</div>

					<?php } 
				} ?>

				<?php showContactItem('name', 'Имя'); ?>
				<?php showContactItem('secondname', 'Фамилия'); ?>
				<?php showContactItem('email', 'Email'); ?>
				<?php showContactItem('skype', 'Skype'); ?>
				<?php showContactItem('github', 'Github'); ?>

				<?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ): ?>
					<div class="row contact-item mb-15">
						<div class="col"><strong>Социальные сети</strong></div>
						<div class="col">

							<?php if ( @$contacts['vk'] != "") {  ?>
								<a class="contact-social-link mb-15" 
									href="<?=$contacts['vk']?>" target="_blank">Профиль Вконтакте</a>
							<?php } ?>

							<?php if ( @$contacts['fb'] != "") {  ?>
								<a class="contact-social-link mb-15" 
									href="<?=$contacts['fb']?>" target="_blank">Профиль Facebook</a>
							<?php } ?>

							<?php if ( @$contacts['twitter'] != "") {  ?>
								<a class="contact-social-link" 
									href="<?=$contacts['twitter']?>" target="_blank">Профиль Twitter</a>
							<?php } ?>
							
						</div>
					</div>
				<?php endif ?>


				<?php showContactItem('phone', 'Телефон'); ?>
				<?php showContactItem('adress', 'Адрес'); ?>

				
			</div>
			<div class="offset-md-1 col-md-4">
				<div class="contacts__title title-1">Связаться со мной</div>
				<form class="form-contacts" action="">
					<div class="form-group">
						<label class="label">
							<input class="input" name="firstname" type="text" placeholder="Введите имя" />
						</label>
					</div>
					<div class="form-group">
						<label class="label">
							<input class="input" name="firstname" type="text" placeholder="Email" />
						</label>
					</div>
					<div class="form-group">
						<label class="label">
							<textarea class="textarea" name="message" type="type" placeholder="Cообщение">
							</textarea>
						</label>
					</div>
					<div class="form-contacts__file-upload">
						<div class="file-upload__title title-6">Прикрепить файл</div>
						<div class="file-upload__comment">
						div jpg, png, pdf, doc, весом до 2Мб.
						</div>
						<input class="inputfile" type="file" name="file" id="file" />
						<label class="label-input-file" for="file">Выбрать файл</label>
						<span>Файл не выбран</span>
						<input class="button button--save" type="submit" value="Отправить" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="map" id="map"></div>
</div>