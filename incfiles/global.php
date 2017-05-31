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
        )
    );

    $appChecker      = new Librarys\App\AppChecker          ($boot);
    $appConfig       = new Librarys\App\AppConfig           ($boot);
    $appUser         = new Librarys\App\AppUser             ($boot);
    $appAlert        = new Librarys\App\AppAlert            ($boot);
    $appDirectory    = new Librarys\App\AppDirectory        ($boot);
    $appMysqlConfig  = new Librarys\App\Mysql\AppMysqlConfig($boot);

    unset($directory);

    if ($appChecker->execute()->isAccept() == false) {
        if ($appChecker->isInstallDirectory() == false)
            trigger_error('Bạn đang cài đặt ứng dụng trên thư mục gốc, hãy cài đặt vào một thư mục con.');
        else if ($appChecker->isDirectoryPermissionExecute() == false)
            trigger_error('Có vẻ host bạn cài ứng dụng không thể thực thi được, bạn vui lòng kiểm tra lại.');
        else if ($appChecker->isConfigValidate() == false)
            trigger_error('Cấu hình cho ứng dụng không tồn tại, bạn hãy xóa bỏ ứng dụng và cài lại thử xem.');
        else
            trigger_error('Không thể xác định lỗi, bạn hãy kiểm tra lại, hoặc cài lại ứng dụng');

        exit(0);
    }

    // Get config system
    $appConfig->execute();
    $appUser->execute();

    // Get config user
    $appConfig->execute($appUser);
    $appConfig->requireEnvProtected(env('resource.config.manager_disabled'));

    if ($boot->getCFSRToken()->validatePost() !== true) {
        trigger_error('CFSR Token không hợp lệ');
        exit(0);
    }

    $appDirectory->execute();
    $appMysqlConfig->execute($appUser);

    Librarys\App\AppTmpClean::scanAutoClean();

    if (defined('DISABLE_CHECK_LOGIN') == false) {
        if ($appUser->isLogin() == false)
            $appAlert->danger(lng('user.login.alert.not_login'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
        else if ($appUser->isUserBand())
            $appAlert->danger(lng('user.login.alert.user_is_band'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
    }

?>
