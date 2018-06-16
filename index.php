<?php

error_reporting(E_ALL);
ini_set('display_errors', true);

require 'config.php';
require 'util/Auth.php';

// Also spl_autoload_register (Take a look at it if you like)
function __autoload($class) {
	require LIBS . $class .'.php';
}

try {

    // Load the Bootstrap!
    $bootstrap = new Bootstrap();

    $bootstrap->init();

} catch (Exception $e) {
    echo 'Error: '.$e->getMessage();
}
