<script src="<?=HOST?>/libs/ckeditor/ckeditor.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function(){

		CKEDITOR.replace( 'ckEditor', {
		    customConfig: '<?=HOST?>/templates/assets/js/ckEditorConfig.js'
		    // language: 'ru',
		    // uiColor: '#AED7ED'
		});

	});
</script>