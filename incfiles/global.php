<?php

    if (defined('LOADED') == false)
        exit;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    if (defined('ROOT') == false)
        define('ROOT', '.');

    $directory = realpath(ROOT);

    require_once(
        $directory . SP .
        'librarys' . SP .
        'Boot.php'
    );

    $boot = new Librarys\Boot(
        require_once(
            $directory . SP .
            'assets'   . SP .
            'config'   . SP .
            'app.php'
        ),

        defined('ENABLE_CUSTOM_HEADER')
    );

    $appChecker      = new Librarys\App\AppChecker          ($boot);
    $appConfig       = new Librarys\App\Config\AppConfig    ($boot);
    $appUser         = new Librarys\App\AppUser             ($boot);
    $appAlert        = new Librarys\App\AppAlert            ($boot);
    $appDirectory    = new Librarys\App\AppDirectory        ($boot);
    $appMysqlConfig  = new Librarys\App\Mysql\AppMysqlConfig($boot);

    unset($directory);

    if ($appChecker->execute()->isAccept() == false) {
        if ($appChecker->isInstallDirectory() == false)
            trigger_error(lng('default.global.app_is_install_root'));
        else if ($appChecker->isDirectoryPermissionExecute() == false)
            trigger_error(lng('default.global.host_is_not_premission'));
        else if ($appChecker->isConfigValidate() == false)
            trigger_error(lng('default.global.config_app_not_found'));
        else
            trigger_error(lng('default.global.unknown_error_app'));

        exit(0);
    }

    // Get config system
    $appConfig->execute();
    $appUser->execute();

    // Get config user
    $appConfig->execute($appUser);
    $appConfig->requireEnvProtected(env('resource.config.manager_disabled'));

    if ($boot->getCFSRToken()->validatePost() !== true) {
        trigger_error(lng('default.global.cfsr_not_validate'));
        exit(0);
    }

    $appDirectory->execute();
    $appMysqlConfig->execute($appUser);

    Librarys\App\AppTmpClean::scanAutoClean($appConfig);

    if (defined('DISABLE_CHECK_LOGIN') == false) {
        if ($appUser->isLogin() == false)
            $appAlert->danger(lng('user.login.alert.not_login'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
        else if ($appUser->isUserBand())
            $appAlert->danger(lng('user.login.alert.user_is_band'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
    }

?>
