<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'login.php');

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

    $fileInfo = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $isDirectory = $fileInfo->isDirectory();

    if ($isDirectory)
        $title = lng('file_chmod.title_page_directory');
    else
        $title = lng('file_chmod.title_page_file');

    $themes = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_FILE_CHMOD);
    require_once('header.php');
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <div class="form-action">
        <div class="title">
            <?php if ($isDirectory) { ?>
                <span><?php echo lng('file_chmod.title_page_directory'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } else { ?>
                <span><?php echo lng('file_chmod.title_page_file'); ?>: <?php echo $appDirectory->getName(); ?></span>
            <?php } ?>
        </div>
        <form action="file_chmod.php<?php echo $appParameter->toString(); ?>" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input">
                    <?php if ($isDirectory) { ?>
                        <span><?php echo lng('file_chmod.form.input.chmod_directory'); ?></span>
                    <?php } else { ?>
                        <span><?php echo lng('file_chmod.form.input.chmod_file'); ?></span>
                    <?php } ?>
                    <input type="text" name="name" value="" placeholder="<?php if ($isDirectory) echo lng('file_rename.form.placeholder.input_name_directory'); else echo lng('file_rename.form.placeholder.input_name_file'); ?>"/>
                </li>
                <li class="input-chmod">
                    <ul>
                        <li><span><?php echo lng('file_chmod.form.input.chmod_label_system'); ?></span></li>
                        <li><span><?php echo lng('file_chmod.form.input.chmod_label_group'); ?></span></li>
                        <li><span><?php echo lng('file_chmod.form.input.chmod_label_user'); ?></span></li>

                        <?php for ($i = 0; $i < 3; ++$i) { ?>
                            <li>
                                <input type="checkbox" name="chmod-read[<?php echo $i; ?>]" value="4" id="chmod-read-<?php echo $i; ?>"/>
                                <label for="chmod-read-<?php echo $i; ?>">
                                    <span><?php echo lng('file_chmod.form.input.chmod_value_read'); ?></span>
                                </label>
                            </li>
                        <?php } ?>
                        <?php for ($i = 0; $i < 3; ++$i) { ?>
                            <li>
                                <input type="checkbox" name="chmod-write[<?php echo $i; ?>]" value="2" id="chmod-write-<?php echo $i; ?>"/>
                                <label for="chmod-write-<?php echo $i; ?>">
                                    <span><?php echo lng('file_chmod.form.input.chmod_value_write'); ?></span>
                                </label>
                            </li>
                        <?php } ?>
                        <?php for ($i = 0; $i < 3; ++$i) { ?>
                            <li>
                                <input type="checkbox" name="chmod-execute[<?php echo $i; ?>]" value="1" id="chmod-execute-<?php echo $i; ?>"/>
                                <label for="chmod-execute-<?php echo $i; ?>">
                                    <span><?php echo lng('file_chmod.form.input.chmod_value_execute'); ?></span>
                                </label>
                            </li>
                        <?php } ?>
                    </ul>
                </li>
                <li class="button">
                    <button type="submit" name="rename">
                        <span><?php echo lng('file_chmod.form.button.chmod'); ?></span>
                    </button>
                    <a href="index.php<?php echo $appParameter->toString(); ?>">
                        <span><?php echo lng('file_chmod.form.button.cancel'); ?></span>
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
                <a href="download.php<?php echo $appParameter->toString(); ?>">
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
    </ul>

<?php require_once('footer.php'); ?>


<?php

/*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Chmod tập tin';

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

                if (empty($_POST['mode']))
                    echo 'Chưa nhập đầy đủ thông tin';
                else if (!@chmod($dir . '/' . $name, intval($_POST['mode'], 8)))
                    echo 'Chmod tập tin thất bại';
                else
                    goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);

                echo '</div>';
            }

            echo '<div class="list">
                <span class="bull">&bull;</span><span>' . printPath($dir . '/' . $name) . '</span><hr/>
                <form action="file_chmod.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '" method="post">
                    <span class="bull">&bull;</span>Chế độ:<br/>
                    <input type="text" name="mode" value="' . (isset($_POST['mode']) ? $_POST['mode'] : getChmod($dir . '/' . $name)) . '" size="18"/><br/>
                    <input type="submit" name="submit" value="Chmod"/>
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
                <li><img src="icon/copy.png"/> <a href="file_copy.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Sao chép</a></li>
                <li><img src="icon/move.png"/> <a href="file_move.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Di chuyển</a></li>
                <li><img src="icon/delete.png"/> <a href="file_delete.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Xóa</a></li>
                <li><img src="icon/list.png"/> <a href="index.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        }

        include_once 'footer.php';
    } else {
        goURL('login.php');
    }*/

?>