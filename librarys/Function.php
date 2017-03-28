<?php

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    require_once(__DIR__ . SP . 'Environment.php');
    require_once(__DIR__ . SP . 'Language.php');

    use Librarys\Environment;
    use Librarys\Language;

    function env($name, $default = null, $renew = false)
    {
        return Environment::env($name, $default, $renew);
    }

    /**
     * [lng Load value for key language]
     * @param  [string] $name [Key name language]
     * @return [string]       [Value for key language]
     */
    function lng($name)
    {
        $params = null;

        if (is_array($params) == false) {
            $nums   = func_num_args() - 1;

            if ($nums > 0 && $nums % 2 == 0) {
                $params = func_get_args();
                $params = array_splice($params, 1, $nums);
            }
        }

        return Language::lng($name, $params);
    }

    /**
     * [lngToJson List language to json]
     * @param  [array]  $argument... [List file language load]
     * @return [string] [Json array string]
     */
    function lngToJson()
    {
        if (is_array($load) == false) {
            $load = array();
            $nums = func_num_args();

            if ($nums > 0)
                $load = func_get_args();
        }

        return Language::lngToJson($load);
    }

    function separator($str, $separator = SP)
    {
        $str = str_replace('/',  $separator, $str);
        $str = str_replace('\\', $separator, $str);

        return $str;
    }

    function urlSeparatorMatches($str)
    {
        if (function_exists('filter_var')) {
            if (filter_var($str, FILTER_VALIDATE_URL))
                return separator($str, '/');
        } else if (preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $str)) {
            return separator($str, '/');
        }

        return $str;
    }

    function receiverIP()
    {
        $arrayIP = array();

        if (getenv('HTTP_X_FORWARDED_FOR') !== false) {
            $forwarded = getenv('HTTP_X_FORWARDED_FOR');
            $forwarded = array_reverse(explode(',', $forwarded));

            if (is_array($forwarded)) {
                foreach ($forwarded AS $entry) {
                    $entry = trim($entry);

                    if (isValidateIP($entry))
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
            if (isValidateIP($ip))
                return $ip;
        }

        return null;
    }

    function receiverUserAgent()
    {
        if (getenv('HTTP_USER_AGENT') !== false)
            return getenv('HTTP_USER_AGENT');

        return null;
    }

    function isValidateIP($ip)
    {
        if (preg_match('/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/', $ip) != false)
            return true;
        else if (preg_match('/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/', $ip) != false)
            return true;

        return false;
    }


    function bug($var)
    {
        echo('<pre>');
        var_dump($var);
        echo('</pre>');
    }

    function gotoURL($url)
    {
        header('Location:' . $url);
        exit(0);
    }

?>