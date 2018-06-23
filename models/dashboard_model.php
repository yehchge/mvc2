<?php

class DashBoard_Model extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function xhrInsert()
    {
        $text = $_POST['text'];

        $this->db->insert('data', ['text' => $text]);

        $data = ['text' => $text, 'id' => $this->db->lastInsertId()];
        echo json_encode($data);
    }

    public function xhrGetListings()
    {
        $result = $this->db->select('SELECT * FROM data');
        echo json_encode($result);
    }

    public function xhrDeleteListing()
    {
        $id = (int) $_POST['id'];
        $this->db->delete('data', "dataid=$id");
    }
}
