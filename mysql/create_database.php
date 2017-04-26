<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\Mysql\AppMysqlCollection;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');

    $title  = lng('mysql.create_database.title_page');
    $themes = [ env('resource.theme.mysql') ];
    $appAlert->setID(ALERT_MYSQL_CREATE_DATABASE);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $forms = [
        'name' => null
    ];

    if (isset($_POST['create'])) {
        $forms['name'] = addslashes($_POST['name']);

        if (empty($forms['name'])) {
            $appAlert->danger(lng('mysql.create_database.alert.not_input_database_name'));
        }

        $forms['name'] = stripslashes($forms['name']);
    }
?>

    <?php $appAlert->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('mysql.create_database.title_page'); ?></span>
        </div>
        <form action="create_database.php" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input">
                    <span><?php echo lng('mysql.create_database.form.input.database_name'); ?></span>
                    <input type="text" name="name" value="" class="none" placeholder="<?php echo lng('mysql.create_database.form.placeholder.input_database_name'); ?>"/>
                </li>
                <li class="select">
                    <span><?php echo lng('mysql.create_database.form.input.collection'); ?></span>
                    <div class="icomoon icon-select-arrows select">
                        <select name="collection">
                            <?php AppMysqlCollection::display(lng('mysql.create_database.form.input.collection_none'), null); ?>
                        </select>
                    </div>
                </li>
                <li class="button">
                    <button type="submit" name="create">
                        <span><?php echo lng('mysql.create_database.form.button.create'); ?></span>
                    </button>
                    <a href="list_database.php">
                        <span><?php echo lng('mysql.create_database.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="menu-action">
        <li>
            <a href="disconnect.php">
                <span class="icomoon icon-cord"></span>
                <span><?php echo lng('mysql.home.menu_action.disconnect'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php');