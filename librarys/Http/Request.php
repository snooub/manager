<?php

    namespace Librarys\Http;

    class Request
    {

        const HTTP_CODE_OK           = 200;
        const HTTP_CODE_NOT_FOUND    = 404;
        const HTTP_CODE_SERVER_ERROR = 500;

        public static function session()
        {
            return Session::getInstance();
        }

        public static function ip()
        {
            $arrayIP = array();

            if (getenv('HTTP_X_FORWARDED_FOR') !== false) {
                $forwarded = getenv('HTTP_X_FORWARDED_FOR');
                $forwarded = array_reverse(explode(',', $forwarded));

                if (is_array($forwarded)) {
                    foreach ($forwarded AS $entry) {
                        $entry = trim($entry);
                        if (Validate::ip($entry))
                            $arrayIP[] = $entry;
                    }
                }
            }

            if (getenv('HTTP_CLIENT_IP') !== false)
                $arrayIP[] = trim(getenv('HTTP_CLIENT_IP'));

            if (getenv('HTTP_PROXY_USER') !== false)
                $arrayIp[] = trim(getenv('HTTP_PROXY_USER'));

            if (getenv('REMOTE_ADDR') !== false)
                $arrayIP[] = trim(getenv('REMOTE_ADDR'));

            foreach ($arrayIP AS $ip) {
                if (Validate::ip($ip))
                    return $ip;
            }

            return null;
        }

        public static function userAgent()
        {
            if (getenv('HTTP_USER_AGENT') !== false)
                return getenv('HTTP_USER_AGENT');

            return null;
        }

        public static function isLocal()
        {
            $host = env('SERVER.HTTP_HOST');
            $ip   = self::ip();

            if (preg_match('/(localhost|127\.0\.0\.1)(:8080)?/i', $host) || preg_match('/^127\.0\.0\.1$/', $ip))
                return true;
        }

        public static function redirect($url)
        {
            header('Location:' . $url);
            exit(255);
        }

    }