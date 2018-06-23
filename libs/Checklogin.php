<?php

class Checklogin
{
    public static function CheckCookieLogin()
    {
        $login = isset($_COOKIE['username'])?trim($_COOKIE['username']):'';
        if ($login) {
            $oDB = new Database(DB_TYPE, DB_HOST, DB_NAME, DB_USER, DB_PASS);
            $sth = $oDB->prepare("SELECT userid, login, role FROM user WHERE
                    login_session = :login");
            $sth->execute(array(
                ':login' => $login
            ));
            $data = $sth->fetch();

            $count = $sth->rowCount();

            if ($count > 0) {
                // login
                Session::init();
                Session::set('role', $data['role']);
                Session::set('loggedIn', true);
                Session::set('userid', $data['userid']);
            }
        }
    }
}
