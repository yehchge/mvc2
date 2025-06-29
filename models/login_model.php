<?php

class Login_Model extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function run()
    {
        $sth = $this->db->prepare('SELECT userid, login, role FROM mvc_user WHERE
				login = :login AND password = :password');
        $sth->execute([
            ':login' => $_POST['login'],
            ':password' => Hash::create('md5', $_POST['password'], HASH_PASSWORD_KEY),
        ]);
        $data = $sth->fetch();

        $count = $sth->rowCount();

        if ($count > 0) {
            // login
            Session::init();
            Session::set('role', $data['role']);
            Session::set('loggedIn', true);
            Session::set('userid', $data['userid']);

            $cookiehash = md5(sha1($data['login'].Misc::sGetIP()));

            if (isset($_POST['remember'])) {
                setcookie('username', $cookiehash, time() + 3600 * 24 * 365, '/');
            } else {
                setcookie('username', $cookiehash, 0, '/');
            }

            $postData = [
                'login_session' => $cookiehash,
            ];

            $this->db->update('mvc_user', $postData, "`userid` = '{$data['userid']}'");

            header('location: ../dashboard');
        } else {
            // show an error!
            header('location: ../login');
        }
    }
}
