<?php define('LOADED', 1); ?>
<?php require_once('global.php'); ?>

<?php if ($appUser->isLogin()) { ?>
    <?php $title = lng('home.title_page_root'); ?>
    <?php $themes = [ env('resource.theme.file') ]; ?>
    <?php $appAlert->setID(ALERT_INDEX); ?>
    <?php require_once('header.php'); ?>

    <?php $handler = null; ?>

    <?php if ($handler === false || $handler == null) { ?>
        <?php $appDirectory->setDirectory(env('SERVER.DOCUMENT_ROOT')); ?>
<?php bug($appDirectory->getDirectory()); ?>
    <?php } ?>

    <?php if (is_array($handler) == false) { ?>
        <?php $handler = array(); ?>
    <?php } ?>

    <?php $appAlert->display(); ?>

    <?php $handlerCount = count($handler); ?>
    <?php $handlerList  = array(); ?>

    <?php $arrayFolder = array(); ?>
    <?php $arrayFile   = array(); ?>

    <?php foreach ($handler AS $entry) { ?>
        <?php if ($entry != '.' && $entry != '..') { ?>
            <?php if ($entry == env('application.directory') && $appDirectory->isAccessParentPath()) { ?>

            <?php } else if (is_dir($appDirectory->getDirectory() . SP . $entry)) { ?>
                <?php $arrayFolder[] = $entry; ?>
            <?php } else { ?>
                <?php $arrayFile[] = $entry; ?>
            <?php } ?>
        <?php } ?>
    <?php } ?>

    <?php if (count($arrayFolder) > 0) { ?>
        <?php asort($arrayFolder); ?>

        <?php foreach ($arrayFolder AS $entry) { ?>
            <?php $handlerList[] = [ 'name' => $entry, 'is_directory' => true ]; ?>
        <?php } ?>
    <?php } ?>

    <?php if (count($arrayFile) > 0) { ?>
        <?php asort($arrayFile); ?>

        <?php foreach ($arrayFile AS $entry) { ?>
            <?php $handlerList[] = [ 'name' => $entry, 'is_directory' => true ]; ?>
        <?php } ?>
    <?php } ?>

    <?php $handlerCount = count($handlerList); ?>

    <ul class="file-list-home">
        <?php for ($i = 0; $i < $handlerCount; ++$i) { ?>
            <?php $entry = $handlerList[$i]; ?>

            <li>
                <a href="#">
                    <span class="icomoon icon-file"></span>
                </a>
                <a href="#">
                    <span class="file-name"><?php echo $entry['name']; ?></span>
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