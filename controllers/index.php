<?php

class index extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        //echo Hash:create('sha256', 'jesse', HASH_PASWORD_KEY);
        //echo Hash:create('sha256', 'test2', HASH_PASWORD_KEY);
        $this->view->title = 'Home';

        $this->view->render('header', ['title' => 'Create a news item']);
        $this->view->render('index/index');
        $this->view->render('footer');
    }
}
