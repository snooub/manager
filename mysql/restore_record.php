<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\AppParameter;
    use Librarys\File\FileInfo;
    use Librarys\Database\DatabaseBackupRestore;

    define('LOADED',               1);
    define('DATABASE_CHECK_MYSQL', 1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');
    else if ($appMysqlConfig->get('mysql_name') != null)
        $appAlert->danger(lng('mysql.list_database.alert.mysql_is_not_connect_root', 'name', $appMysqlConnect->getName()), ALERT_MYSQL_LIST_DATABASE, 'list_database.php');

    $title   = lng('mysql.restore_record.title_page');
    $themes  = [ env('resource.theme.mysql') ];
    $appAlert->setID(ALERT_MYSQL_RESTORE_RECORD);
    require_once(ROOT . 'incfiles' . SP . 'header.php');
    requireDefine('mysql_restore_manager');

    $appParameter = new AppParameter();
    $appParameter->add(PARAMETER_DATABASE_URL, AppDirectory::rawEncode($appMysqlConnect->getName()));

    $databaseBackupRestore = new DatabaseBackupRestore($appMysqlConnect);
?>

    <?php echo $appAlert->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('mysql.restore_record.title_page'); ?></span>
        </div>
        <form action="restore_record.php<?php echo $appParameter->toString(); ?>" method="post" id="form-list-database-backup">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>
        </form>
    </div>

    <ul class="menu-action">
        <li>
            <a href="create_table.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-plus"></span>
                <span><?php echo lng('mysql.home.menu_action.create_table'); ?></span>
            </a>
        </li>
        <li>
            <a href="restore_manager.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-restore"></span>
                <span><?php echo lng('mysql.home.menu_action.restore_manager', 'count', $databaseBackupRestore->getRestoreDatabaseRecordCount()); ?></span>
            </a>
        </li>
        <li>
            <a href="list_table.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-table"></span>
                <span><?php echo lng('mysql.home.menu_action.list_table'); ?></span>
            </a>
        </li>
        <li>
            <a href="list_database.php">
                <span class="icomoon icon-mysql"></span>
                <span><?php echo lng('mysql.home.menu_action.list_database'); ?></span>
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