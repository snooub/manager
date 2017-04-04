<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\AppPaging;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;
    use Librarys\App\AppFileCopy;

    use Librarys\File\FileInfo;
    use Librarys\File\FileMime;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'user/login.php');

    $title  = lng('home.title_page_root');
    $themes = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_INDEX);
    require_once('incfiles' . SP . 'header.php');

    $handler              = null;
    $isPermissionDenyPath = $appDirectory->isPermissionDenyPath();

    if ($isPermissionDenyPath)
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectory()));

    if ($isPermissionDenyPath || is_readable($appDirectory->getDirectory()) == false || is_dir($appDirectory->getDirectory()) == false) {
        $appDirectory->setDirectory(env('SERVER.DOCUMENT_ROOT'));
        $handler = @scandir($appDirectory->getDirectory());

        if ($isPermissionDenyPath == false)
            $appAlert->danger(lng('home.alert.path_not_exists'));
    } else {
        $handler = @scandir($appDirectory->getDirectory());
    }

    if ($handler === false || $handler == null) {
        $appDirectory->setDirectory(env('SERVER.DOCUMENT_ROOT'));
        $handler = @scandir($appDirectory->getDirectory());
        $appAlert->danger(lng('home.alert.path_not_receiver_list'));
    }

    if (is_array($handler) == false)
        $handler = array();

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
        'current'  => $appDirectory->getPage(),
        'begin'    => 0,
        'end'      => $handlerCount,
        'total'    => 0,
        'list_max' => $appConfig->get('paging.file_home_list')
    );

    if ($handlerCount > 0 && $handlerPage['list_max'] > 0 && $handlerCount > $handlerPage['list_max']) {
        $handlerPage['total'] = ceil($handlerCount / $handlerPage['list_max']);

        if ($handlerPage['total'] <= 0 || $handlerPage['current'] > $handlerPage['total'])
            $handlerPage['current'] = 1;

        $handlerPage['begin'] = ($handlerPage['current'] * $handlerPage['list_max']) - $handlerPage['list_max'];
        $handlerPage['end']   = ($handlerPage['begin'] + $handlerPage['list_max']);

        if ($handlerPage['end'] > $handlerCount)
            $handlerPage['end'] = $handlerCount;
    }

    $bufferBack = null;

    if (preg_replace('|[a-zA-Z]+:|', '', str_replace('\\', SP, $appDirectory->getDirectory())) != SP) {
        $backPath      = strrchr($appDirectory->getDirectory(), SP);
        $backDirectory = $backPath;

        if ($backPath !== false) {
            $backPath = substr($appDirectory->getDirectory(), 0, strlen($appDirectory->getDirectory()) - strlen($backPath));
            $backPath = 'index.php?' . AppDirectory::PARAMETER_DIRECTORY_URL . '=' . AppDirectory::rawEncode($backPath);

            if (strpos($backDirectory, SP) !== false)
                $backDirectory = str_replace(SP, null, $backDirectory);
        } else {
            $backPath      = 'index.php';
            $backDirectory = $appDirectory->getDirectory();
        }

        $bufferBack .= '<li class="back">';
            $bufferBack .= '<a href="' . $backPath . '">';
                $bufferBack .= '<span class="icomoon icon-folder-open"></span>';
                $bufferBack .= '<strong>' . $backDirectory . '</strong>';
            $bufferBack .= '</a>';
        $bufferBack .= '</li>';
    }

    $appLocationPath = new AppLocationPath($appDirectory, 'index.php');
    $pagePaging      = new AppPaging(
        'index.php?' . AppDirectory::PARAMETER_DIRECTORY_URL . '=' . $appDirectory->getDirectoryEncode(),

        'index.php?' . AppDirectory::PARAMETER_DIRECTORY_URL . '=' . $appDirectory->getDirectoryEncode() .
                 '&' . AppDirectory::PARAMETER_PAGE_URL      . '='
    );

    $appFileCopy = new AppFileCopy();

    if ($appFileCopy->isSession()) {
        $isDirectoryCopy         = is_dir(FileInfo::validate($appFileCopy->getDirectory() . SP . $appFileCopy->getName()));
        $isDirectoryCurrentEqual = false;

        $appFileCopyHrefParamater = new AppParameter();
        $appFileCopyHrefParamater->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appFileCopy->getDirectory(), true);
        $appFileCopyHrefParamater->add(AppDirectory::PARAMETER_NAME_URL,      $appFileCopy->getName(),      true);
        $appFileCopyHrefParamater->add(AppDirectory::PARAMETER_PAGE_URL,      $appFileCopy->getPage(),      $appFileCopy->getPage() > 1);

        $appFileCopyHref = 'file_copy.php' . $appFileCopyHrefParamater->toString(true);

        if ($appDirectory->getDirectory() == FileInfo::validate($appFileCopy->getDirectory() . SP . $appFileCopy->getName()) ||
            $appDirectory->getDirectory() == FileInfo::validate($appFileCopy->getDirectory()))
        {
            if ($appFileCopy->isMove() == false)
                $appAlert->danger(lng('file_copy.alert.path_copy_is_equal_path_current'));
            else
                $appAlert->danger(lng('file_copy.alert.path_move_is_equal_path_current'));

            $isDirectoryCurrentEqual = true;
        }

        if ($appFileCopy->isMove() == false) {
            if ($isDirectoryCurrentEqual) {
                if ($isDirectoryCopy)
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_copy_directory', 'filename', $appFileCopy->getName()), ALERT_INDEX);
                else
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_copy_file', 'filename', $appFileCopy->getName()), ALERT_INDEX);
            } else {
                if ($isDirectoryCopy)
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_copy_directory_href', 'filename', $appFileCopy->getName(), 'href', $appFileCopyHref), ALERT_INDEX);
                else
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_copy_file_href', 'filename', $appFileCopy->getName(), 'href', $appFileCopyHref), ALERT_INDEX);
            }
        } else {
            if ($isDirectoryCurrentEqual) {
                if ($isDirectoryCopy)
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_move_directory_href', 'filename', $appFileCopy->getName()), ALERT_INDEX);
                else
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_move_file_href', 'filename', $appFileCopy->getName()), ALERT_INDEX);
            } else {
                if ($isDirectoryCopy)
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_move_directory_href', 'filename', $appFileCopy->getName(), 'href', $appFileCopyHref), ALERT_INDEX);
                else
                    $appAlert->info(lng('file_copy.alert.choose_directory_path_for_move_file_href', 'filename', $appFileCopy->getName(), 'href', $appFileCopyHref), ALERT_INDEX);
            }
        }

        $appFileCopy->setPath($appDirectory->getDirectory());
        $appFileCopy->flushSession();
    }
?>

    <?php echo $appAlert->display(); ?>
    <?php echo $appLocationPath->display(); ?>

    <?php
        $appParameter = new AppParameter();
        $appParameter->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectoryEncode(), true);
        $appParameter->add(AppDirectory::PARAMETER_PAGE_URL,      $handlerPage['current'],            $handlerPage['current'] > 1);
    ?>

    <ul class="file-list-home">
        <?php echo $bufferBack; ?>

        <?php if ($handlerCount > 0) { ?>
            <?php for ($i = $handlerPage['begin']; $i < $handlerPage['end']; ++$i) { ?>
                <?php $entry        = $handlerList[$i]; ?>
                <?php $entryPath    = FileInfo::validate($appDirectory->getDirectory() . SP . $entry['name']); ?>
                <?php $chmodPerms   = FileInfo::getChmodPermission($entryPath); ?>
                <?php $urlParameter = $appParameter->toString() . '&' . AppDirectory::PARAMETER_NAME_URL . '=' . AppDirectory::rawEncode($entry['name']); ?>

                <?php if ($entry['is_directory']) { ?>
                    <li class="type-directory">
                        <div class="icon">
                            <a href="file_info.php<?php echo $urlParameter; ?>">
                                <span class="icomoon icon-folder"></span>
                            </a>
                        </div>
                        <a href="index.php?<?php echo AppDirectory::PARAMETER_DIRECTORY_URL . '=' . AppDirectory::rawEncode($entryPath); ?>" class="file-name">
                            <span><?php echo $entry['name']; ?></span>
                        </a>
                        <a href="file_chmod.php<?php echo $urlParameter; ?>" class="chmod-permission">
                            <span><?php echo $chmodPerms; ?></span>
                        </a>
                    </li>
                <?php } else { ?>
                    <?php $info   = new FileInfo($entryPath); ?>
                    <?php $mime   = new FileMime($info); ?>
                    <?php $icon   = null; ?>
                    <?php $isEdit = false; ?>

                    <?php
                        if ($mime->isFormatText()) {
                            $icon   = 'icon-file-text';
                            $isEdit = true;
                        } else if ($mime->isFormatCode()) {
                            $icon   = 'icon-file-code';
                            $isEdit = true;
                        } else if ($mime->isFormatArchive()) {
                            $icon   = 'icon-file-archive';
                            $isEdit = false;
                        } else if ($mime->isFormatAudio()) {
                            $icon   = 'icon-file-audio';
                            $isEdit = false;
                        } else if ($mime->isFormatVideo()) {
                            $icon   = 'icon-file-video';
                            $isEdit = false;
                        } else if ($mime->isFormatDocument()) {
                            $icon   = 'icon-file-document';
                            $isEdit = false;
                        } else if ($mime->isFormatImage()) {
                            $icon   = 'icon-file-image';
                            $isEdit = false;
                        } else if ($mime->isFormatSource()) {
                            $icon   = 'icon-file-code';
                            $isEdit = true;
                        } else {
                            $icon   = 'icon-file';
                            $isEdit = true;
                        }
                    ?>

                    <li class="type-file">
                        <div class="icon">
                            <?php if ($isEdit) { ?><a href="#"><?php } ?>
                                <span class="icomoon <?php echo $icon; ?>"></span>
                            <?php if ($isEdit) { ?></a><?php } ?>
                        </div>
                        <a href="file_info.php<?php echo $urlParameter; ?>" class="file-name">
                            <span><?php echo $entry['name']; ?></span>
                        </a>
                        <a href="file_chmod.php<?php echo $urlParameter; ?>" class="chmod-permission">
                            <span><?php echo $chmodPerms; ?></span>
                        </a>
                    </li>
                <?php } ?>
            <?php } ?>
        <?php } else { ?>
            <li class="empty">
                <span class="icomoon icon-folder-o"></span>
                <span><?php echo lng('home.directory_empty'); ?></span>
            </li>
        <?php } ?>

        <?php if ($appConfig->get('paging.file_home_list') > 0 && $handlerPage['total'] > 1) { ?>
            <li class="paging">
                <?php echo $pagePaging->display($handlerPage['current'], $handlerPage['total']); ?>
            </li>
        <?php } ?>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="create.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-folder-create"></span>
                <span><?php echo lng('home.menu_action.create'); ?></span>
            </a>
        </li>
        <li>
            <a href="upload.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-folder-upload"></span>
                <span><?php echo lng('home.menu_action.upload'); ?></span>
            </a>
        </li>
        <li>
            <a href="import.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-folder-download"></span>
                <span><?php echo lng('home.menu_action.import'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once('incfiles' . SP . 'footer.php'); ?>
