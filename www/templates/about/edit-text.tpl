<?php 
	function dataFromPost($fieldName) {
		global $about;
		echo @$_POST[$fieldName] != '' ? @$_POST[$fieldName] : $about[$fieldName];
	}
?>

<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Редактировать - Обо Мне</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl" ?>

				<form action="edit-text" method="POST" enctype="multipart/form-data">
					<div class="form-group">
						<label class="label">
							Имя, фамилия
							<input 	class="input" 
											name="name" 
											type="text" 
											placeholder="Введите имя" 
											value="<?php dataFromPost('name');?>" />
						</label>
					</div>
					<p class="label mb-0">Фотографии</p>
					<p class="mt-0">
						Изображение jpg или png, рекомендуемый размер 205px на 205px, вес до 2Мб.
					</p>
					<input class="inputfile" type="file" name="photo" id="file" />
					<label class="label-input-file" for="file">Выбрать файл
					</label><span>Файл не выбран</span>
					<div class="mt-20">
						<div class="avatar avatar--small">
							
							<img src="<?=HOST?>/usercontent/about/<?=$about->photo?>" alt="<?=$about->photo?>" />
						</div>
					</div>
					<div class="form-group">
						<label class="label"> Информация на главной
							<textarea class="textarea mt-30" name="description" type="type" id="ckEditor" placeholder="Введите информацию о себе..."><?php dataFromPost('description');?></textarea>
							<?php include_once ROOT . "/templates/_parts/_ckEditorConnect.tpl" ?>
						</label>
					</div>
					<input type="submit" name="textUpdate" class="button button--save mr-20" value="Сохранить">
					<a class="button" href="<?=HOST?>/about">Отмена</a>
				</form>
				
			</div>
		</div>
	</div>
</div>