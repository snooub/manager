<?php

    use Librarys\App\AppAboutConfig;
    use Librarys\App\AppUpdate;
    use Librarys\App\AppUpgrade;
    use Librarys\File\FileInfo;
    use Librarys\Parse\MarkdownParse;

    define('LOADED',                1);
    define('PARAMETER_UPGRADE_URL', 'upgrade');

    require_once('global.php');

    $title      = lng('app.upgrade_app.title_page');
    $themes     = [ env('resource.filename.theme.about') ];
    $config     = new AppAboutConfig($boot);
    $appUpdate  = new AppUpdate($boot, $config);
    $appUpgrade = new AppUpgrade($boot, $config);
    $servers    = $appUpdate->getServers();
    $appAlert->setID(ALERT_APP_UPGRADE_APP);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $hasUpgrade = $appUpgrade->checkHasUpgradeLocal($errorCheckUpgrade);

    if ($hasUpgrade == false && $errorCheckUpgrade === AppUpgrade::ERROR_CHECK_UPGRADE_NONE)
        $appAlert->info(lng('app.check_update.alert.version_is_latest', 'version_current', $config->get('version')), ALERT_APP_ABOUT, 'about.php');
    else if ($errorCheckUpgrade === AppUpgrade::ERROR_CHECK_UPGRADE_FILE_NOT_FOUND)
        $appAlert->danger(lng('app.upgrade_app.alert.error_check_upgrade_file_not_found'), ALERT_APP_CHECK_UPDATE, 'check_update.php');
    else if ($errorCheckUpgrade === AppUpgrade::ERROR_CHECK_UPGRADE_FILE_DATA_ERROR)
        $appAlert->danger(lng('app.upgrade_app.alert.error_check_upgrade_file_data_error'), ALERT_APP_CHECK_UPDATE, 'check_update.php');
    else if ($errorCheckUpgrade === AppUpgrade::ERROR_CHECK_UPGRADE_MD5_CHECK_FAILED)
        $appAlert->danger(lng('app.upgrade_app.alert.error_check_upgrade_md5_check_failed'), ALERT_APP_CHECK_UPDATE, 'check_update.php');

    if (isset($_GET[PARAMETER_UPGRADE_URL])) {
        $errorZipExtract = null;

        if ($appUpgrade->upgradeNow(false, $errorZipExtract, $errorUpgrade) == false) {
            if ($errorZipExtract === AppUpgrade::ERROR_ZIP_NOT_OPEN)
                $appAlert->danger(lng('app.upgrade_app.alert.error_zip_not_open'));
            else if ($errorZipExtract === AppUpgrade::ERROR_ZIP_EXTRACT)
                $appAlert->danger(lng('app.upgrade_app.alert.error_zip_extract'));
            else if ($errorUpgrade === AppUpgrade::ERROR_UPGRADE_NOT_LIST_FILE_APP)
                $appAlert->danger(lng('app.upgrade_app.alert.error_upgrade_not_list_file_app'));
            else
                $appAlert->danger(lng('app.upgrade_app.alert.error_unknown'));
        } else {
            $appAlert->success(lng('app.upgrade_app.alert.upgrade_app_success', 'version', $appUpgrade->getAppUpgradeConfig()->get(AppUpdate::ARRAY_DATA_KEY_VERSION)), ALERT_APP_CHECK_UPDATE, 'check_update.php');
        }
    }
?>

    <?php $appAlert->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('app.upgrade_app.title_page'); ?></span>
        </div>

        <ul class="about-list">
            <li class="label">
                <ul>
                    <li><span><?php echo lng('app.upgrade_app.info.label_server_name'); ?></span></li>
                    <li><span><?php echo lng('app.upgrade_app.info.label_version'); ?></span></li>
                    <li><span><?php echo lng('app.upgrade_app.info.label_build_last'); ?></span></li>
                    <li><span><?php echo lng('app.upgrade_app.info.label_md5_bin_check'); ?></span></li>
                    <li><span><?php echo lng('app.upgrade_app.info.label_data_length'); ?></span></li>
                </ul>
            </li>

            <li class="value">
                <ul>
                    <li><span><?php echo $appUpgrade->getAppUpgradeConfig()->get(AppUpdate::ARRAY_DATA_KEY_SERVER_NAME); ?></span></li>
                    <li><span><?php echo $appUpgrade->getAppUpgradeConfig()->get(AppUpdate::ARRAY_DATA_KEY_VERSION); ?></span></li>
                    <li><span><?php echo date('d.m.Y - H:i:s', intval($appUpgrade->getAppUpgradeConfig()->get(AppUpdate::ARRAY_DATA_KEY_BUILD_LAST))); ?></span></li>
                    <li><span><?php echo $appUpgrade->getAppUpgradeConfig()->get(AppUpdate::ARRAY_DATA_KEY_MD5_BIN_CHECK); ?></span></li>
                    <li><span><?php echo FileInfo::fileSize(AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_BIN_FILENAME), true); ?></span></li>
                </ul>
            </li>

            <?php $markdownParse    = new MarkdownParse(); ?>
            <?php $changelogContent = FileInfo::fileReadContents(AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_CHANGELOG_FILENAME)); ?>
            <?php $readmeContent    = FileInfo::fileReadContents(AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_README_FILENAME)); ?>

            <?php if ($readmeContent !== false && $readmeContent !== null && empty($readmeContent) == false) { ?>
                <li class="message">
                    <div><span><?php echo lng('app.upgrade_app.info.label_readme'); ?></span></div>
                    <div><span><?php echo $markdownParse->text($readmeContent); ?></span></div>
                </li>
            <?php } ?>

            <?php if ($changelogContent !== false && $changelogContent !== null && empty($changelogContent) == false) { ?>
                <li class="message">
                    <div><span><?php echo lng('app.upgrade_app.info.label_changelog'); ?></span></div>
                    <div><span><?php echo $markdownParse->text($changelogContent); ?></span></div>
                </li>
            <?php } ?>
        </ul>

        <div class="about-button-check button-action-box center">
            <a href="upgrade_app.php?<?php echo PARAMETER_UPGRADE_URL; ?>">
                <span><?php echo lng('app.upgrade_app.form.button.upgrade'); ?></span>
            </a>
        </div>
    </div>

    <ul class="menu-action">
        <li>
            <a href="about.php">
                <span class="icomoon icon-about"></span>
                <span><?php echo lng('app.about.menu_action.about'); ?></span>
            </a>
        </li>

        <li>
            <a href="check_update.php">
                <span class="icomoon icon-update"></span>
                <span><?php echo lng('app.about.menu_action.check_update'); ?></span>
            </a>
        </li>

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

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>