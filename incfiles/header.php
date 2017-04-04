<?php if (!defined('LOADED')) exit(0); ?>

<!DOCTYPE html>
<html>
    <head>
        <title><?php echo $title; ?></title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex, nofollow, noodp, nodir"/>

        <link rel="stylesheet" type="text/css" href="<?php echo env('resource.theme.app'); ?>?rand=<?php echo rand(1000, 9000); ?>" media="all,handheld" />

        <?php if (isset($themes) && is_array($themes)) { ?>
            <?php foreach ($themes AS $entry) { ?>
                <link rel="stylesheet" type="text/css" href="<?php echo $entry; ?>?rand=<?php echo rand(1000, 9000); ?>" media="all,handheld" />
            <?php } ?>
            <?php unset($themes); ?>
        <?php } ?>

        <link rel="stylesheet" type="text/css" href="<?php echo env('resource.theme.icomoon'); ?>" media="all,handheld" />

        <link rel="icon" type="image/png" href="<?php echo env('resource.icon.favicon_png'); ?>"/>
        <link rel="icon" type="image/x-icon" href="<?php echo env('resource.icon.favicon_ico'); ?>"/>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo env('resource.icon.favicon_ico'); ?>"/>

        <?php if (isset($scripts) && is_array($scripts)) { ?>
            <?php foreach ($scripts AS $entry) { ?>
                <script type="text/javascript" src="<?php echo $entry; ?>?rand=<?php echo rand(1000, 9000); ?>"></script>
            <?php } ?>
            <?php unset($scripts); ?>
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
                        <li>
                            <a href="mysql/index.php">
                                <span class="icomoon icon-mysql"></span>
                            </a>
                        </li>
                        <li>
                            <a href="system/user.php">
                                <span class="icomoon icon-user"></span>
                            </a>
                        </li>
                        <li>
                            <a href="system/config.php">
                                <span class="icomoon icon-config"></span>
                            </a>
                        </li>
                        <li class="about">
                            <a href="about.php">
                                <span class="icomoon icon-about"></span>
                            </a>
                        </li>
                        <li>
                            <a href="user/exit.php">
                                <span class="icomoon icon-exit"></span>
                            </a>
                        </li>
                    <?php } else { ?>
                        <li>
                            <a href="about.php">
                                <span class="icomoon icon-about"></span>
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            <div id="content">
