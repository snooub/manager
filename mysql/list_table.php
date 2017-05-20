<?php

    use Librarys\App\AppDirectory;
    use Librarys\File\FileInfo;

    define('LOADED',               1);
    define('MYSQL_LIST_TABLE',     1);
    define('DATABASE_CHECK_MYSQL', 1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');
    else if ($appMysqlConfig->get('mysql_name') != null)
        $appAlert->danger(lng('mysql.list_database.alert.mysql_is_not_connect_root', 'name', $appMysqlConnect->getName()), ALERT_MYSQL_LIST_TABLE, 'list_table.php');

    $title  = lng('mysql.list_table.title_page');
    $themes = [ env('resource.theme.mysql') ];
    $appAlert->setID(ALERT_MYSQL_LIST_TABLE);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $mysqlStr   = 'SHOW TABLE STATUS';
    $mysqlQuery = $appMysqlConnect->query($mysqlStr);
    $mysqlNums  = $appMysqlConnect->numRows($mysqlQuery);

?>

    <?php echo $appAlert->display(); ?>

    <div class="mysql-query-string">
        <span><?php echo $appMysqlConnect->getMysqlQueryExecStringCurrent(); ?></span>
    </div>

    <ul class="list-database">
        <?php if ($appMysqlConnect->isDatabaseNameCustom()) { ?>
            <li class="back">
                <a href="info_database.php?<?php echo PARAMETER_DATABASE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getName()); ?>&<?php echo PARAMETER_IS_REFERER_LIST_TABLE; ?>=1">
                    <span class="icomoon icon-mysql"></span>
                </a>
                <a href="list_database.php">
                    <strong><?php echo $appMysqlConnect->getName(); ?></strong>
                </a>
            </li>
        <?php } ?>

        <?php if ($mysqlNums <= 0) { ?>
            <li class="empty">
                <span class="icomoon icon-mysql"></span>
                <span><?php echo lng('mysql.list_table.alert.empty_list_table'); ?></span>
            </li>
        <?php } else { ?>
            <?php $mysqlAssoc = null; ?>
            <?php $indexAssoc = 0; ?>

            <?php while (($mysqlAssoc = $appMysqlConnect->fetchAssoc($mysqlQuery))) { ?>
                <?php $urlParameterTable  = '?' . PARAMETER_DATABASE_URL . '=' . AppDirectory::rawEncode($appMysqlConnect->getName()); ?>
                <?php $urlParameterTable .= '&' . PARAMETER_TABLE_URL    . '=' . AppDirectory::rawEncode($mysqlAssoc['Name']); ?>
                <?php $indexAssoc++; ?>

                <li class="type-table<?php if ($indexAssoc === $mysqlNums && ($mysqlNums % 2) !== 0)  { ?> entry-odd<?php } ?>">
                    <div class="icon">
                        <a href="info_table.php<?php echo $urlParameterTable; ?>">
                            <span class="icomoon icon-table"></span>
                        </a>
                    </div>
                    <a href="list_data.php<?php echo $urlParameterTable; ?>" class="name">
                        <span><?php echo $mysqlAssoc['Name']; ?></span>
                    </a>
                    <div class="info">
                        <span><?php echo FileInfo::sizeToString($mysqlAssoc['Index_length']); ?></span><span>,</span>
                        <?php if ($mysqlAssoc['Rows'] <= 0) { ?>
                            <?php $mysqlAssoc['Rows'] = $appMysqlConnect->numRows('SHOW COLUMNS FROM `' . addslashes($mysqlAssoc['Name']) . '`'); ?>
                        <?php } ?>

                        <span><?php echo $mysqlAssoc['Rows']; ?> <?php echo lng('mysql.list_table.column_count'); ?></span>
                    </div>
                </li>
            <?php } ?>
        <?php } ?>
    </ul>

    <ul class="alert">
        <li class="info">
            <span><?php echo lng('mysql.list_table.alert.tips', 'type', $appMysqlConnect->getExtension()->getExtensionType()); ?></span>
        </li>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="create_table.php?<?php echo PARAMETER_DATABASE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getName()); ?>">
                <span class="icomoon icon-plus"></span>
                <span><?php echo lng('mysql.home.menu_action.create_table'); ?></span>
            </a>
        </li>
        <li>
            <a href="backup_database.php?<?php echo PARAMETER_DATABASE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getName()); ?>">
                <span class="icomoon icon-backup"></span>
                <span><?php echo lng('mysql.home.menu_action.backup_database'); ?></span>
            </a>
        </li>
        <li>
            <a href="restore_database.php?<?php echo PARAMETER_DATABASE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getName()); ?>">
                <span class="icomoon icon-restore"></span>
                <span><?php echo lng('mysql.home.menu_action.restore_database'); ?></span>
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