<?php

require 'config.php';

// Also spl_autoload_register (Take a look at it if you like)
function __autoload($class) {
	require LIBS . $class .'.php';
}


$app = new Bootstrap();
