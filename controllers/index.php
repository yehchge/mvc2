<?php

class Index extends Controller {

	function __construct() {
		parent::__construct();
	}
	
	function index() {
		//echo Hash:create('sha256', 'jesse', HASH_PASWORD_KEY);
		//echo Hash:create('sha256', 'test2', HASH_PASWORD_KEY);
		$this->view->title = 'Home';
		$this->view->render('index/index');
	}

}