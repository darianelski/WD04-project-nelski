<?php 

require "config.php";
require "db.php";

// ----------- Роутер -----------

// request URL = http://wd04-project-nelski:8888/portfolio/
$uri = $_SERVER['REQUEST_URI']; // /portfolio/
$uri = rtrim($uri, "/"); // /portfolio
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); // portfolio
$uri = explode('?', $uri);

echo $uri[0];
echo "<br><br>";

switch ($uri[0]) {
	case '':
		include "modules/main/index.php";
		break;

	case 'about':
		include "modules/about/index.php";
		break;

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'blog':
		include "modules/blog/index.php";
		break;

	default:
		include "modules/main/index.php";
		break;
}

// echo $uri;


?>