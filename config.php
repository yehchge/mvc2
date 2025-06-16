<?php

// Always provide a TRAILING SLASH (/) AFTER A PATH
define('URL', 'http://localhost/mvc2/');
define('LIBS', 'libs/');

define('DB_TYPE', 'mysql');
define('DB_HOST', '172.16.1.230');
define('DB_NAME', 'test_bill');
define('DB_USER', 'robot');
define('DB_PASS', 'robot');

// The sitewide hashkey, do not change this because its used for passwords!
// This is for other hash keys... Not sure yet
define('HASH_GENERAL_KEY', 'MixitUp200');

// This is for database passwords only
define('HASH_PASSWORD_KEY', 'catsFLYhigh2000miles');
