<?php

    namespace Librarys\Encryption;

    if (defined('LOADED') == false)
        exit;

    class PasswordCrypt
    {

        public static function randomToken($length = 32)
        {
            if ($length == null || $length <= 0)
                $length = 32;

            $token = null;

            if (function_exists('random_bytes'))
                $token = random_bytes($length);
            else if (function_exists('mcrypt_create_iv'))
                $token = mcrypt_create_iv($length, MCRYPT_DEV_URANDOM);
            else if (function_exists('openssl_random_pseudo_bytes'))
                $token = openssl_random_pseudo_bytes($length);
            else
                return trigger_error('Not support random token');

            return bin2hex($token);
        }

        public static function randomSalt()
        {
            $token      = self::randomToken();
            $token      = hex2bin($token);
            $saltBuffer = base64_encode($token);
            $saltBuffer = strtr($saltBuffer, '+', '.');

            // $2y$ is the blowfish algorithm
            $saltBuffer = sprintf("$2y$%02d$", 10) . $saltBuffer;

            return $saltBuffer;
        }

        public static function createCrypt($password, $salt = null)
        {
            if ($salt == null)
                $salt = self::randomSalt();

            return @crypt($password, $salt);
        }

        public static function hashEqualsPassword($passwordSalt, $password)
        {
            $hashed = crypt($password, $passwordSalt);

            if (function_exists('hash_equals')) {
                return hash_equals($hashed, $passwordSalt);
            } else {
                if (strlen($hashed) != strlen($passwordSalt)) {
                    return false;
                } else {
                    $res = $passwordSalt ^ $hashed;
                    $ret = 0;

                    for ($i = strlen($res) - 1; $i >= 0; --$i)
                        $ret |= ord($res[$i]);

                    return $ret == false;
                }
            }

            return false;
        }

    }