<?php 

$errors = array();
$success = array();

require "config.php";
require "db.php";
require "libs/functions.php";
session_start();


// ----------- Роутер -----------

// request URL = http://wd04-project-nelski:8888/portfolio/
$uri = $_SERVER['REQUEST_URI']; // /portfolio/
$uri = rtrim($uri, "/"); // /portfolio
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); // portfolio
$uri = explode('?', $uri);

// echo $uri[0];
// echo "<br><br>";



switch ($uri[0]) {
	case '':
		require ROOT . "modules/main/index.php";
		break;

	// :::::::::::: USERS ::::::::::::
	// маршруты

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;


	// :::::::::::: CATEGORIES ::::::::::::

	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;

	// :::::::::::: BLOG ::::::::::::

	case 'blog':
		include "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include "modules/blog/post-delete.php";
		break;

	case 'blog/post':
		include "modules/blog/post.php";
		break;

	default:
		include "modules/main/index.php";
		break;


	// :::::::::::: CONTACTS ::::::::::::

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/edit.php";
		break;

	case 'messages':
		include "modules/contacts/messages.php";
		break;
		
	case 'messages-delete':
		include "modules/contacts/messages-delete.php";
		break;

	// :::::::::::: ABOUT ::::::::::::

	case 'about':
		include "modules/about/index.php";
		break;

	case 'edit-text':
		include "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include "modules/about/edit-skills.php";
		break;

	case 'edit-experience':
		include "modules/about/edit-experience.php";
		break;

}

// echo $uri;



?>