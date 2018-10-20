<?php 

// echo "<pre>";
// print_r($post); 
// echo "</pre>";

 ?>

<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="post">
					<div class="post-row-top">
						<h1><?=$post['title']?></h1>
						<div class="button-right-top">
							<a class="button button--edit mt-25" href="#">Редактировать</a>
						</div>
					</div>
					<div class="post-info">
						<div class="post-info__author">Емельян Казаков</div>
						<div class="post-info__topic">
							<a class="post-info__link" href="#">Путешествия</a>
						</div>
						<div class="post-info__date"><?php echo rus_date("j F Y H:i", strtotime($post['date_time'])); ?></div>
						<div class="post-info__comments">
							<a class="post-info__link" href="#">2 комментария</a>
						</div>
					</div>
					<div class="post-img">

						<?php if ($post->post_img_small !='') { ?>
							<img src="<?=HOST?>/usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
						<?php } else { ?>
							<img src="<?=HOST?>/usercontent/photo-empty.jpg" alt="<?=$post['title']?>" />
						<?php } ?>
						
					</div>
					<div class="post-text">
						<?=$post['text']?>
					</div>
				</div>
				<div class="post-buttons-navigation">
					<a class="button button--icon-left" href="#">
						<i class="fas fa-arrow-left"></i>
					Назад</a>
					<a class="button button--icon-right button-blog-next" href="#">Вперёд
						<i class="fas fa-arrow-right"></i>
					</a>
				</div>
				<h2> 2 комментария</h2>
				<div class="comments-item">
					<div class="avatar-block">
						<div class="avatar avatar--small">
							<img src="../img/avatars/avatar-2.jpg" alt="avatar" />
						</div>
					</div>
					<div class="comment-item__content">
						<div class="comment-item__top">
							<div class="user-name"> Джон До</div>
							<div class="comment-item__date">
								<span><i class="far fa-clock"></i></span>
								<span> 05 мая 2017 года в 15:45</span>
							</div>
						</div>
						<div class="comment-item__text">
							Замечательный парк, обязательно отправлюсь туда этим летом. 
						</div>
					</div>
				</div>
				<div class="comments-item">
					<div class="avatar-block">
						<div class="avatar avatar--small">
							<img src="../img/avatars/avatar-3.jpg" alt="avatar" />
						</div>
					</div>
					<div class="comment-item__content">
						<div class="comment-item__top">
							<div class="user-name"> Джон До</div>
							<div class="comment-item__date">
								<span><i class="far fa-clock"></i></span>
								<span> 05 мая 2017 года в 15:45</span>
							</div>
						</div>
						<div class="comment-item__text">
							Замечательный парк, обязательно отправлюсь туда этим летом. 
						</div>
					</div>
				</div>
				<h2> Оставить комментарий</h2>
				<div class="comment-add-block">
					<div class="comment-add-block__left">
						<div class="avatar avatar--small">
							<img src="../img/avatars/avatar-1.jpg" alt="avatar" />
						</div>
					</div>
					<div class="comment-add-block__right">
						<h6 class="comment-add-block__right-title">Юрий Ключевский</h6>
						<div class="notify notify--error">Комментарий не может быть пустым</div>
						<textarea class="textarea textarea--comment-add" name="add_comment" placeholder="Присоединиться к обсуждению..."></textarea>
						<a class="button" href="#">Опубликовать</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>