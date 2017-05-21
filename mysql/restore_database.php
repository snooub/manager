<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\AppParameter;
    use Librarys\File\FileInfo;

    define('LOADED',               1);
    define('DATABASE_CHECK_MYSQL', 1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');
    else if ($appMysqlConfig->get('mysql_name') != null)
        $appAlert->danger(lng('mysql.list_database.alert.mysql_is_not_connect_root', 'name', $appMysqlConnect->getName()), ALERT_MYSQL_LIST_DATABASE, 'list_database.php');

    $title   = lng('mysql.restore_database.title_page');
    $themes  = [ env('resource.theme.mysql') ];
    $scripts = [ env('resource.javascript.checkbox_checkall') ];
    $appAlert->setID(ALERT_MYSQL_RESTORE_DATABASE);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $appParameter = new AppParameter();
    $appParameter->add(PARAMETER_DATABASE_URL, AppDirectory::rawEncode($appMysqlConnect->getName()));
?>

    <?php echo $appAlert->display(); ?>

    <ul class="menu-action">
        <li>
            <a href="create_table.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-plus"></span>
                <span><?php echo lng('mysql.home.menu_action.create_table'); ?></span>
            </a>
        </li>
        <li>
            <a href="disconnect.php">
                <span class="icomoon icon-cord"></span>
                <span><?php echo lng('mysql.home.menu_action.disconnect'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>