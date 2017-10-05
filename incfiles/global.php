<?php

    $memoryUsageBegin = @memory_get_usage();

    if (defined('LOADED') == false)
        exit;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    if (defined('ROOT') == false)
        define('ROOT', '.');

    define('PARAMETER_CHECK_CHANGE_CONFIG_URL', 'check_change_config');

    use Librarys\App\AppJson;
    use Librarys\App\AppUser;
    use Librarys\App\AppAlert;
    use Librarys\App\AppClean;
    use Librarys\App\AppChecker;
    use Librarys\App\AppDirectory;
    use Librarys\App\Config\AppConfig;
    use Librarys\App\Config\AppUserConfig;
    use Librarys\App\Mysql\AppMysqlConfig;
    use Librarys\Http\Request;
    use Librarys\Http\Validate;
    use Librarys\Http\Secure\CFSRToken;
    use Librarys\Exception\RuntimeException;

    $directory = realpath(ROOT);

    require_once(
        $directory . SP .
        'librarys' . SP .
        'Bootstrap.php'
    );

    Librarys\Bootstrap::execute($directory . SP . 'assets' . SP . 'config' . SP . 'app.php');
    Librarys\App\Config\AppAboutConfig::updateBuildDev();

    if (Validate::ip(($ip = Request::ip())) == false)
        throw new RuntimeException(lng('default.global.ip_not_validate', 'ip', $ip));

    unset($directory);

    if (AppChecker::getInstance()->execute()->isAccept() == false) {
        if (AppChecker::getInstance()->isInstallDirectory() == false)
            throw new RuntimeException(lng('default.global.app_is_install_root'));
        else if (AppChecker::getInstance()->isDirectoryPermissionExecute() == false)
            throw new RuntimeException(lng('default.global.host_is_not_premission'));
        else if (AppChecker::getInstance()->isConfigValidate() == false)
            throw new RuntimeException(lng('default.global.config_app_not_found'));
        else
            throw new RuntimeException(lng('default.global.unknown_error_app'));
    }

    if (Request::isDesktop(false))
        requireDefine('desktop');

    // Get config system
    AppConfig::getInstance()->execute();
    AppUser::getInstance()->execute();
    AppAlert::getInstance()->execute();

    // Get config user
    AppConfig::getInstance()->execute(AppUser::getInstance());
    AppConfig::getInstance()->requireEnvProtected(env('resource.config.manager_dis'));

    if (CFSRToken::getInstance()->validatePost() !== true)
        throw new RuntimeException(lng('default.global.cfsr_not_validate'));

    AppDirectory::getInstance()->execute();
    AppMysqlConfig::getInstance()->execute(AppUser::getInstance());

    $httpHostApp    = env('app.http.host');
    $httpHostConfig = AppConfig::getInstance()->get('http_host');

    if (strcmp($httpHostApp, $httpHostConfig) !== 0) {
        if (AppConfig::getInstance()->setSystem('http_host', $httpHostApp) == false || AppConfig::getInstance()->write(true) == false)
            throw new RuntimeException(lng('default.global.change_config_failed'));

        if (isset($_GET[PARAMETER_CHECK_CHANGE_CONFIG_URL]))
            throw new RuntimeException(lng('default.global.change_config_failed'));

        if (AppClean::scanAutoClean(true))
            Request::redirect($httpHostApp . '?' . PARAMETER_CHECK_CHANGE_CONFIG_URL);
    } else {
        AppClean::scanAutoClean();

        if (isset($_GET[PARAMETER_CHECK_CHANGE_CONFIG_URL]))
            AppAlert::success(lng('default.global.change_config_success'), AppUser::getInstance()->isLogin() ? ALERT_INDEX : ALERT_USER_LOGIN, $httpHostApp);
    }

    if (AppUserConfig::getInstance()->hasEntryConfigArraySystem() == false) {
        $idAlert = ALERT_USER_LOGIN;
        $urlGoto = $httpHostApp . '/user/login.php';

        if (AppUser::getInstance()->createFirstUser())
            AppAlert::success(lng('default.global.create_first_user_success', 'username', AppUser::USERNAME_CREATE_FIRST, 'password', AppUser::PASSWORD_CREATE_FIRST), $idAlert, $urlGoto);
        else
            AppAlert::danger(lng('default.global.create_first_user_failed'), $idAlert, $urlGoto);
    }

    if (defined('DISABLE_CHECK_LOGIN') == false) {
        $isLogin = false;

        if (AppUser::getInstance()->isLogin() == false)
            AppAlert::danger(lng('user.login.alert.not_login'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
        else if (AppUser::getInstance()->isUserBand())
            AppAlert::danger(lng('user.login.alert.user_is_band'), ALERT_USER_LOGIN, env('app.http.host') . '/user/login.php');
        else
            $isLogin = true;

        if (Request::isDesktop(false)) {
            if ($isLogin == false)
                AppJson::getInstance()->setResponseCodeSystem(DESKTOP_CODE_IS_NOT_LOGIN);

            AppJson::getInstance()->setResponseDataSystem([
                'is_login' => $isLogin
            ]);
        }
    }

    if (defined('INDEX') == false && Request::isDesktop(false)) {
        if (Request::isMethodPost() == false)
            Request::redirect(env('app.http.host'));
    }

    unset($httpHostApp);
    unset($httpHostConfig);

?>
