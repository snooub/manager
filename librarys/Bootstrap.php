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
    use Librarys\App\Config\AppAboutConfig;

    class Bootstrap
    {

        public static function execute($configPath, $cacheDirectory)
        {
            Autoload::getInstance()->execute();
            Boot::getInstance($configPath, $cacheDirectory, defined('ENABLE_CUSTOM_HEADER'));
            AppAboutConfig::updateBuildDev();
        }

    }
