<?php

    namespace Librarys;

    use Librarys\Environment;

    final class Language
    {

        private $boot;
        private $lang;
        private $cache;

        private static $instance;

        public function __construct(Boot $boot)
        {
            $this->boot  = $boot;
            $this->lang  = array();
            $this->cache = array();

            self::$instance = $this;
        }

        public function execute()
        {

        }

        public static function lng($name, $params = array())
        {
            if (self::$instance instanceof Language == false)
                return null;

            if ($name == null || empty($name))
                trigger_error('Name is null');

            if (preg_match('/^([a-zA-Z0-9_]+)\.(.+?)$/si', $name, $matches)) {
                if ($matches[2] == null || empty($matches[2]))
                    return null;

                $matches[2] = trim($matches[2]);

                if (array_key_exists($name, self::$instance->cache))
                    return self::$instance->cache[$name];

                $filepath = null;
                $keys     = explode('.', $matches[2]);
                $array    = self::load($matches[1], $filepath);

                if (is_array($keys) == false)
                    $keys = array($key);

                foreach ($keys AS $entry) {
                    $entry = trim($entry);

                    if (array_key_exists($entry, $array) == false)
                        return trigger_error('Key "' . $name . '" not found in language "' . $filepath . '"');

                    $array = $array[$entry];
                }

                if (is_array($array))
                    return (self::$instance->cache[$name] = 'Array');
                else if (is_object($array))
                    return (self::$instance->cache[$name] = 'Object');
                else if (is_resource($array))
                    return (self::$instance->cache[$name] = 'Resource');

                $array = Environment::envMatchesString($array);
                $array = Language::langMatchesString($array);

                if (is_array($params) && count($params) > 0) {
                    $count = count($params);

                    if ($count % 2 == 0) {
                        for ($i = 0; $i < $count; $i += 2) {
                            $key   = $i;
                            $value = null;

                            if (isset($params[$i]))
                                $key = $params[$i];

                            if (isset($params[$i + 1]))
                                $value = $params[$i + 1];

                            $array = str_replace('{$' . $key . '}', $value, $array);
                        }
                    }

                    return $array;
                }

                return (self::$instance->cache[$name] = $array);
            }

            return trigger_error('Key "' . $name . '" not found in language "' . $filepath . '"');
        }

        public static function lngToJson(array $args = null)
        {
            if (self::$instance instanceof Language == false)
                return json_encode([]);

            if (is_array($args)) {
                foreach ($args AS $lang)
                    self::load($lang);
            }

            return self::$instance->toJson();
        }

        public static function load($filename, &$filepath = null, $loadRequire = true)
        {
            $languagePath   = env('app.language.path');
            $languageMime   = env('app.language.mime');
            $languageLocale = env('app.language.locale', 'en');
            $languageKey    = $languageLocale . '.' . $filename;
            $languageArray  = array();

            if (array_key_exists($languageKey, self::$instance->lang)) {
                $languageArray = self::$instance->lang[$languageKey];
            } else {
                $languageFile = $filepath = $languagePath . SP . $languageLocale . SP . $filename . $languageMime;

                if (is_file($languageFile) == false && $languageLocale != 'en') {
                    $languageFileDefault = $languagePath . SP . 'en' . SP . $filename . $languageMime;
                    $languageKeyDefault  = 'en' . '.' . $filename;

                    if (array_key_exists($languageKeyDefault, self::$instance->lang))
                        $languageArray = self::$instance->lang[$languageKeyDefault];
                    else if (is_file($languageFileDefault) == false)
                        trigger_error('File language "' . $languageFile . '" not found');
                    else
                        self::$instance->lang[$languageKeyDefault] = ($languageArray = require_once($languageFileDefault));
                } else {
                    self::$instance->lang[$languageKey] = ($languageArray = require_once($languageFile));
                }
            }

            if ($loadRequire && is_array($languageArray))
                return self::loadRequire($languageArray);

            return $languageArray;
        }

        private static function loadRequire(array &$array)
        {
            if (is_array($array) == false)
                return $array;

            foreach ($array AS &$value) {
                if (is_array($value))
                    self::loadRequire($value);
                else if (preg_match_all('/\#\{([a-zA-Z0-9_]+)\.(.+?)\}/si', $value, $matches))
                    self::load($matches[1][0], $filepath, false);
            }

            return $array;
        }

        protected static function langMatchesString($str, $params = null)
        {
            if (is_array($str) || (preg_match('/\#\{(.+?)\}/si', $str) == false && preg_match('/lng\{(.+?)\}/si', $str, $matches) == false))
                return $str;

            $GLOBALS['langMatchesString$Params'] = $params;

            $str = preg_replace_callback('/\#\{(.+?)\}/si', function($matches) {
                return lng(trim($matches[1]), $GLOBALS['langMatchesString$Params']);
            }, $str);

            $str = preg_replace_callback('/lng\{(.+?)\}/si', function($matches) {
                return lng(trim($matches[1]), $GLOBALS['langMatchesString$Params']);
            }, $str);

            return $str;
        }

        public static function toJson()
        {
            return json_encode(self::$instance->lang);
        }

    }

?>
