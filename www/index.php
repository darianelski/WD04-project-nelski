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

	// case 'about':
	// 	include "modules/about/index.php";
	// 	break;

	// case 'contacts':
	// 	include "modules/contacts/index.php";
	// 	break;

	// case 'blog':
	// 	include "modules/blog/index.php";
	// 	break;

	default:
		include "modules/main/index.php";
		break;
}

// echo $uri;



?>