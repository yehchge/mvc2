<?php

class Bootstrap {

	function __construct() {
		//$url = isset($_GET['url'])?$_GET['url']:'';

		$url = $_GET['url'];
		$url = rtrim($url,'/');
		$url = explode('/',$url);

		//print_r($url);
		
		$file = 'controllers/'. $url[0] . '.php';
		if (file_exists($file)) {
			require $file;
		} else {
			require 'controllers/error.php';
			$controller = new Error();
			return false;
			//throw new Exception("Thie file: $file Does not exists.");
		}
		
		$controller = new $url[0];

		if (isset($url[2])) {
			$controller->{$url[1]}($url[2]);
			//$controller->function();
		}
		else {
			if (isset($url[1])) {
				$controller->{$url[1]}();
				//$controller->function();
			}
		}
	
	}

}


