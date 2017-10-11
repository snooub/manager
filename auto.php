<?php

    use Librarys\App\AppAlert;
    use Librarys\App\Config\AppConfig;
    use Librarys\Http\Request;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    $autoload    = AppConfig::getInstance()->getSystem('enable_disable.autoload');
    $httpReferer = env('app.http.host');

    if (isset($_GET['referer']))
        $httpReferer = trim($_GET['referer']);
    else if (isset($_SERVER['HTTP_REFERER']))
        $httpReferer = trim($_SERVER['HTTP_REFERER']);

    if (isset($_GET['referer']))
        Request::redirect($httpReferer);

    AppConfig::getInstance()->setSystem('enable_disable.autoload', $autoload == false);
    AppConfig::getInstance()->write(true);

    $httpReferer = 'auto.php?referer=' . $httpReferer;

    if ($autoload)
        AppAlert::info(lng('auto.alert.disable_autoload_success'), ALERT_INDEX, $httpReferer);
    else
        AppAlert::info(lng('auto.alert.enable_autoload_success'), ALERT_INDEX, $httpReferer);

?>