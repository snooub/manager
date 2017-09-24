<?php

    use Librarys\Language;
    use Librarys\App\AppAssets;
    use Librarys\App\AppDirectory;
    use Librarys\File\FileInfo;
    use Librarys\Http\Request;
    use Librarys\Http\Secure\CFSRToken;

    define('LOADED',               1);
    define('INDEX',                1);
    define('DISABLE_CHECK_LOGIN',  1);
    define('ENABLE_CUSTOM_HEADER', 1);

    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');
    requireDefine('asset');

    if (CFSRToken::getInstance()->validateGet() !== true)
        die(lng('default.global.cfsr_token_not_validate'));

    if (
            isset($_GET[ASSET_PARAMETER_THEME_URL]) && empty($_GET[ASSET_PARAMETER_THEME_URL]) == false &&
            isset($_GET[ASSET_PARAMETER_CSS_URL])   && empty($_GET[ASSET_PARAMETER_CSS_URL]) == false
    ) {
        $themeDirectory = AppDirectory::rawDecode(addslashes(trim($_GET[ASSET_PARAMETER_THEME_URL])));
        $themeFile      = AppDirectory::rawDecode(addslashes(trim($_GET[ASSET_PARAMETER_CSS_URL])));
        $themePath      = env('app.path.theme');

        $themePath = FileInfo::filterPaths($themePath . SP . $themeDirectory);

        if (FileInfo::isTypeDirectory($themePath) == false)
            die(lng('default.resource.directory_not_found'));

        header('Content-Type: text/css');

        $themeFilename = $themeFile . '.css';
        $themeFilepath = FileInfo::filterPaths($themePath . SP . $themeFilename);
        $appAssets     = new AppAssets($themePath, $themeFilename);

        if ($appAssets->loadCss())
            $appAssets->display();
        else
            die(lng('default.resource.file_not_found'));
    } else if (isset($_GET[ASSET_PARAMETER_JS_URL]) && empty($_GET[ASSET_PARAMETER_JS_URL]) == false) {
        $jsDirectory = null;
        $jsFile      = AppDirectory::rawDecode(addslashes(trim($_GET[ASSET_PARAMETER_JS_URL])));
        $jsPath      = env('app.path.javascript');

        if (isset($_GET[ASSET_PARAMETER_JS_DIR_URL])) {
            $jsDirectory  = AppDirectory::rawDecode(addslashes(trim($_GET[ASSET_PARAMETER_JS_DIR_URL])));
            $jsPath      .= SP . $jsDirectory;
        }

        if (FileInfo::isTypeDirectory($jsPath) == false)
            die(lng('default.resource.directory_not_found'));

        header('Content-Type: text/javascript');

        $jsFilename = $jsFile . '.js';
        $jsFilePath = FileInfo::filterPaths($jsPath . SP . $jsFilename);
        $appAssets  = new AppAssets($jsPath, $jsFilename);

        if ($appAssets->loadJs())
            $appAssets->display();
        else
            die(lng('default.resource.file_not_found'));
    } else if (isset($_GET[ASSET_PARAMETER_LOAD_LANG]) && Request::isDesktop()) {
        $json = Language::toJson(null);

        if (is_string($json) == false)
            die(lng('default.resource.file_not_found'));

        echo $json;
    } else {
        die(lng('default.resource.file_not_found'));
    }

?>