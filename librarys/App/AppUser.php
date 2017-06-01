<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\CFSR\CFSRToken;
    use Librarys\App\Config\AppUserConfig;
    use Librarys\App\Config\AppUserConfigWrite;

    final class AppUser
    {

        private $boot;
        private $config;
        private $configWrite;

        private $id;
        private $tokenTime;
        private $tokenValue;
        private $isLogin;

        const POSITION_BAND        = 0;
        const POSITION_USER        = 2;
        const POSTION_ADMIN        = 4;
        const POSTION_ADMINSTRATOR = 8;

        const USERNAME_VALIDATE = '\\/:*?"<>|\'';

        public function __construct(Boot $boot)
        {
            $this->boot        = $boot;
            $this->config      = new AppUserConfig($boot);
            $this->configWrite = new AppUserConfigWrite($this->config);

            $this->cleanToken();
        }

        public function cleanToken()
        {
            global $appConfig;

            $arrays = $this->config->getConfigArraySystem();

            if (is_array($arrays) && count($arrays) > 0) {
                $isWrite   = false;
                $timeNow   = time();
                $timeLogin = intval($appConfig->get('login.time_login', 86400));

                if ($timeLogin <= 0)
                    $timeLogin = 86400;

                // foreach ($arrays AS $id => $arrayUser) {
                //     if (is_array($arrayUser) && isset($arrayUser[AppUserConfig::ARRAY_KEY_TOKENS]) && is_array($arrayUser[AppUserConfig::ARRAY_KEY_TOKENS])) {
                //         $tokens = $arrayUser[AppUserConfig::ARRAY_KEY_TOKENS];

                //         foreach ($tokens AS $time => $token) {
                //             if ($timeNow - intval($time) >= $timeLogin) {
                //                 $this->config->removeSystem($id . '.' . AppUserConfig::ARRAY_KEY_TOKENS . '.' . $time);
                //                 $isWrite = true;
                //             }
                //         }
                //     }
                // }

                // if ($isWrite)
                //     $this->configWrite->write();
            }
        }

        public function execute()
        {
            $this->isLogin = false;

            if (
                isset($_SESSION[env('app.login.session_login_name')])      == false ||
                isset($_SESSION[env('app.login.session_token_name')])      == false
//                isset($_SESSION[env('app.login.session_token_time_name')]) == false
            ) {
                return;
            }

            $id         = addslashes($_SESSION[env('app.login.session_login_name')]);
            $tokenValue = addslashes($_SESSION[env('app.login.session_token_name')]);
//            $tokenTime  = addslashes($_SESSION[env('app.login.session_token_time_name')]);
            $tokens     = $this->config->get($id . '.' . AppUserConfig::ARRAY_KEY_TOKENS);

            if (is_array($tokens) && isset($tokens[$tokenValue])) {
                $this->id         = $id;
                $this->tokenValue = $tokenValue;
//                $this->tokenTime  = $tokenTime;
                $this->isLogin    = true;

//                $this->config->setSystem($this->id . '.' . AppUserConfig::ARRAY_KEY_TOKENS . '.' . $this->tokenTime, $tokenValue);
            } else {
                $this->exitSession();
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
            if ($this->configWrite->write() == false)
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
            $token = substr($token, strlen($token) >> 1);
            $time  = time();

            if (empty($id))
                return false;

            if ($this->config->setSystem($id . '.' . AppUserConfig::ARRAY_KEY_TOKENS . '.' . $token, (string)$time) == false)
                return false;

            if ($this->config->setSystem($id . '.' . AppUserConfig::ARRAY_KEY_LOGIN_AT, $time) == false)
                    return false;

            if ($this->configWrite->write() == false)
                return false;

            $this->boot->sessionInitializing();

            $_SESSION[env('app.login.session_login_name')] = $id;
            $_SESSION[env('app.login.session_token_name')] = $token;

            return true;
        }

        public static function isValidateUsername($username)
        {
            return @strpbrk($username, self::USERNAME_VALIDATE) == false;
        }

        public function exitSession()
        {
            if ($this->id != null && $this->config->removeSystem($this->id . '.' . AppUserConfig::ARRAY_KEY_TOKENS . '.' . $this->tokenValue));
                $this->configWrite->write();

            return @session_destroy();
        }

        public static function passwordEncode($password)
        {
            return md5(md5(base64_encode($password)));
        }

    }

?>