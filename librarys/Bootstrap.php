<?php

    namespace Librarys;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    if (defined('LOADED') == false)
        exit;

    require_once(__DIR__ . SP . 'Autoload.php');
    require_once(__DIR__ . SP . 'Boot.php');

    use Librarys\Boot;
    use Librarys\Autoload;

    class Bootstrap
    {

        public static function execute($configPath)
        {
            Autoload::getInstance()->execute();
            Boot::getInstance(require_once($configPath), defined('ENABLE_CUSTOM_HEADER'));
        }

    }
