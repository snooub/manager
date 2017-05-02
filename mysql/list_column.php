<?php

    use Librarys\App\AppDirectory;
    use Librarys\File\FileInfo;

    define('LOADED',               1);
    define('MYSQL_LIST_COLUMN',    1);
    define('DATABASE_CHECK_MYSQL', 1);
    define('TABLE_CHECK_MYSQL',    1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');

    $title  = lng('mysql.list_column.title_page');
    $themes = [ env('resource.theme.mysql') ];
    $appAlert->setID(ALERT_MYSQL_LIST_COLUMN);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $mysqlStr   = 'SHOW COLUMNS FROM `' . addslashes($appMysqlConnect->getTableCurrent()) . '`';
    $mysqlQuery = $appMysqlConnect->query($mysqlStr);
    $mysqlNums  = $appMysqlConnect->numRows($mysqlQuery);
?>

    <?php echo $appAlert->display(); ?>

    <div class="mysql-query-string">
        <span><?php echo $appMysqlConnect->getMysqlQueryExecStringCurrent(); ?></span>
    </div>

    <ul class="list-database">
        <li class="back">
            <a href="#">
                <span class="icomoon icon-table"></span>
            </a>
            <a href="list_table.php?<?php echo PARAMETER_DATABASE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getName()); ?>&<?php echo PARAMETER_TABLE_URL; ?>=<?php echo AppDirectory::rawEncode($appMysqlConnect->getTableCurrent()); ?>">
                <span><?php echo $appMysqlConnect->getTableCurrent(); ?></span>
            </a>
        </li>
        <?php if ($mysqlNums <= 0) { ?>
            <li class="empty">
                <span class="icomoon icon-column"></span>
                <span><?php echo lng('mysql.list_column.alert.empty_list_column'); ?></span>
            </li>
        <?php } else { ?>
            <?php while ($mysqlAssoc = $appMysqlConnect->fetchAssoc($mysqlQuery)) { ?>
                <li class="type-column">
                    <a href="#">
                        <span class="icomoon icon-column"></span>
                    </a>
                    <a href="#">
                        <span><?php echo $mysqlAssoc['Field']; ?></span>
                    </a>
                </li>
            <?php } ?>
        <?php } ?>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>