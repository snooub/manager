<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;
    use Librarys\App\AppFileCopy;

    define('LOADED',      1);
    define('ACTION_COPY', 1);
    define('ACTION_MOVE', 2);

    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'user/login.php');

    if ($appDirectory->isFileExistsDirectorySeparatorName() == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath($appDirectory->getDirectory()))
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectoryAndName()), ALERT_INDEX, env('app.http.host'));

    $appFileCopy     = new AppFileCopy();
    $appLocationPath = new AppLocationPath($appDirectory, 'index.php');
    $appLocationPath->setIsPrintLastEntry(true);
    $appLocationPath->setIsLinkLastEntry(true);

    $appParameter = new AppParameter();
    $appParameter->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectoryEncode(), true);
    $appParameter->add(AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),            $appDirectory->getPage() > 1);
    $appParameter->add(AppDirectory::PARAMETER_NAME_URL,      $appDirectory->getNameEncode(),      true);

    $fileInfo = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $isDirectory = $fileInfo->isDirectory();

    if ($isDirectory)
        $title = lng('file_copy.title_page_directory');
    else
        $title = lng('file_copy.title_page_file');

    $themes  = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_FILE_COPY);
    require_once('incfiles' . SP . 'header.php');

    $forms = [
        'path'   => $appDirectory->getDirectory(),
        'action' => ACTION_COPY
    ];

    if (isset($_POST['browser'])) {
        $forms['path']   = $_POST['path'];
        $forms['action'] = intval($_POST['action']);

        if ($forms['action'] !== ACTION_COPY && $forms['action'] !== ACTION_MOVE) {
            $appAlert->danger(lng('file_copy.alert.action_not_validate'));
        } else {
            $appFileCopy->setSession($appDirectory->getDirectory(), $appDirectory->getName(), $action->action);

            $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
            $appParameter->toString(true);

            $appAlert->gotoURL('index.php' . $appParameter->toString());
        }
    } else if (isset($_POST['copy'])) {
        $forms['path']   = $_POST['path'];
        $forms['action'] = intval($_POST['action']);

        $appFileCopy->clearSession();

        if (empty($forms['path'])) {
            $appAlert->danger(lng('file_copy.alert.not_input_path_copy'));
        } else if ($forms['action'] !== ACTION_COPY && $forms['action'] !== ACTION_MOVE) {
            $appAlert->danger(lng('file_copy.alert.action_not_validate'));
        } else if (FileInfo::validate($forms['path'] . SP . $appDirectory->getName()) == FileInfo::validate($appDirectory->getDirectory() . SP . $appDirectory->getName())) {
            if ($forms['action'] === ACTION_COPY)
                $appAlert->danger(lng('file_copy.alert.path_copy_is_equal_path_current'));
            else
                $appAlert->danger(lng('file_copy.alert.path_move_is_equal_path_current'));
        } else if (@is_dir(FileInfo::validate($forms['path'])) == false) {
            $appAlert->danger(lng('file_copy.alert.path_copy_not_exists'));
        } else if (FileInfo::permissionDenyPath($forms['path'])) {
            $appAlert->danger(lng('file_copy.alert.not_copy_file_to_directory_app'));
        } else {
            $filePathOld            = FileInfo::validate($appDirectory->getDirectory() . SP . $appDirectory->getName());
            $filePathNew            = FileInfo::validate($forms['path'] . SP . $appDirectory->getName());
            $isHasFileAppPermission = false;

            if (FileInfo::copy($filePathOld, $filePathNew, true, $forms['action'] === ACTION_MOVE, $isHasFileAppPermission) == false) {
                if ($isDirectory)
                    $appAlert->danger(lng('file_copy.alert.copy_directory_failed', 'filename', $appDirectory->getName()));
                else
                    $appAlert->danger(lng('file_copy.alert.copy_file_failed', 'filename', $appDirectory->getName()));
            } else {
                if ($isHasFileAppPermission)
                    $appAlert->warning(lng('file_copy.alert.has_file_app_not_permission_copy'), ALERT_INDEX);

                $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
                $appParameter->toString(true);

                if ($isDirectory)
                    $appAlert->success(lng('file_copy.alert.copy_directory_success', 'filename', $appDirectory->getName()), ALERT_INDEX, 'index.php' . $appParameter->toString());
                else
                    $appAlert->success(lng('file_copy.alert.copy_file_success', 'filename', $appDirectory->getName()), ALERT_INDEX, 'index.php' . $appParameter->toString());
            }
        }
    }

    if ($appFileCopy->isSession()) {
        $appFileCopyPathSrc          = FileInfo::validate($appFileCopy->getDirectory() . SP . $appFileCopy->getName());
        $appFileCopyPathDest         = FileInfo::validate($appFileCopy->getPath()      . SP . $appFileCopy->getName());
        $isChooseDirectoryPathFailed = true;

        if (is_dir($appFileCopy->getPath()) == false) {
            $appAlert->danger(lng('file_copy.alert.path_copy_not_exists'), ALERT_INDEX);
        } else if ($appFileCopyPathSrc == $appFileCopyPathDest || $appFileCopyPathSrc == $appFileCopy->getPath()) {
            if ($appFileCopy->isMove())
                $appAlert->danger(lng('file_copy.alert.path_copy_is_equal_path_current'), ALERT_INDEX);
            else
                $appAlert->danger(lng('file_copy.alert.path_move_is_equal_path_current'), ALERT_INDEX);
        } else {
            $forms['path']               = $appFileCopy->getPath();
            $isChooseDirectoryPathFailed = false;

            $appAlert->success(lng('file_copy.alert.directory_path_choose_is_validate', 'path', $appFileCopy->getPath()));
        }

        if ($isChooseDirectoryPathFailed) {
            $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
            $appParameter->toString(true);

            $appAlert->gotoURL('index.php' . $appParameter->toString());
        }
    }
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <div class="form-action">
        <div class="title">
            <?php if ($isDirectory) { ?>
                <span><?php echo lng('file_copy.title_page_directory'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } else { ?>
                <span><?php echo lng('file_copy.title_page_file'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } ?>
        </div>
        <form action="file_copy.php<?php echo $appParameter->toString(); ?>" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input">
                    <span><?php echo lng('file_copy.form.input.path_copy'); ?></span>
                    <input type="text" name="path" value="<?php echo $forms['path']; ?>" placeholder="<?php echo lng('file_copy.form.placeholder.input_path_copy'); ?>"/>
                </li>
                <li class="radio-choose">
                    <ul class="radio-choose-tab">
                        <li>
                            <input type="radio" name="action" value="<?php echo ACTION_COPY; ?>" id="action-copy"<?php if ($forms['action'] === ACTION_COPY) { ?> checked="checked"<?php } ?>/>
                            <label for="action-copy">
                                <span><?php echo lng('file_copy.form.input.radio_action_copy'); ?></span>
                            </label>
                        </li>
                        <li>
                            <input type="radio" name="action" value="<?php echo ACTION_MOVE; ?>" id="action-move"<?php if ($forms['action'] === ACTION_MOVE) { ?> checked="checked"<?php } ?>/>
                            <label for="action-move">
                                <span><?php echo lng('file_copy.form.input.radio_action_move'); ?></span>
                            </label>
                        </li>
                    </ul>
                </li>
                <li class="button">
                    <button type="submit" name="copy">
                        <span><?php echo lng('file_copy.form.button.copy'); ?></span>
                    </button>
                    <button type="submit" name="browser">
                        <span><?php echo lng('file_copy.form.button.browser'); ?></span>
                    </button>
                    <a href="index.php<?php echo $appParameter->toString(); ?>">
                        <span><?php echo lng('file_copy.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="menu-action">
        <li>
            <a href="file_info.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-about"></span>
                <span><?php echo lng('file_info.menu_action.info'); ?></span>
            </a>
        </li>
        <?php if ($isDirectory == false) { ?>
            <li>
                <a href="file_download.php<?php echo $appParameter->toString(); ?>">
                    <span class="icomoon icon-download"></span>
                    <span><?php echo lng('file_info.menu_action.download'); ?></span>
                </a>
            </li>
        <?php } ?>
        <li>
            <a href="file_rename.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-edit"></span>
                <span><?php echo lng('file_info.menu_action.rename'); ?></span>
            </a>
        </li>
        <li>
            <a href="file_delete.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-trash"></span>
                <span><?php echo lng('file_info.menu_action.delete'); ?></span>
            </a>
        </li>
        <li>
            <a href="file_chmod.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-key"></span>
                <span><?php echo lng('file_info.menu_action.chmod'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once('incfiles' . SP . 'footer.php'); ?>

<?php

/*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Sao chép tập tin';

        include_once 'header.php';

        echo '<div class="title">' . $title . '</div>';

        if ($dir == null || $name == null || !is_file(processDirectory($dir . '/' . $name))) {
            echo '<div class="list"><span>Đường dẫn không tồn tại</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php' . $pages['paramater_0'] . '">Danh sách</a></li>
            </ul>';
        } else {
            $dir = processDirectory($dir);
            $format = getFormat($name);

            if (isset($_POST['submit'])) {
                echo '<div class="notice_failure">';

                if (empty($_POST['path']))
                    echo 'Chưa nhập đầy đủ thông tin';
                else if ($dir == processDirectory($_POST['path']))
                    echo 'Đường dẫn mới phải khác đường dẫn hiện tại';
                else if (isPathNotPermission(processDirectory($_POST['path'])))
                    echo 'Bạn không thể sao chép tập tin tới đường dẫn của File Manager';
                else if (!@copy($dir . '/' . $name, processDirectory($_POST['path']) . '/' . $name))
                    echo 'Sao chép tập tin thất bại';
                else
                    goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);

                echo '</div>';
            }

            echo '<div class="list">
                <span class="bull">&bull;</span><span>' . printPath($dir . '/' . $name) . '</span><hr/>
                <form action="file_copy.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '" method="post">
                    <span class="bull">&bull;</span>Đường dẫn tập tin mới:<br/>
                    <input type="text" name="path" value="' . (isset($_POST['path']) ? $_POST['path'] : $dir) . '" size="18"/><br/>
                    <input type="submit" name="submit" value="Sao chép"/>
                </form>
            </div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/info.png"/> <a href="file.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Thông tin</a></li>';

                if (isFormatText($name)) {
                    echo '<li><img src="icon/edit.png"/> <a href="edit_text.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Sửa văn bản</a></li>';
                    echo '<li><img src="icon/edit_text_line.png"/> <a href="edit_text_line.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Sửa theo dòng</a></li>';
                } else if (in_array($format, $formats['zip'])) {
                    echo '<li><img src="icon/unzip.png"/> <a href="file_viewzip.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Xem</a></li>';
                    echo '<li><img src="icon/unzip.png"/> <a href="file_unzip.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Giải nén</a></li>';
                } else if (isFormatUnknown($name)) {
                    echo '<li><img src="icon/edit.png"/> <a href="edit_text.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Sửa dạng văn bản</a></li>';
                }

                echo '<li><img src="icon/download.png"/> <a href="file_download.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Tải về</a></li>
                <li><img src="icon/rename.png"/> <a href="file_rename.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Đổi tên</a></li>
                <li><img src="icon/move.png"/> <a href="file_move.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Di chuyển</a></li>
                <li><img src="icon/delete.png"/> <a href="file_delete.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Xóa</a></li>
                <li><img src="icon/access.png"/> <a href="file_chmod.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Chmod</a></li>
                <li><img src="icon/list.png"/> <a href="index.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        }

        include_once 'footer.php';
    } else {
        goURL('login.php');
    }*/

?>
