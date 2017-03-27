<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'login.php');

    if ($appDirectory->getDirectory() == null || is_dir($appDirectory->getDirectory()) == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath($appDirectory->getDirectory()))
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectory()), ALERT_INDEX, env('app.http.host'));

    $appLocationPath = new AppLocationPath($appDirectory, 'index.php');
    $appLocationPath->setIsPrintLastEntry(true);
    $appLocationPath->setIsLinkLastEntry(true);

    $parameter = AppDirectory::createUrlParameter(
        AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectory(), true,
        AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),      $appDirectory->getPage() > 1,
        AppDirectory::PARAMETER_NAME_URL,      $appDirectory->getName(),      true
    );

    $fileInfo    = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $isDirectory = $fileInfo->isDirectory();

    if ($isDirectory)
        $title = lng('file_rename.title_page_directory');
    else
        $title = lng('file_rename.title_page_file');

    $themes  = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_FILE_RENAME);
    require_once('header.php');

    $forms = [
        'name'     => null,
        'path_old' => null,
        'path_new' => null
    ];

    if (isset($_POST['rename'])) {
        $forms['name'] = addslashes($_POST['name']);

        if (empty($forms['name'])) {
            if ($isDirectory)
                $appAlert->danger(lng('file_rename.alert.not_input_name_directory'));
            else
                $appAlert->danger(lng('file_rename.alert.not_input_name_file'));
        } else if (FileInfo::isNameError($forms['name'])) {
            if ($isDirectory)
                $appAlert->danger(lng('file_rename.alert.name_directory_not_validate'));
            else
                $appAlert->danger(lng('file_rename.alert.name_file_not_validate'));
        } else if ($appDirectory->getName() == $forms['name']) {
            $appAlert->danger(lng('file_rename.alert.name_not_change'));
        } else {
            $forms['path_old'] = FileInfo::validate($appDirectory->getDirectory() . SP . $appDirectory->getName());
            $forms['path_new'] = FileInfo::validate($appDirectory->getDirectory() . SP . $forms['name']);

            if (FileInfo::rename($forms['path_old'], $forms['path_new']) == false) {
                if ($isDirectory)
                    $appAlert->danger(lng('file_rename.alert.rename_directory_failed'));
                else
                    $appAlert->danger(lng('file_rename.alert.rename_file_failed'));
            } else {
                $redirect = 'file_rename.php' . AppDirectory::createUrlParameter(
                    AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectory(),           true,
                    AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage() > 1,            true,
                    AppDirectory::PARAMETER_NAME_URL,      AppDirectory::rawEncode($forms['name']), true
                );

                if ($isDirectory)
                    $appAlert->success(lng('file_rename.alert.rename_directory_success'), null, $redirect);
                else
                    $appAlert->success(lng('file_rename.alert.rename_file_success'), null, $redirect);
            }
        }
    }
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <div class="form-action">
        <div class="title">
            <?php if ($isDirectory) { ?>
                <span><?php echo lng('file_rename.title_page_directory'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } else { ?>
                <span><?php echo lng('file_rename.title_page_file'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } ?>
        </div>
        <form action="file_rename.php<?php echo $parameter; ?>" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input">
                    <?php if ($isDirectory) { ?>
                        <span><?php echo lng('file_rename.form.input.name_directory'); ?></span>
                    <?php } else { ?>
                        <span><?php echo lng('file_rename.form.input.name_file'); ?></span>
                    <?php } ?>
                    <input type="text" name="name" value="<?php echo $appDirectory->getName(); ?>" placeholder="<?php if ($isDirectory) echo lng('file_rename.form.placeholder.input_name_directory'); else echo lng('file_rename.form.placeholder.input_name_file'); ?>"/>
                </li>
                <li class="button">
                    <button type="submit" name="rename">
                        <span><?php echo lng('file_rename.form.button.rename'); ?></span>
                    </button>
                    <a href="index.php<?php echo $parameter; ?>">
                        <span><?php echo lng('file_rename.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="menu-action">
        <li>
            <a href="file_info.php<?php echo $parameter; ?>">
                <span class="icomoon icon-about"></span>
                <span><?php echo lng('file_info.menu_action.info'); ?></span>
            </a>
        </li>
        <li>
            <a href="download.php<?php echo $parameter; ?>">
                <span class="icomoon icon-download"></span>
                <span><?php echo lng('file_info.menu_action.download'); ?></span>
            </a>
        </li>
        <li>
            <a href="file_copy.php<?php echo $parameter; ?>">
                <span class="icomoon icon-copy"></span>
                <span><?php echo lng('file_info.menu_action.copy'); ?></span>
            </a>
        </li>
        <li>
            <a href="file_delete.php<?php echo $parameter; ?>">
                <span class="icomoon icon-trash"></span>
                <span><?php echo lng('file_info.menu_action.delete'); ?></span>
            </a>
        </li>
        <li>
            <a href="file_chmod.php<?php echo $parameter; ?>">
                <span class="icomoon icon-key"></span>
                <span><?php echo lng('file_info.menu_action.chmod'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once('footer.php'); ?>

<?php

/*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Đổi tên tập tin';

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

                if (empty($_POST['name']))
                    echo 'Chưa nhập đầy đủ thông tin';
                else if (isNameError($_POST['name']))
                    echo 'Tên tập tin không hợp lệ';
                else if (!@rename($dir . '/' . $name, $dir . '/' . $_POST['name']))
                    echo 'Thay đổi thất bại';
                else
                    goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);

                echo '</div>';
            }

            echo '<div class="list">
                <span class="bull">&bull;</span><span>' . printPath($dir . '/' . $name) . '</span><hr/>
                <form action="file_rename.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '" method="post">
                    <span class="bull">&bull;</span>Tên tập tin:<br/>
                    <input type="text" name="name" value="' . (isset($_POST['name']) ? $_POST['name'] : $name) . '" size="18"/><br/>
                    <input type="submit" name="submit" value="Thay đổi"/>
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
                <li><img src="icon/copy.png"/> <a href="file_copy.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Sao chép</a></li>
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