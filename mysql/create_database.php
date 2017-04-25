<?php

    use Librarys\App\AppDirectory;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');

    $title  = lng('mysql.create_database.title_page');
    $themes = [ env('resource.theme.mysql') ];
    $appAlert->setID(ALERT_MYSQL_CREATE_DATABASE);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

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

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php');