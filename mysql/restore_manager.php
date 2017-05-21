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

    $title   = lng('mysql.restore_manager.title_page');
    $themes  = [ env('resource.theme.mysql') ];
    $scripts = [ env('resource.javascript.checkbox_checkall') ];
    $appAlert->setID(ALERT_MYSQL_RESTORE_MANAGER);
    require_once(ROOT . 'incfiles' . SP . 'header.php');
    requireDefine('mysql_restore_manager');

    $appParameter = new AppParameter();
    $appParameter->add(PARAMETER_DATABASE_URL, AppDirectory::rawEncode($appMysqlConnect->getName()));

    $databaseBackupRestore = new DatabaseBackupRestore($appMysqlConnect);
    $pathDatabaseBackup    = $databaseBackupRestore->getPathDirectoryDatabaseBackup();
    $handle                = FileInfo::globDirectory($pathDatabaseBackup . SP . '*.' . DatabaseBackupRestore::MIME);
    $countHandle           = count($handle);
    $listBackups           = array();
    $countList             = 0;

    if ($handle !== false && $countHandle > 0) {
        foreach ($handle AS $entryPath)
            $listBackups[] = basename($entryPath);

        $countList = count($listBackups);
    }
?>

    <?php echo $appAlert->display(); ?>

    <form action="restore_manager.php<?php echo $appParameter->toString(); ?>" method="post" id="form-list-database-backup">

        <div class="form-action">
            <div class="title">
                <span><?php echo lng('mysql.restore_manager.title_page'); ?></span>
            </div>

            <ul class="list-database no-box-shadow">

                <?php if ($countList <= 0) { ?>
                    <li class="empty">
                        <span class="icomoon icon-backup"></span>
                        <span><?php echo lng('mysql.restore_manager.empty_backup_record'); ?></span>
                    </li>
                <?php } else { ?>
                    <?php for ($i = 0; $i < $countList; ++$i) { ?>
                        <?php $entryFilename = $listBackups[$i]; ?>

                        <li class="type-backup-record<?php if ($i + 1 === $countList && ($countList % 2) !== 0) { ?> entry-odd<?php } ?>">
                            <div class="icon">
                                <?php $id = 'backup-' . $entryFilename; ?>

                                <input
                                    type="checkbox"
                                    name="tables[]"
                                    id="<?php echo $id; ?>"
                                    value="<?php echo $mysqlAssoc['Name']; ?>"
                                    <?php if ($appConfig->get('enable_disable.count_checkbox_mysql_javascript')) { ?> onclick="javascript:CheckboxCheckAll.onCheckItem('form-list-database-backup', 'checked-all-entry', '<?php echo $id; ?>', 'checkall-count')"<?php } ?>/>

                                <label for="<?php echo $id; ?>" class="not-content"></label>
                                <span class="icomoon icon-backup"></span>
                            </div>
                            <span><?php echo $entryFilename; ?></span>
                        </li>
                    <?php } ?>

                    <li class="checkbox-all">
                        <input type="checkbox" name="checked_all_entry" id="checked-all-entry" onclick="javascript:CheckboxCheckAll.onCheckAll('form-list-database-backup', 'checked-all-entry', 'checkall-count');"/>
                        <label for="checked-all-entry">
                            <span><?php echo lng('mysql.restore_manager.form.input.checkbox_all_entry'); ?></span>
                            <?php if ($appConfig->get('enable_disable.count_checkbox_mysql_javascript')) { ?>
                                <span id="checkall-count"></span>
                                <script type="text/javascript" async>
                                    OnLoad.add(function() {
                                        CheckboxCheckAll.onInitPutCountCheckedItem('form-list-database-backup', 'checked-all-entry', 'checkall-count');
                                    });
                                </script>
                            <?php } ?>
                        </label>
                    </li>
                <?php } ?>

            </ul>
        </div>

        <?php if ($countList > 0) { ?>
            <ul class="action-multi">
                <li>
                    <button type="submit" name="action" value="<?php echo MYSQL_RESTORE_MANAGER_ACTION_DELETE_MULTI; ?>">
                        <span class="icomoon icon-trash"></span>
                        <span class="label"><?php echo lng('mysql.restore_manager.action_multi.delete'); ?></span>
                    </button>
                </li>
                <li>
                    <button type="submit" name="action" value="<?php echo MYSQL_RESTORE_MANAGER_ACTION_DOWNLOAD_MULTI; ?>">
                        <span class="icomoon icon-download"></span>
                        <span class="label"><?php echo lng('mysql.restore_manager.action_multi.download'); ?></span>
                    </button>
                </li>
            </ul>
        <?php } ?>

    </form>

    <ul class="menu-action">
        <li>
            <a href="create_table.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-plus"></span>
                <span><?php echo lng('mysql.home.menu_action.create_table'); ?></span>
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