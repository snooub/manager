<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\AppParameter;
    use Librarys\File\FileInfo;

    define('LOADED',               1);
    define('MYSQL_LIST_TABLE',     1);
    define('DATABASE_CHECK_MYSQL', 1);

    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');
    else if ($appMysqlConfig->get('mysql_name') != null)
        $appAlert->danger(lng('mysql.list_database.alert.mysql_is_not_connect_root', 'name', $appMysqlConnect->getName()), ALERT_MYSQL_LIST_TABLE, 'list_table.php');

    $title   = lng('mysql.backup_database.title_page');
    $themes  = [ env('resource.theme.mysql') ];
    $scripts = [ env('resource.javascript.checkbox_checkall') ];
    $appAlert->setID(ALERT_MYSQL_BACKUP_DATABASE);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $appParameter = new AppParameter();
    $appParameter->add(PARAMETER_DATABASE_URL, AppDirectory::rawEncode($appMysqlConnect->getName()));

    $queryTables = $appMysqlConnect->query('SHOW TABLE STATUS');
    $numsTables  = 0;

    if ($appMysqlConnect->isResource($queryTables)) {
        $numsTables = $appMysqlConnect->numRows($queryTables);

        if ($numsTables <= 0)
            $appAlert->danger(lng('mysql.backup_database.alert.no_table'), ALERT_MYSQL_LIST_TABLE, 'index.php' . $appParameter->toString());
    }

    $forms = [
        'entrys' => [

        ]
    ];

    if (isset($_POST['backup'])) {
        bug($_POST);
    }
?>

    <?php $appAlert->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('mysql.backup_database.title_page'); ?></span>
        </div>
        <form action="backup_database.php<?php echo $appParameter->toString(); ?>" method="post" id="form-list-database">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul class="list-database no-box-shadow">
                <?php $indexAssoc = 0; ?>

                <?php while ($assocTable = $appMysqlConnect->fetchAssoc($queryTables)) { ?>
                    <?php $urlParameterTable  = '?' . PARAMETER_DATABASE_URL . '=' . AppDirectory::rawEncode($appMysqlConnect->getName()); ?>
                    <?php $urlParameterTable .= '&' . PARAMETER_TABLE_URL    . '=' . AppDirectory::rawEncode($assocTable['Name']); ?>
                    <?php $indexAssoc++; ?>

                    <li class="type-table<?php if ($indexAssoc === $numsTables && ($numsTables % 2) !== 0)  { ?> entry-odd<?php } ?>">
                        <div class="icon">
                            <?php $id = 'table-' . $assocTable['Name']; ?>

                            <input
                                type="checkbox"
                                name="tables[]"
                                id="<?php echo $id; ?>"
                                value="<?php echo $assocTable['Name']; ?>"
                                checked="checked"
                                <?php if ($appConfig->get('enable_disable.count_checkbox_mysql_javascript')) { ?> onclick="javascript:CheckboxCheckAll.onCheckItem('form-list-database', 'checked-all-entry', '<?php echo $id; ?>', 'checkall-count')"<?php } ?>/>
                            <label for="<?php echo $id; ?>" class="not-content"></label>
                            <a href="info_table.php<?php echo $urlParameterTable; ?>">
                                <span class="icomoon icon-table"></span>
                            </a>
                        </div>
                        <a href="list_data.php<?php echo $urlParameterTable; ?>" class="name">
                            <span><?php echo $assocTable['Name']; ?></span>
                        </a>
                    </li>
                <?php } ?>

                <li class="checkbox-all">
                    <input type="checkbox" name="checked_all_entry" id="checked-all-entry" onclick="javascript:CheckboxCheckAll.onCheckAll('form-list-database', 'checked-all-entry', 'checkall-count');" checked="checked"/>
                    <label for="checked-all-entry">
                        <span><?php echo lng('mysql.backup_database.form.input.checkbox_all_entry'); ?></span>
                        <?php if ($appConfig->get('enable_disable.count_checkbox_mysql_javascript')) { ?>
                            <span id="checkall-count"></span>
                            <script type="text/javascript" async>
                                OnLoad.add(function() {
                                    CheckboxCheckAll.onInitPutCountCheckedItem('form-list-database', 'checked-all-entry', 'checkall-count');
                                });
                            </script>
                        <?php } ?>
                    </label>
                </li>
            </ul>

            <ul class="form-element">
                <li class="button">
                    <button type="submit" name="backup" id="button-save-on-javascript">
                        <span><?php echo lng('mysql.backup_database.form.button.backup'); ?></span>
                    </button>
                    <a href="list_table.php<?php echo $appParameter->toString(); ?>">
                        <span><?php echo lng('mysql.backup_database.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
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
            <a href="restore_database.php<?php echo $appParameter->toString(); ?>">
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