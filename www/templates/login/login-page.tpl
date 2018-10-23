<body class="login-page">
	<div class="login-header">
		<div class="logo">
			<div class="logo-icon"><i class="far fa-paper-plane"></i></div>
			<div class="logo_description">
				<a class="header-logo__title" href="#">Супер сайт</a>
				<a class="header-logo__sub" href="#"></a>
			</div>
		</div>

		<?php 
			if ($uri[0] == 'registration') {?>
				<a class="login-header__link" href="<?=HOST?>/login">Вход</a>
		<?php	} else { ?>
				<a class="login-header__link" href="<?=HOST?>/registration">Регистрация</a>
<?php	}

		?>

		
	</div>

	<?=$content ?>

	<div class="login-page-footer">
		<div class="footer__item footer__copyright">
			<p class="text-center">© Юрий Ключевский <br /></p>
			<p class="text-center">Создано с<i class="fas fa-heart animation-pulse"></i>в <a href="http://webcademy.ru" target="_blank"><span>WebCademy.ru</span> </a>в 2018 году</p>
		</div>
	</div><!-- build:jsLibs js/libs.js -->