<?php

class note extends Controller
{
    public function __construct()
    {
        parent::__construct();
        Auth::handleLogin();
    }

    public function index()
    {
        $this->view->title = 'Notes';
        $this->view->noteList = $this->model->noteList();

        $this->view->render('header');
        $this->view->render('note/index');
        $this->view->render('footer');
    }

    public function create()
    {
        $data = [
            'title' => $_POST['title'],
            'content' => $_POST['content'],
        ];
        $this->model->create($data);
        header('location: '.URL.'note');
    }

    public function edit($noteid)
    {
        $this->view->note = $this->model->noteSingleList($noteid);

        if (empty($this->view->note)) {
            die('This is an invalid note!');
        }

        $this->view->title = 'Edit Note';

        $this->view->render('header');
        $this->view->render('note/edit');
        $this->view->render('footer');
    }

    public function editSave($noteid)
    {
        $data = [
            'noteid' => $noteid,
            'title' => $_POST['title'],
            'content' => $_POST['content'],
        ];

        // @TODO: Do your checking!

        $this->model->editSave($data);
        header('location: '.URL.'note');
    }

    public function delete($id)
    {
        $this->model->delete($id);
        header('location: '.URL.'note');
    }
}
