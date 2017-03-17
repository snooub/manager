<?php

    namespace Librarys\App;

    use Librarys\Boot;

    final class AppUser
    {

        private $boot;

        private $id;
        private $token;

        private $isLogin;

        public function __construct(Boot $boot)
        {
            $this->boot = $boot;
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

    }

?>