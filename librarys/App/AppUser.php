<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\CFSR\CFSRToken;
    use Librarys\App\Config\AppUserConfig;
    use Librarys\App\Config\AppUserTokenConfig;

    final class AppUser
    {

        private $boot;
        private $config;
        private $tokenConfig;

        private $id;
        private $timeToken;
        private $tokenValue;
        private $isLogin;

        const POSITION_BAND        = 0;
        const POSITION_USER        = 2;
        const POSTION_ADMIN        = 4;
        const POSTION_ADMINSTRATOR = 8;

        const USERNAME_VALIDATE = '\\/:*?"<>|\'';

        public function __construct(Boot $boot)
        {
            $this->boot   = $boot;
            $this->config = new AppUserConfig($boot);

            $this->cleanToken();
        }

        public function cleanToken()
        {
            global $appConfig;
        }

        public function execute()
        {
            $this->isLogin = false;

            if (isset($_SESSION[env('app.login.session_login_name')]) == false || isset($_SESSION[env('app.login.session_token_name')]) == false)
                return;

            $id     = addslashes($_SESSION[env('app.login.session_login_name')]);
            $token  = addslashes($_SESSION[env('app.login.session_token_name')]);
            $arrays = $this->config->getConfigArraySystem();

            if (is_array($arrays) && isset($arrays[$id])) {
                $tokenConfig = new AppUserTokenConfig($this->boot, $id);

                if ($tokenConfig->hasKey($token)) {
                    $this->id      = $id;
                    $this->token   = $token;
                    $this->isLogin = true;
                }
            } else {

            }
        }

        public function get($key)
        {
            if ($this->isLogin() == false)
                return null;

            return $this->config->get($this->id . '.' . $key);
        }

        public function setConfig($key, $value)
        {
            if ($this->isLogin() == false)
                return false;

            return $this->config->setSystem($this->id . '.' . $key, $value);
        }

        public function writeConfig($exitUser = false)
        {
            if ($this->config->write() == false)
                return false;

            if ($exitUser)
                $this->exitSession();

            return true;
        }

        public function getId()
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

        public function isUser($username, $password, $passwordEncode = true)
        {
            $arrays = $this->config->getConfigArraySystem();

            if (is_array($arrays) && count($arrays) > 0) {
                $username = strtolower($username);

                if ($passwordEncode)
                    $password = self::passwordEncode($password);

                foreach ($arrays AS $id => $arrayUser) {
                    if (strcasecmp($arrayUser[AppUserConfig::ARRAY_KEY_USERNAME], $username) === 0 || strcasecmp($arrayUser[AppUserConfig::ARRAY_KEY_EMAIL], $username) === 0) {
                        if (strcmp($arrayUser[AppUserConfig::ARRAY_KEY_PASSWORD], $password) === 0)
                            return $id;
                    }
                }
            }

            return false;
        }

        public function isUserBand($id = null, $exitUser = true)
        {
            if ($id == null)
                $id = $this->id;

            if ($id == null || empty($id))
                return false;

            $position = $this->config->get($id . '.' . AppUserConfig::ARRAY_KEY_POSITION, false);

            if ($position === false || $position === 0) {
                if ($exitUser)
                    $this->exitSession();

                return true;
            }

            return false;
        }

        public function createSessionUser($id, $token = null)
        {
            if ($token == null)
                $token = CFSRToken::generator();

            $id    = addslashes($id);
            $token = addslashes($token);
            $time  = time();

            if (empty($id))
                return false;

            if ($this->config->setSystem($id . '.' . AppUserConfig::ARRAY_KEY_LOGIN_AT, $time) == false)
                    return false;

            if ($this->config->write() == false)
                return false;

            $appToken = new AppUserTokenConfig($this->boot, $id);

            if ($appToken->set($token, $time) == false)
                return false;

            if ($appToken->write() == false)
                return false;

            $this->boot->sessionInitializing();

            $_SESSION[env('app.login.session_login_name')] = $id;
            $_SESSION[env('app.login.session_token_name')] = $token;

            $this->execute();

            return true;
        }

        public static function isValidateUsername($username)
        {
            return @strpbrk($username, self::USERNAME_VALIDATE) == false;
        }

        public function exitSession()
        {
            return @session_destroy();
        }

        public static function passwordEncode($password)
        {
            return md5(md5(base64_encode($password)));
        }

    }

?>