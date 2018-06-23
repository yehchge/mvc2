<?php

class User_Model extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function userList()
    {
        return $this->db->select('SELECT userid, login, role FROM user');
    }

    public function userSingleList($userid)
    {
        return $this->db->select('SELECT userid, login, role FROM user WHERE userid = :userid', [':userid' => $userid]);
    }

    public function create($data)
    {
        $this->db->insert('user', [
            'login' => $data['login'],
            'password' => Hash::create('md5', $data['password'], HASH_PASSWORD_KEY),
            'role' => $data['role'],
        ]);
    }

    public function editSave($data)
    {
        $postData = [
            'login' => $data['login'],
            'password' => Hash::create('md5', $data['password'], HASH_PASSWORD_KEY),
            'role' => $data['role'],
        ];

        $this->db->update('user', $postData, "`userid` = {$data['userid']}");
    }

    public function delete($userid)
    {
        $result = $this->db->select('SELECT role FROM user WHERE userid = :userid', [':userid' => $userid]);

        if ($result[0]['role'] == 'owner') {
            return false;
        }

        $this->db->delete('user', "userid = '$userid'");
    }
}
