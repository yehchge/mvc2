<?php

class Note_Model extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function noteList()
    {
        return $this->db->select(
            'SELECT * FROM note WHERE userid = :userid',
                ['userid' => $_SESSION['userid']]
        );
    }

    public function noteSingleList($noteid)
    {
        return $this->db->select(
            'SELECT * FROM note WHERE userid = :userid AND noteid = :noteid',
                ['userid' => $_SESSION['userid'], 'noteid' => $noteid]
        );
    }

    public function create($data)
    {
        $this->db->insert('note', [
            'title' => $data['title'],
            'userid' => $_SESSION['userid'],
            'content' => $data['content'],
            'date_added' => date('Y-m-d H:i:s'), // use GMT aka UTC 0:00
        ]);
    }

    public function editSave($data)
    {
        $postData = [
            'title' => $data['title'],
            'content' => $data['content'],
        ];

        $this->db->update(

            'note',

            $postData,
                "`noteid` = '{$data['noteid']}' AND `userid` = '{$_SESSION['userid']}'"

        );
    }

    public function delete($noteid)
    {
        $this->db->delete('note', "`noteid` = '$noteid' AND `userid` = '{$_SESSION['userid']}'");
    }
}
