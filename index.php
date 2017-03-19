<?php define('LOADED', 1); ?>
<?php require_once('global.php'); ?>

<?php if ($appUser->isLogin()) { ?>
    <?php $title = lng('home.title_page_root'); ?>
    <?php $themes = [ env('resource.theme.file') ]; ?>
    <?php $appAlert->setID(ALERT_INDEX); ?>
    <?php require_once('header.php'); ?>

    <?php $appAlert->display(); ?>

    <ul class="file-list-home">
        <li class="back">
            <a href="#">
                <span class="icomoon icon-back"></span>
                <span>Quay lai</span>
            </a>
        </li>
        <li class="empty">
            <span class="icomoon icon-trash"></span>
            <span>Thu muc trong</span>
        </li>
        <?php for ($i = 0; $i < 20; ++$i) { ?>
            <li>
                <a href="#">
                    <span class="icomoon icon-file"></span>
                </a>
                <a href="#">
                    <span class="entry-name"><?php echo 'file-' . $i; ?></span>
                </a>
            </li>
        <?php } ?>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="create.php">
                <span class="icomoon icon-folder-create"></span>
                <span><?php echo lng('home.menu_action.create'); ?></span>
            </a>
        </li>
        <li>
            <a href="upload.php">
                <span class="icomoon icon-folder-upload"></span>
                <span><?php echo lng('home.menu_action.upload'); ?></span>
            </a>
        </li>
        <li>
            <a href="import.php">
                <span class="icomoon icon-folder-download"></span>
                <span><?php echo lng('home.menu_action.import'); ?></span>
            </a>
        </li>
    </ul>

    <?php require_once('footer.php'); ?>
<?php } else { ?>
    <?php $appAlert->danger(lng('login.alert.not_login', ALERT_LOGIN, 'login.php')); ?>
<?php } ?>