<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\CFSR\CFSRToken;
    use Librarys\Encryption\PasswordCrypt;
    use Librarys\App\Config\AppUserConfig;
    use Librarys\App\Config\AppUserTokenConfig;

    final class AppUser
    {

        private $boot;
        private $config;

        private $id;
        private $tokenValue;
        private $tokenUserAgent;
        private $tokenUserIp;
        private $tokenUserLive;
        private $isLogin;

        const POSITION_BAND        = 0;
        const POSITION_USER        = 2;
        const POSTION_ADMIN        = 4;
        const POSTION_ADMINSTRATOR = 8;

        const USERNAME_VALIDATE = '\\/:*?"<>|\'';

        const TOKEN_ARRAY_KEY_USER_AGENT = 'user_agent';
        const TOKEN_ARRAY_KEY_USER_IP    = 'ip';
        const TOKEN_ARRAY_KEY_USER_LIVE  = 'live';

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

            if ($this->checkUserLogin() == false)
                $this->exitSession();
            else
                $this->isLogin = true;
        }

        private function checkUserLogin()
        {
            global $appConfig;

            if (isset($_SESSION[env('app.login.session_login_name')]) == false || isset($_SESSION[env('app.login.session_token_name')]) == false)
                return false;

            $id     = addslashes($_SESSION[env('app.login.session_login_name')]);
            $token  = addslashes($_SESSION[env('app.login.session_token_name')]);
            $arrays = $this->config->getConfigArraySystem();

            if (is_array($arrays) == false || isset($arrays[$id]) == false)
                return false;

            $tokenDirectory = env('app.path.token');
            $tokenPath      = FileInfo::filterPaths($tokenDirectory . SP . $token);

            if (FileInfo::isTypeDirectory($tokenDirectory) == false || FileInfo::isTypeFile($tokenPath) == false)
                return false;

            $tokenBuffer = FileInfo::fileReadContents($tokenPath);
            $tokenArray  = @unserialize($tokenBuffer);

            if ($tokenArray === false)
                return false;

            $userAgent = takeUserAgent();
            $userIp    = takeIP();
            $userLive  = time();

            $this->id             = $id;
            $this->tokenValue     = $token;
            $this->tokenUserAgent = $tokenArray[self::TOKEN_ARRAY_KEY_USER_AGENT];
            $this->tokenUserIp    = $tokenArray[self::TOKEN_ARRAY_KEY_USER_IP];
            $this->tokenUserLive  = $tokenArray[self::TOKEN_ARRAY_KEY_USER_LIVE];

            if (strcmp($userAgent, $tokenArray[self::TOKEN_ARRAY_KEY_USER_AGENT]) !== 0)
                return false;

            if (strcmp($userIp, $tokenArray[self::TOKEN_ARRAY_KEY_USER_IP]) !== 0)
                return false;

            if ($userLive - intval($tokenArray[self::TOKEN_ARRAY_KEY_USER_LIVE]) >= $appConfig->get('login.time_login', 3600))
                return false;

            $tokenArray[self::TOKEN_ARRAY_KEY_USER_LIVE] = $userLive;
            $tokenBuffer                                 = @serialize($tokenArray);

            if ($tokenBuffer !== false)
                FileInfo::fileWriteContents($tokenPath, $tokenBuffer);

            return true;
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

        public function getTokenValue()
        {
            return $this->tokenValue;
        }

        public function getTokenUserAgent()
        {
            return $this->tokenUserAgent;
        }

        public function getTokenIP()
        {
            return $this->tokenUserIp;
        }

        public function getTokenLive()
        {
            return $this->tokenUserLive;
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

                foreach ($arrays AS $id => $arrayUser) {
                    if (strcasecmp($arrayUser[AppUserConfig::ARRAY_KEY_USERNAME], $username) === 0 || strcasecmp($arrayUser[AppUserConfig::ARRAY_KEY_EMAIL], $username) === 0) {
                        if (self::checkPassword($arrayUser[AppUserConfig::ARRAY_KEY_PASSWORD], $password))
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

        public function createSessionUser($id)
        {
            $id             = addslashes($id);
            $time           = time();
            $tokenPath      = null;
            $tokenGenerator = null;
            $tokenDirectory = env('app.path.token');

            if (FileInfo::isTypeDirectory($tokenDirectory) == false && FileInfo::mkdir($tokenDirectory, true) == false)
                return false;

            if (empty($id))
                return false;

            for ($i = 0; $i < 10; ++$i) {
                $tokenGenerator = CFSRToken::generator();
                $tokenPath      = FileInfo::filterPaths($tokenDirectory . SP . $tokenGenerator);

                if (FileInfo::fileExists($tokenPath) == false)
                    break;
            }

            $tokenArray = @serialize([
                self::TOKEN_ARRAY_KEY_USER_AGENT => takeUserAgent(),
                self::TOKEN_ARRAY_KEY_USER_IP    => takeIP(),
                self::TOKEN_ARRAY_KEY_USER_LIVE  => time()
            ]);

            if (FileInfo::fileWriteContents($tokenPath, $tokenArray));

            if ($this->config->setSystem($id . '.' . AppUserConfig::ARRAY_KEY_LOGIN_AT, $time) == false || $this->config->write() == false)
                return false;

            $this->boot->sessionInitializing();

            $_SESSION[env('app.login.session_login_name')] = $id;
            $_SESSION[env('app.login.session_token_name')] = $tokenGenerator;

            return true;
        }

        public static function isValidateUsername($username)
        {
            return @strpbrk($username, self::USERNAME_VALIDATE) == false;
        }

        public function exitSession()
        {
            if ($this->tokenValue !== null) {
                $tokenDirectory = env('app.path.token');
                $tokenPath      = FileInfo::filterPaths($tokenDirectory . SP . $this->tokenValue);

                if (FileInfo::isTypeFile($tokenPath))
                    FileInfo::unlink($tokenPath);
            }

            return @session_destroy();
        }

        public static function createPasswordCrypt($password, $salt = null)
        {
            return PasswordCrypt::createCrypt($password, $salt);
        }

        public static function checkPassword($passwordUser, $passwrodCheck)
        {
            return PasswordCrypt::hashEqualsPassword($passwordUser, $passwrodCheck);
        }
    }

?>