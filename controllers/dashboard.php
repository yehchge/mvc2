<?php

class dashboard extends Controller
{
    public function __construct()
    {
        parent::__construct();
        Auth::handleLogin();
        $this->view->js = ['dashboard/js/default.js'];
    }

    public function index()
    {
        $this->view->title = 'Dashboard';

        $this->view->render('header');
        $this->view->render('dashboard/index');
        $this->view->render('footer');
    }

    public function logout()
    {
        Session::destroy();
        setcookie('username', '', 0, '/');
        header('location: '.URL.'login');
        exit;
    }

    public function xhrInsert()
    {
        $this->model->xhrInsert();
    }

    public function xhrGetListings()
    {
        $this->model->xhrGetListings();
    }

    public function xhrDeleteListing()
    {
        $this->model->xhrDeleteListing();
    }
}
