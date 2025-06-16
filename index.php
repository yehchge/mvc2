<?php

error_reporting(E_ALL);
ini_set('display_errors', true);

require 'config.php';
require 'util/Auth.php';

// Also spl_autoload_register (Take a look at it if you like)
spl_autoload_register(function ($class) {
    require LIBS.$class.'.php';
});

try {
    if (! isset($_SESSION['userid']) && empty($_SESSION['loggedIn'])) {
        Checklogin::CheckCookieLogin();
    }

    // Load the Bootstrap!
    $bootstrap = new Bootstrap();

    $bootstrap->init();
} catch (Exception $e) {
    echo 'Error: '.$e->getMessage();
}
