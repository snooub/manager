<?php

    namespace Librarys\Error;

    class ErrorHandler
    {

        private static $errorLists = [
            'fatal' => [
                'mask'  => E_PARSE | E_ERROR | E_CORE_ERROR | E_COMPILE_ERROR | E_USER_ERROR,
                'label' => 'Fatal Error'
            ],

            'warning' => [
                'mask'  => E_WARNING | E_USER_WARNING | E_COMPILE_WARNING | E_RECOVERABLE_ERROR,
                'label' => 'Warning'
            ],

            'notice' => [
                'mask'  => E_NOTICE | E_USER_NOTICE,
                'label' => 'Notice'
            ],

            'strict' => [
                'mask'  => E_STRICT,
                'label' => 'Strict'
            ],

            'deprecated' => [
                'mask'  => E_DEPRECATED | E_USER_DEPRECATED,
                'label' => 'Deprecated'
            ]
        ];

        const EU_DISABLE    = 0;
        const EU_ALL        = E_ALL;
        const EU_WARNING    = E_WARNING | E_USER_WARNING | E_COMPILE_WARNING | E_RECOVERABLE_ERROR;
        const EU_FATAL      = E_PARSE | E_ERROR | E_CORE_ERROR | E_COMPILE_ERROR | E_USER_ERROR;
        const EU_DEPRECATED = E_DEPRECATED | E_USER_DEPRECATED;
        const EU_NOTICE     = E_NOTICE | E_USER_NOTICE;
        const EU_STRICT     = E_STRICT;

        private static $level = self::EU_ALL;

        public static function disError()
        {
            error_reporting(0);
            ini_set('error_reporting', 0);
        }

        public static function listenError($level = self::EU_ALL)
        {
            if ($level === self::EU_DISABLE)
                return;

            if (is_array(error_get_last()) == false)
                self::disError();

            self::$level = $level;
            self::handlerListen();
        }

        private static function handlerListen()
        {
            set_exception_handler(function($exception) {
                ErrorDisplay::putExceptions($exception);
                ErrorDisplay::display();
            });

            register_shutdown_function(function() {
                $errors = error_get_last();

                if (is_array($errors) == false)
                    return;

                $errorType    = intval($errors['type']);
                $errorMessage = trim($errors['message']);
                $errorFile    = trim($errors['file']);
                $errorLine    = intval($errors['line']);
                $errorLabel   = self::getLabelErrorCode($errorType);

                if ($errorLabel !== false) {
                    ErrorDisplay::putError($errorLabel, $errorType, $errorMessage, $errorFile, $errorLine);
                    ErrorDisplay::display();
                }
            });
        }

        public static function getLabelErrorCode($code)
        {
            foreach (self::$errorLists AS $keyerror => $arrays) {
                $mask  = intval($arrays['mask']);
                $label = trim($arrays['label']);

                if ((self::$level == self::EU_ALL || (self::$level & $mask) !== 0) && ($mask & $code) !== 0)
                    return $label;
            }

            return false;
        }

    }
