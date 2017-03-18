<?php

    namespace Librarys\App;

    use Librarys\Boot;

    final class AppUser
    {

        private $boot;
        private $db;

        private $id;
        private $token;

        private $isLogin;

        const KEY_USERNAME = 'username';
        const KEY_PASSWORD = 'password';
        const KEY_POSITION = 'position';

        const KEY_TIME_CREATE = 'time_create';
        const KEY_TIME_MODIFY = 'time_modify';
        const KEY_TIME_LOGIN  = 'time_login';

        const POSITION_BAN         = 0;
        const POSITION_USER        = 1;
        const POSTION_ADMIN        = 2;
        const POSTION_ADMINSTRATOR = 4;

        public function __construct(Boot $boot, $db)
        {
            $this->boot = $boot;
            $this->parse($db);
        }

        public function execute()
        {
            if (isset($_SESSION[env('app.login.session_login_name')]) && isset($_SESSION[env('app.login.session_token_name')])) {
                $id    = intval($_SESSION[env('app.login.session_login_name')]);
                $token = addslashes($_SESSION[env('app.login.session_token_name')]);

                $this->isLogin = true;
            } else {
                $this->isLogin = false;
            }
        }

        public function getID()
        {
            return $this->id;
        }

        public function getToken()
        {
            return $this->token;
        }

        public function isLogin()
        {
            return $this->isLogin;
        }

        public function parse($db)
        {
            if (is_null($db))
                return;

            if (is_array($db))
                $this->db = $db;
            else if (is_file($db))
                $this->db = require_once($db);
            else if (is_null($db) == false)
                $this->db = json_decode($db, true);
            else
                $this->db = array();
        }

        public function isUser($username, $password, $passwordEncode = true)
        {
            if (is_array($this->db) && count($this->db) > 0) {
                $username = strtolower($username);

                if ($passwordEncode)
                    $password = self::passwordEncode($password);

                foreach ($this->db AS $id => $user) {
                    if ($username == strtolower($user[self::KEY_USERNAME]) && $password == $user[self::KEY_PASSWORD])
                        return $user;
                }
            }

            return false;
        }

        public static function passwordEncode($password)
        {
            return md5(md5(base64_encode($password)));
        }

    }

?>