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
                <div id="logo">
                    <a href="<?php echo env('app.http.host'); ?>">
                        <span id="logo" class="icomoon icon-home"></span>
                    </a>
                </div>
                <ul id="action">
                    <li>
                        <a href="#">
                            <span class="icomoon icon-search"></span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="icomoon icon-mysql"></span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="icomoon icon-config"></span>
                        </a>
                    </li>
                    <li class="about">
                        <a href="#">
                            <span class="icomoon icon-about"></span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="icomoon icon-exit"></span>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="container">
                <div id="sidebar">
                    <div class="scroll-wrapper">
                        <div class="sidebar-file scroll-content">
                            <?php for ($i = 0; $i < 30; ++$i) { ?>
                                <span style="word-wrap: nowrap; white-space: nowrap;">Test dfgdfgfgdgdfgdfgdfgdfg <?php echo $i; ?> hjdfihg uifhguidfhuighdfuihgdfuihfi</span><br>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="sidebar-database">

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