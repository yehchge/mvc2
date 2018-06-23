<?php

class login extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->view->title = 'Login';

        $this->view->render('header');
        $this->view->render('login/index');
        $this->view->render('footer');
    }

    public function run()
    {
        $this->model->run();
    }
}
