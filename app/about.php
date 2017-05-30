<?php

    use Librarys\App\AppAboutConfig;
    use Librarys\App\AppUpgrade;

    define('LOADED', 1);
    require_once('global.php');

    $title      = lng('app.about.title_page');
    $themes     = [ env('resource.theme.about') ];
    $config     = new AppAboutConfig($boot);
    $appUpgrade = new AppUpgrade($boot, $config);
    $hasUpgrade = $appUpgrade->checkHasUpgradeLocal();
    $appAlert->setID(ALERT_APP_ABOUT);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    if ($hasUpgrade && $appAlert->hasAlertDisplay() == false)
        $appAlert->success(lng('app.check_update.alert.version_is_old', 'version_current', $config->get('version'), 'version_update', $appUpgrade->getVersionUpgrade()));

?>

    <?php $appAlert->display(); ?>

    <div id="about">
        <h1><?php echo $config->get('name'); ?></h1>
        <ul>
        	<li class="label">
        		<ul>
        			<li><span><?php echo lng('app.about.info.label.author'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.version'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.email'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.github'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.facebook'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.phone'); ?></span></li>
        			<li><span><?php echo lng('app.about.info.label.create_at'); ?></span></li>
                    <li><span><?php echo lng('app.about.info.label.check_at'); ?></span></li>
                    <li><span><?php echo lng('app.about.info.label.upgrade_at'); ?></span></li>
    		</ul>
        	</li>
        	<li class="value">
        		<ul>
        			<li><span><?php echo $config->get(AppAboutConfig::ARRAY_KEY_NAME); ?></span></li>
        			<li><span><?php echo $config->get(AppAboutConfig::ARRAY_KEY_VERSION); ?> <?php if ($config->get(AppAboutConfig::ARRAY_KEY_IS_BETA)) echo 'beta'; ?></span></li>
        			<li><span><?php echo $config->get(AppAboutConfig::ARRAY_KEY_EMAIL); ?></span></li>
        			<li><span><a href="<?php echo $config->get(AppAboutConfig::ARRAY_KEY_GIT_LINK); ?>" target="_blank"><?php echo $config->get(AppAboutConfig::ARRAY_KEY_GIT_TITLE); ?></a></span></li>
        			<li><span><a href="<?php echo $config->get(AppAboutConfig::ARRAY_KEY_FB_LINK); ?>" target="_blank"><?php echo $config->get(AppAboutConfig::ARRAY_KEY_FB_TITLE); ?></a></span></li>
        			<li><span><?php echo $config->get(AppAboutConfig::ARRAY_KEY_PHONE); ?></span></li>
        			<li><span><?php echo date('d.m.Y - H:i', $config->get(AppAboutConfig::ARRAY_KEY_CREATE_AT)); ?></span></li>

                    <?php if ($config->get(AppAboutConfig::ARRAY_KEY_CHECK_AT) <= 0) { ?>
                        <li><span><?php echo lng('app.check_update.info.value.not_last_check_update'); ?></span></li>
                    <?php } else { ?>
                        <li><span><?php echo date('d.m.Y - H:i:s', $config->get(AppAboutConfig::ARRAY_KEY_CHECK_AT)); ?></span></li>
                    <?php } ?>

                    <?php if ($config->get(AppAboutConfig::ARRAY_KEY_UPGRADE_AT) <= 0) { ?>
                        <li><span><?php echo lng('app.check_update.info.value.not_last_upgrade'); ?></span></li>
                    <?php } else { ?>
                        <li><span><?php echo date('d.m.Y - H:i:s', $config->get(AppAboutConfig::ARRAY_KEY_UPGRADE_AT)); ?></span></li>
                    <?php } ?>
        		</ul>
        	</li>
        </ul>
    </div>

    <?php if ($appUser->isLogin()) { ?>
        <ul class="menu-action">
            <li>
                <a href="check_update.php">
                    <span class="icomoon icon-update"></span>
                    <span><?php echo lng('app.about.menu_action.check_update'); ?></span>
                </a>
            </li>

            <?php if ($hasUpgrade) { ?>
                <li>
                    <a href="upgrade_app.php">
                        <span class="icomoon icon-update"></span>
                        <span><?php echo lng('app.about.menu_action.upgrade_app'); ?></span>
                    </a>
                </li>
            <?php } ?>

            <li>
                <a href="validate_app.php">
                    <span class="icomoon icon-check"></span>
                    <span><?php echo lng('app.about.menu_action.validate_app'); ?></span>
                </a>
            </li>
            <li>
                <a href="help.php">
                    <span class="icomoon icon-help"></span>
                    <span><?php echo lng('app.about.menu_action.help'); ?></span>
                </a>
            </li>
            <li>
                <a href="feedback.php">
                    <span class="icomoon icon-feedback"></span>
                    <span><?php echo lng('app.about.menu_action.feedback'); ?></span>
                </a>
            </li>
        </ul>
    <?php } ?>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>