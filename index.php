<?php

    use Librarys\App\AppDirectory;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login', ALERT_LOGIN, 'login.php'));

    $title = lng('home.title_page_root');
    $themes = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_INDEX);
    require_once('header.php');

    $handler = null;

    if (is_dir($appDirectory->getDirectory()) == false) {
        $appDirectory->setDirectory(env('SERVER.DOCUMENT_ROOT'));
        $handler = @scandir($appDirectory->getDirectory());
        $appAlert->danger(lng('home.alert.path_not_exists'));
    } else {
        $handler = @scandir($appDirectory->getDirectory());
    }

    if ($handler === false || $handler == null) {
        $appDirectory->setDirectory(env('SERVER.DOCUMENT_ROOT'));
        $handler = @scandir($appDirectory->getDirectory());
        $appAlert->danger(lng('home.alert.path_not_receiver_list'));
    }

    if ($appDirectory->isPermissionDenyPath())
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectory()));

    if (is_array($handler) == false)
        $handler = array();

    $appAlert->display();

    $handlerCount = count($handler);
    $handlerList  = array();

    $arrayFolder = array();
    $arrayFile   = array();

    foreach ($handler AS $entry) {
        if ($entry != '.' && $entry != '..') {
            if ($entry == env('application.directory') && $appDirectory->isAccessParentPath()) {

            } else if (is_dir($appDirectory->getDirectory() . SP . $entry)) {
                $arrayFolder[] = $entry;
            } else {
                $arrayFile[] = $entry;
            }
        }
    }

    if (count($arrayFolder) > 0) {
        asort($arrayFolder);

        foreach ($arrayFolder AS $entry)
            $handlerList[] = [ 'name' => $entry, 'is_directory' => true ];
    }

    if (count($arrayFile) > 0) {
        asort($arrayFile);

        foreach ($arrayFile AS $entry)
            $handlerList[] = [ 'name' => $entry, 'is_directory' => false ];
    }

    $handlerCount = count($handlerList);
    $handlerPage  = array(
        'current' => $appDirectory->getPage(),
        'begin'   => 0,
        'end'     => $handlerCount,
        'total'   => 0
    );

    if ($handlerCount > 0 && $handlerCount > $appConfig->get('paging.file_home_list')) {
        $handlerPage['total'] = ceil($handlerCount / $appConfig->get('paging.file_home_list'));

        if ($handlerPage['total'] <= 0 || $handlerPage['current'] > $handlerPage['total'])
            $handlerPage['current'] = 1;

        $handlerPage['begin'] = ($handlerPage['current'] * $appConfig->get('paging.file_home_list')) - $appConfig->get('paging.file_home_list');
        $handlerPage['end']   = ($handlerPage['begin'] + $appConfig->get('paging.file_home_list'));

        if ($handlerPage['end'] > $handlerCount)
            $handlerPage['end'] = $handlerCount;
    }

    $buffer = array(
        'back'     => null,
        'location' => null
    );

    if (preg_replace('|[a-zA-Z]+:|', '', str_replace('\\', SP, $appDirectory->getDirectory())) != SP) {
        $backPath = strrchr($appDirectory->getDirectory(), SP);

        if ($backPath !== false) {
            $backPath = substr($appDirectory->getDirectory(), 0, strlen($appDirectory->getDirectory()) - strlen($backPath));
            $backPath = 'index.php?' . AppDirectory::PARAMETER_DIRECTORY_URL . '=' . AppDirectory::rawEncode($backPath);
        } else {
            $backPath = 'index.php';
        }

        $buffer['back'] .= '<li class="back">';
            $buffer['back'] .= '<a href="' . $backPath . '">';
                $buffer['back'] .= '<span class="icomoon icon-folder-open"></span>';
                $buffer['back'] .= '<span>...</span>';
            $buffer['back'] .= '</a>';
        $buffer['back'] .= '</li>';
    }
?>

    <ul class="file-list-home">
        <?php echo $buffer['back']; ?>

        <?php for ($i = $handlerPage['begin']; $i < $handlerPage['end']; ++$i) { ?>
            <?php $entry = $handlerList[$i]; ?>
            <?php $url   = AppDirectory::PARAMETER_DIRECTORY_URL . '=' . AppDirectory::rawEncode($appDirectory->getDirectory() . SP . $entry['name']); ?>

            <li class="<?php if ($entry['is_directory']) { ?>type-directory<?php } else { ?>type-file<?php } ?>">
                <a href="#">
                    <?php if ($entry['is_directory']) { ?>
                        <span class="icomoon icon-folder"></span>
                    <?php } else { ?>
                        <span class="icomoon icon-file"></span>
                    <?php } ?>
                </a>
                <a href="index.php?<?php echo $url; ?>">
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