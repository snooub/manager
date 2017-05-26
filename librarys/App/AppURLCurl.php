<?php

    namespace Librarys\App;

    final class AppURLCurl
    {

        private $url;
        private $ref;
        private $cookie;
        private $userAgent;
        private $header;
        private $timeout;
        private $autoRedirect;
        private $httpCode;
        private $msgError;
        private $errorInt;
        private $buffer;

        const USER_AGENT_DEFAULT = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36';
        const TIME_OUT_DEFAULT   = 5;
        const AUTO_REDIRECT_AUTO = true;

        const ERROR_NONE          = 0;
        const ERROR_URL_NOT_FOUND = 1;
        const ERROR_NOT_FOUND     = 2;
        const ERROR_AUTO_REDIRECT = 3;

        public function __construct($url)
        {
            $this->setURL($url);
            $this->setTimeout(self::TIME_OUT_DEFAULT);
            $this->setAutoRedirect(self::AUTO_REDIRECT_AUTO);
        }

        public function setURL($url)
        {
            $this->url = $url;
        }

        public function getURL()
        {
            return $url;
        }

        public function setRef($ref)
        {
            $this->ref = $ref;
        }

        public function getRef()
        {
            return $this->ref;
        }

        public function setCookie($cookie)
        {
            $this->cookie = $cookie;
        }

        public function getCookie($cookie)
        {
            return $this->cookie;
        }

        public function setUserAgent($userAgent)
        {
            $this->userAgent = $userAgent;
        }

        public function getUserAgent()
        {
            return $this->userAgent;
        }

        public function setHeader($header)
        {
            $this->header = $header;
        }

        public function getHeader()
        {
            return $this->header;
        }

        public function setTimeout($timeout)
        {
            $this->timeout = $timeout;
        }

        public function getTimeout()
        {
            return $this->timeout;
        }

        public function setAutoRedirect($autoRedirect)
        {
            $this->autoRedirect = $autoRedirect;
        }

        public function getAutoRedirect()
        {
            return $this->autoRedirect;
        }

        public function curl()
        {
            //if (function_exists('curl_init'))
                //return $this->useCurl();
            //else
                return $this->useFsock();
        }

        private function useCurl()
        {
            $curl = curl_init();

            $headers[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
            $headers[] = 'Accept-Language: en-us,en;q=0.5';
            $headers[] = 'Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7';
            $headers[] = 'Keep-Alive: 300';
            $headers[] = 'Connection: Keep-Alive';
            $headers[] = 'Content-type: application/x-www-form-urlencoded;charset=UTF-8';

            curl_setopt($curl, CURLOPT_URL, $this->url);

            if ($this->userAgent)
                curl_setopt($curl, CURLOPT_USERAGENT, $this->userAgent);
            else
                curl_setopt($curl, CURLOPT_USERAGENT, self::USER_AGENT_DEFAULT);

            if ($this->header)
                curl_setopt($curl, CURLOPT_HEADER, 1);
            else
                curl_setopt($curl, CURLOPT_HEADER, 0);

            curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);

            if ($this->ref)
                curl_setopt($curl, CURLOPT_REFERER, $this->ref);
            else
                curl_setopt($curl, CURLOPT_REFERER, 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N');

            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

            if (strncmp($this->url, 'https', 6))
                curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);

            if ($this->cookie)
                curl_setopt($curl, CURLOPT_COOKIE, $this->cookie);

            curl_setopt($curl, CURLOPT_TIMEOUT, $this->timeout);
            curl_setopt($curl, CURLOPT_FOLLOWLOCATION, $this->autoRedirect);

            $this->msgError = curl_error($curl);
            $this->httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
            $this->errorInt = self::ERROR_NONE;

            if ($this->httpCode === 0)
                $this->errorInt = self::ERROR_URL_NOT_FOUND;
            else if ($this->httpCode === 404)
                $this->errorInt = self::ERROR_NOT_FOUND;
            else if ($this->httpCode === 200)
                $this->buffer = curl_exec($curl);

            curl_close($curl);

            if ($this->errorInt == self::ERROR_NONE)
                return true;
        }

        private function useFsock()
        {
            $matches = parse_url($this->url);
bug($matches);
            if (isset($matches['path']) == false)
                $matches['path'] = $this->url;

            if (isset($matches['host']) == false) {
                $path = $matches['path'];
                $pos  = strpos($path, '/');

                if ($pos !== false && $pos !== 0) {
                    $matches['host'] = substr($path, 0, $pos);
                    $matches['path'] = '/' . baseNameURL($path);
                } else {
                    $matches['host'] = $path;
                }
            }

            $matches['ssl'] = null;

            if (isset($matches['scheme']) && strncmp($this->url, 'https', 6)) {
                $matches['port'] = 443;
                $matches['ssl']  = 'ssl://';
            }

            $host = $matches['host'];
            $path = isset($matches['path']) ? $matches['path'] : '/';
            $link = $path . (isset($matches['query']) ? '?' . $matches['query'] : '') . (isset($matches['fragment']) ? '#' . $matches['fragment'] : '');
            $port = !empty($matches['port']) ? $matches['port'] : 80;
            $fp   = @fsockopen($matches['ssl'] . $host, $port, $errno, $errval, $this->timeout);

            $this->errorInt = self::ERROR_NONE;

            if (!$fp) {
                $this->buffer = "$errval ($errno)<br />\n";
            } else {
                $ref = $this->ref;

                if ($this->ref == null)
                    $ref = 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N';

                $randIP = rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254);
                $out    = "GET $link HTTP/1.1\r\n" .
                          "Host: $host\r\n" .
                          "Referer: $ref\r\n" .
                          "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";

                if ($this->cookie != null)
                    $out .= "Cookie: $cookie\r\n";

                if ($this->userAgent != null)
                    $out .= "User-Agent: " . $this->userAgent . "\r\n";
                else
                    $out .= "User-Agent: " . self::USER_AGENT_DEFAULT . "\r\n";

                $out .= "X-Forwarded-For: $randIP\r\n".
                        "Via: CB-Prx\r\n" .
                        "Cache-Control: private\r\n" .
                        "Connection: Close\r\n\r\n";

                fwrite($fp, $out);

                while (!feof($fp))
                    $this->buffer .= fgets($fp, 4096);

                if (@preg_match("/^HTTP\/\d\.\d[[:space:]]+([0-9]+).*?(?:\r\n|\r|\n)+/is", $this->buffer, $matches) != false) {
                    $this->httpCode = intval($matches[1]);
bug($this->httpCode);
bug($out);
                    if ($this->httpCode === 0) {
                        $this->errorInt = self::ERROR_URL_NOT_FOUND;
                    } else if ($this->httpCode === 404) {
                        $this->errorInt = self::ERROR_NOT_FOUND;
                    } else if ($this->httpCode === 200) {
                        if (($splits = preg_split("/(\r\n\r\n)+([a-zA-Z0-9]+\r\n)*/si", $this->buffer, 2)) != false && isset($splits[1]))
                            $this->buffer = $splits[1];

                        return true;
                    } else if (($this->httpCode === 301 || $this->httpCode === 302) && $this->autoRedirect) {
                        $location = null;

                        if (preg_match("/(?:\r\n|\r|\n)+Location:[[:space:]]+(.+?)(?:\r\n|\r|\n)+/si", $this->buffer, $locations) != false)
                            $location = trim($locations[1]);

                        if ($location == null)
                            return false;

                        if (strcmp($this->url, $this->ref) !== 0) {
                            @fclose($fp);

                            $this->ref = $this->url;
                            $this->url = $location;

                            if ($this->curl() == false)
                                return false;
                        } else {
                            $this->errorInt = self::ERROR_AUTO_REDIRECT;

                            return false;
                        }
                    }

                }

                @fclose($fp);
            }

            return false;
        }

    }

?>