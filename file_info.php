<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'user/login.php');

    if ($appDirectory->isFileExistsDirectorySeparatorName() == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath($appDirectory->getDirectory()))
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectoryAndName()), ALERT_INDEX, env('app.http.host'));

    $appLocationPath = new AppLocationPath($appDirectory, 'index.php');
    $appLocationPath->setIsPrintLastEntry(true);
    $appLocationPath->setIsLinkLastEntry(true);

    $appParameter = new AppParameter();
    $appParameter->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectoryEncode(), true);
    $appParameter->add(AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),            $appDirectory->getPage() > 1);
    $appParameter->add(AppDirectory::PARAMETER_NAME_URL,      $appDirectory->getNameEncode(),      true);

    $fileInfo    = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $isDirectory = $fileInfo->isDirectory();

    if ($isDirectory)
        $title = lng('file_info.title_page_directory');
    else
        $title = lng('file_info.title_page_file');

    $themes = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_FILE_INFO);
    require_once('incfiles' . SP . 'header.php');
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <ul class="file-info">
        <li class="title">
            <?php if ($isDirectory) { ?>
                <span><?php echo lng('file_info.title_page_directory'); ?></span>
            <?php } else { ?>
                <span><?php echo lng('file_info.title_page_file'); ?></span>
            <?php } ?>
        </li>
        <li class="label">
            <ul>
                <li><span><?php echo lng('file_info.label_name'); ?></span></li>
                <li><span><?php echo lng('file_info.label_format'); ?></span></li>
                <li><span><?php echo lng('file_info.label_size'); ?></span></li>
                <li><span><?php echo lng('file_info.label_chmod'); ?></span></li>
                <li><span><?php echo lng('file_info.label_time_modify'); ?></span></li>
            </ul>
        </li>
        <li class="value">
            <ul>
                <li>
                    <span><?php echo $fileInfo->getFileName(); ?></span>
                </li>
                <li>
                    <?php if ($isDirectory) { ?>
                        <span><?php echo lng('file_info.format_directory'); ?></span>
                    <?php } else { ?>
                        <span><?php echo $fileInfo->getFileExt(); ?></span>
                    <?php } ?>
                </li>
                <li>
                    <span><?php echo FileInfo::sizeToString(filesize($fileInfo->getFilePath())); ?></span>
                </li>
                <li>
                    <span><?php echo FileInfo::getChmodPermission($fileInfo->getFilePath()); ?></span>
                </li>
                <li>
                    <span><?php echo date('H:i - d.m.Y', filemtime($fileInfo->getFilePath())); ?></span>
                </li>
            </ul>
        </li>
    </ul>

    <ul class="menu-action">
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
            <a href="file_copy.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-copy"></span>
                <span><?php echo lng('file_info.menu_action.copy'); ?></span>
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
        $title = 'Thông tin tập tin';

        include_once 'header.php';

        echo '<div class="title">' . $title . '</div>';

        if ($dir == null || $name == null || !is_file(processDirectory($dir . '/' . $name))) {
            echo '<div class="list"><span>Đường dẫn không tồn tại</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php' . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        } else {
            $dir = processDirectory($dir);
            $path = $dir . '/' . $name;
            $format = getFormat($name);
            $isImage = false;
            $pixel = null;

            echo '<ul class="info">';
            echo '<li class="not_ellipsis"><span class="bull">&bull;</span><strong>Đường dẫn</strong>: <span>' . printPath($dir, true) . '</span></li>';

                if ($format != null && in_array($format, array('png', 'ico', 'jpg', 'jpeg', 'gif', 'bmp'))) {
                    $pixel = getimagesize($path);
                    $isImage = true;

                    echo '<li><center><img src="read_image.php?path=' . rawurlencode($path) . '" width="' . ($pixel[0] > 200 ? 200 : $pixel[0]) . 'px"/></center><br/></li>';
                }

                echo '<li><span class="bull">&bull;</span><strong>Tên</strong>: <span>' . $name . '</span></li>
                <li><span class="bull">&bull;</span><strong>Kích thước</strong>: <span>' . size(filesize($path)) . '</span></li>
                <li><span class="bull">&bull;</span><strong>Chmod</strong>: <span>' . getChmod($path) . '</span></li>';

                if ($isImage)
                    echo '<li><span class="bull">&bull;</span><strong>Độ phân giải</strong>: <span>' . $pixel[0] . 'x' . $pixel[1] . '</span></li>';

                echo '<li><span class="bull">&bull;</span><strong>Định dạng</strong>: <span>' . ($format == null ? 'Không rõ' : $format) . '</span></li>
                <li><span class="bull">&bull;</span><strong>Ngày sửa</strong>: <span>' . @date('d.m.Y - H:i', filemtime($path)) . '</span></li>
            </ul>
            <div class="title">Chức năng</div>
            <ul class="list">';

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
