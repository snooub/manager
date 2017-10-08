<?php

    use Librarys\App\AppAlert;
    use Librarys\App\Config\AppConfig;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    $autoload = AppConfig::getInstance()->getSystem('enable_disable.autoload', true);

    AppConfig::getInstance()->setSystem('enable_disable.autoload', $autoload == false);
    AppConfig::getInstance()->write(true);

    if ($autoload)
        AppAlert::info(lng('auto.alert.disable_autoload_success'), ALERT_INDEX, env('app.http.host'));
    else
        AppAlert::info(lng('auto.alert.enable_autoload_success'), ALERT_INDEX, env('app.http.host'));

?>