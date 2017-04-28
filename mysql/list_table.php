<?php

    use Librarys\App\AppDirectory;
    use Librarys\File\FileInfo;

    define('LOADED',           1);
    define('MYSQL_LIST_TABLE', 1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');

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
                <span class="icomoon icon-mysql"></span>
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
                <?php $indexAssoc++; ?>

                <li class="type-table<?php if ($indexAssoc === $mysqlNums && ($mysqlNums % 2) !== 0)  { ?> entry-odd<?php } ?>">
                    <div class="icon">
                        <span class="icomoon icon-table"></span>
                    </div>
                    <a href="#" class="name">
                        <span><?php echo $mysqlAssoc['Name']; ?></span>
                    </a>
                    <div class="info">
                        <span><?php echo FileInfo::sizeToString($mysqlAssoc['Index_length']); ?></span><span>,</span>
                        <?php if ($mysqlAssoc['Rows'] === 0) { ?>
                            <?php $mysqlAssoc['Rows'] = $appMysqlConnect->numRows('SHOW COLUMNS FORM `' . addslashes($mysqlAssoc['Name']) . '`'); ?>
                        <?php } ?>

                        <span><?php echo $mysqlAssoc['Rows']; ?> <?php echo lng('mysql.list_table.column_count'); ?></span>
                    </div>
                </li>
            <?php } ?>
        <?php } ?>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="disconnect.php">
                <span class="icomoon icon-cord"></span>
                <span><?php echo lng('mysql.home.menu_action.disconnect'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>