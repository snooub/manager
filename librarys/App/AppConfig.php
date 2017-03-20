<?php

    namespace Librarys\App;

    use Librarys\Boot;

    final class AppConfig
    {

        private $boot;
        private $config;
        private $cache;

        public function __construct(Boot $boot, $config = null)
        {
            $this->boot   = $boot;
            $this->cache  = array();
            $this->parse($config);
        }

        public function execute()
        {

        }

        public function parse($config)
        {
            if (is_null($config))
                return;

            if (is_array($config))
                $this->config = $config;
            else if (is_file($config))
                $this->config = require_once($config);
            else if (is_null($config) == false)
                $this->config = json_decode($config, true);
            else
                $this->config = array();
        }

        public function get($name, $default = null)
        {
            if (array_key_exists($name, $this->cache))
                return $this->cache[$name];

            return ($this->cache[$name] = urlSeparatorMatches($this->receiver($name, $default)));
        }

        private function receiver($key, $default = null, $array = null)
        {
            if (is_string($key) && empty($key) == false) {
                if ($array == null)
                    $array = $this->config;

                $keys  = explode('.', $key);

                if (is_array($keys) == false)
                    $keys = array($key);

                foreach ($keys AS $entry) {
                    $entry = trim($entry);

                    if (array_key_exists($entry, $array) == false)
                        return $default;

                    $array = $array[$entry];
                }

                return $this->envMatchesString($array);
            }

            return $default;
        }

        public function envMatchesString($str)
        {
            if (is_array($str) || preg_match('/\$\{(.+?)\}/si', $str, $matches) == false)
                return $str;

            return preg_replace_callback('/\$\{(.+?)\}/si', function($matches) {
                $result = null;

                if (isset($GLOBALS[$matches[1]]))
                    $result = $GLOBALS[$matches[1]];
                else if (defined($matches[1]))
                    $result = constant($matches[1]);
                else
                    $result = env(trim($matches[1]));

                if (is_array($result))
                    return 'Array';
                else if (is_object($result))
                    return 'Object';
                else if (is_resource($result))
                    return 'Resource';

                return $result;
            }, $str);
        }

    }

?>