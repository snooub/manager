<?php if (!defined('LOADED')) exit(0); ?>

<!DOCTYPE html>
<html>
    <head>
        <title><?php echo $title; ?></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex, nofollow, noodp, nodir"/>
        <meta http-equiv="Cache-Control" content="private, max-age=0, no-cache, no-store, must-revalidate"/>
        <meta http-equiv="Pragma" content="no-cache"/>
        <meta http-equiv="Expires" content="Thu, 01 Jan 1970 00:00:00 GMT">
        <link rel="stylesheet" type="text/css" href="<?php echo env('resource.theme.app'); ?>?rand=<?php echo rand(1000, 9000); ?>" media="all,handheld" />

        <?php if (isset($themes) && is_array($themes)) { ?>
            <?php foreach ($themes AS $entry) { ?>
                <link rel="stylesheet" type="text/css" href="<?php echo $entry; ?>?rand=<?php echo rand(1000, 9000); ?>" media="all,handheld" />
            <?php } ?>
            <?php unset($themes); ?>
        <?php } ?>

        <link rel="stylesheet" type="text/css" href="<?php echo env('resource.theme.icomoon'); ?>?rand=<?php echo rand(1000, 9000); ?>" media="all,handheld" />

        <link rel="icon" type="image/png" href="<?php echo env('resource.icon.favicon_png'); ?>"/>
        <link rel="icon" type="image/x-icon" href="<?php echo env('resource.icon.favicon_ico'); ?>"/>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo env('resource.icon.favicon_ico'); ?>"/>
        <script type="text/javascript" src="<?php echo env('resource.javascript.on_load'); ?>?rand=<?php echo rand(1000, 9000); ?>"></script>

        <?php if (isset($scripts) && is_array($scripts)) { ?>
            <?php foreach ($scripts AS $entry) { ?>
                <script type="text/javascript" src="<?php echo $entry; ?>?rand=<?php echo rand(1000, 9000); ?>"></script>
            <?php } ?>
            <?php unset($scripts); ?>
        <?php } ?>
        <?php if ($appConfig->get('enable_disable.button_save_on_javascript') == true) { ?>
            <script type="text/javascript" src="<?php echo env('resource.javascript.button_save_on_javascript'); ?>?rand=<?php echo rand(1000, 9000); ?>"></script>
        <?php } ?>
    </head>
    <body>
        <div id="container">
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
                    <?php if ($appUser->isLogin()) { ?>
                        <?php $url    = env('app.http.host') . '/mysql'; ?>
                        <?php $isShow = true; ?>

                        <?php if ($appMysqlConfig->get('mysql_is_connect', false)) { ?>
                           <?php if ($appMysqlConfig->get('mysql_name', null) == null) { ?>
                                <?php $url   .= '/list_database.php'; ?>
                                <?php $isShow = defined('MYSQL_LIST_DATABASE') == false; ?>
                            <?php } else { ?>
                                <?php $url   .= '/list_table.php'; ?>
                                <?php $isShow = defined('MYSQL_LIST_TABLE') == false; ?>
                            <?php } ?>
                        <?php } else if (defined('MYSQL_REQUIRE')) { ?>
                            <?php $isShow = false; ?>
                        <?php } ?>

                        <?php if ($isShow) { ?>
                            <li>
                                <a href="<?php echo $url; ?>">
                                    <span class="icomoon icon-mysql"></span>
                                </a>

                            </li>
                        <?php } ?>
                        <?php unset($url); ?>
                        <?php unset($isShow); ?>

                        <?php if (defined('SETTING') == false) { ?>
                            <li>
                                <a href="<?php echo env('app.http.host'); ?>/system/setting.php">
                                    <span class="icomoon icon-config"></span>
                                </a>
                            </li>
                        <?php } ?>
                        <li class="about">
                            <a href="<?php echo env('app.http.host'); ?>/about.php">
                                <span class="icomoon icon-about"></span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo env('app.http.host'); ?>/user/exit.php">
                                <span class="icomoon icon-exit"></span>
                            </a>
                        </li>
                    <?php } else { ?>
                        <li>
                            <a href="<?php echo env('app.http.host'); ?>/about.php">
                                <span class="icomoon icon-about"></span>
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            <div id="content">
