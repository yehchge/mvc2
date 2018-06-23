<?php

class Help extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function index()
    {
        $this->view->title = 'Help';

        $this->view->render('header');
        $this->view->render('help/index');
        $this->view->render('footer');
    }
}
