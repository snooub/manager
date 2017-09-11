<?php

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
        <link rel="icon" type="image/png" href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_png')); ?>"/>
        <link rel="icon" type="image/x-icon" href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_ico')); ?>"/>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo AppAssets::makeURLResourceIcon(AppConfig::getInstance()->get('theme.directory'), env('resource.filename.icon.favicon_ico')); ?>"/>
        <link rel="stylesheet" type="text/css" href="<?php echo AppAssets::makeURLResourceTheme(AppConfig::getInstance()->get('theme.directory'), 'theme_desktop'); ?>" media="all,handheld" />
        <script type="text/javascript" src="<?php echo AppAssets::makeURLResourceJavascript('desktop'); ?>"></script>
    </head>
    <body>
        <div class="container">
            <div class="header">

            </div>
            <div class="sidebar">

            </div>
            <div class="content">

            </div>
            <div class="loading">

            </div>
        </div>
    </body>
</html>