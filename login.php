<?php define('LOADED', 1); ?>
<?php require_once('global.php'); ?>

<?php if ($appUser->isLogin() == false) { ?>
    <?php $title = lng('login.title_page'); ?>
    <?php $themes = [ env('resource.theme.login') ]; ?>
    <?php $appAlert->setID(ALERT_LOGIN); ?>
    <?php require_once('header.php'); ?>

    <?php $username = null; ?>
    <?php $password = null; ?>

    <?php if (isset($_POST['submit'])) { ?>
        <?php $user     = null; ?>
        <?php $username = addslashes($_POST['username']); ?>
        <?php $password = addslashes($_POST['password']); ?>

        <?php if (empty($username) || empty($password)) { ?>
            <?php $appAlert->danger(lng('login.alert.not_input_username_or_password')); ?>
        <?php }else if (($user = $appUser->isUser($username, $password, true)) == false) { ?>
            <?php $appAlert->danger(lng('login.alert.username_or_password_wrong')); ?>
        <?php } else if ($user == null) { ?>
            <?php $appAlert->danger(lng('login.alert.user_not_exists')); ?>
        <?php } else { ?>
            <?php $appUser->createSessionUser($user[Librarys\App\AppUser::KEY_USERNAME]); ?>
            <?php $appAlert->success(lng('login.alert.login_success'), ALERT_INDEX, env('app.http.host')); ?>
        <?php } ?>
    <?php } ?>

    <?php $appAlert->display(); ?>

    <div id="login">
        <form action="login.php" method="post" id="login-form">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>
            <input type="text" name="username" value="<?php echo stripslashes($username); ?>" placeholder="<?php echo lng('login.form.input_username_placeholder'); ?>"/>
            <input type="password" name="password" value="<?php echo stripslashes($password); ?>" placeholder="<?php echo lng('login.form.input_password_placeholder'); ?>"/>
            <div id="login-form-action">
                <a href="forgot_password.php" id="forgot-password">
                    <span><?php echo lng('login.form.forgot_password'); ?></span>
                </a>
                <button type="submit" name="submit">
                    <span><?php echo lng('login.form.button_login'); ?></span>
                </button>
            </div>
        </form>
    </div>

    <?php require_once('footer.php'); ?>
<?php } else { ?>
    <?php $appAlert->info(lng('login.alert.login_already'), ALERT_INDEX, env('app.http.host')); ?>
<?php } ?>