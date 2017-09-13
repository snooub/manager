<?php

    if (defined('LOADED') == false)
        exit;

    use Librarys\App\AppAssets;
    use Librarys\App\Config\AppConfig;

    requireDefine('asset');

?>


<!DOCTYPE html>
<html>
    <head>
        <title>Manager </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex, nofollow, noodp, nodir"/>
        <meta http-equiv="Cache-Control" content="private, max-age=0, no-cache, no-store, must-revalidate"/>
        <meta http-equiv="Pragma" content="no-cache"/>
        <meta http-equiv="Expires" content="Thu, 01 Jan 1970 00:00:00 GMT">

        <link
            rel="icon"
            type="image/png"
            href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_png')); ?>"/>

        <link
            rel="icon"
            type="image/x-icon"
            href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_ico')); ?>"/>

        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_ico')); ?>"/>

        <link
            rel="stylesheet"
            type="text/css"
            media="all,handheld"
            href="<?php echo AppAssets::makeURLResourceTheme(AppConfig::getInstance()->get('theme.directory'), 'theme_desktop'); ?>"/>

        <script
            type="text/javascript"
            src="<?php echo AppAssets::makeURLResourceJavascript(env('resource.filename.javascript.desktop.file.require'), env('resource.filename.javascript.desktop.directory.lib')); ?>"
            data-main="<?php echo AppAssets::makeURLResourceJavascript(env('resource.filename.javascript.desktop.file.bundle'), env('resource.filename.javascript.desktop.directory.base')); ?>"></script>
    </head>
    <body>
        <div id="container-full">
            <div id="header">

            </div>
            <div id="container">
                <div id="sidebar">
                    <div class="file">

                    </div>
                    <div class="database">

                    </div>
                </div>
                <div id="content">

                </div>
                <div id="loading">
                    <span class="icomoon icon-spinner spinner-animation"></span>
                </div>
            </div>
        </div>
    </body>
</html>