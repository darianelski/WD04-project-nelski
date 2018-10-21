<?php if(isLoggedIn()){?>

	<h2> Оставить комментарий</h2>
	<form 	class="comment-add-block" method="POST" 
					action="<?=HOST?>/blog/post?id=<?=$post['id']?>">
		<div class="comment-add-block__left">
			<div class="avatar avatar--small">

				<?php 
					if ($_SESSION['logged_user']['avatar_small'] !='') {?>
						<img src="<?=HOST?>/usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['secondname']?>" />
				<?php } ?>
			</div>
		</div>
		<div class="comment-add-block__right">
			<h6 class="comment-add-block__right-title">
				<?=$_SESSION['logged_user']['name']?> 
				<?=$_SESSION['logged_user']['secondname']?>
			</h6>
			<div class="notify notify--error" style="display: none;" data-error-comment-empty>Комментарий не может быть пустым</div>
			<textarea class="textarea textarea--comment-add" name="textComment" placeholder="Присоединиться к обсуждению..."></textarea>
			<input type="hidden" name="addComment">
			<input type="submit" name="addComment" class="button" value="Опубликовать" data-add-comment>
		</div>
	</form>

<?php } else{?>	

	<div class="comment-register">
		<p>
			<a href="<?=HOST?>/login">Войдите</a> или 
			<a href="<?=HOST?>/registration">зарегистрируйтесь</a><br />
		чтобы оставить комментарий</p>
	</div>

<?php }?>