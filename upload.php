<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'login.php');

    $title   = lng('upload.title_page');
    $themes  = [ env('resource.theme.file') ];
    $scripts = [ env('resource.javascript.custom_input_file') ];
    $appAlert->setID(ALERT_UPLOAD);
    require_once('header.php');

    if ($appDirectory->getDirectory() == null || is_dir($appDirectory->getDirectory()) == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath($appDirectory->getDirectory()))
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectory()), ALERT_INDEX, env('app.http.host'));

    $appLocationPath = new AppLocationPath($appDirectory, 'upload.php?');
    $appLocationPath->setIsPrintLastEntry(true);

    $parameter = AppDirectory::createUrlParameter(
        AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectory(), true,
        AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),      $appDirectory->getPage() > 1
    );

?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('upload.title_page'); ?></span>
        </div>
        <form action="upload.php<?php echo $parameter; ?>" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input-file">
                    <input type="file" name="files[]" id="file-0"/>
                    <label for="file-0">
                        <span>Chon tap tin...</span>
                    </label>
                </li>
                <li class="input-file">
                    <input type="file" name="files[]" id="file-1"/>
                    <label for="file-1">
                        <span>Chon tap tin...</span>
                    </label>
                </li>
                <li class="input-file">
                    <input type="file" name="files[]" id="file-2"/>
                    <label for="file-2">
                        <span>Chon tap tin...</span>
                    </label>
                </li>
                <li class="input-file">
                    <input type="file" name="files[]" id="file-3"/>
                    <label for="file-3">
                        <span>Chon tap tin...</span>
                    </label>
                </li>
                <li class="input-file">
                    <input type="file" name="files[]" id="file-4"/>
                    <label for="file-4">
                        <span>Chon tap tin...</span>
                    </label>
                </li>
                <li class="button">
                    <button type="submit" name="upload">
                        <span><?php echo lng('upload.form.button.upload'); ?></span>
                    </button>
                    <a href="index.php<?php echo $parameter; ?>">
                        <span><?php echo lng('upload.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="menu-action">
        <li>
            <a href="create.php<?php echo $parameter; ?>">
                <span class="icomoon icon-folder-create"></span>
                <span><?php echo lng('home.menu_action.create'); ?></span>
            </a>
        </li>
        <li>
            <a href="import.php<?php echo $parameter; ?>">
                <span class="icomoon icon-folder-download"></span>
                <span><?php echo lng('home.menu_action.import'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once('footer.php'); ?>

<?php /*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Tải lên tập tin';

        include_once 'header.php';

        echo '<div class="title">' . $title . '</div>';

        if ($dir == null || !is_dir(processDirectory($dir))) {
            echo '<div class="list"><span>Đường dẫn không tồn tại</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php' . $pages['paramater_0'] . '">Danh sách</a></li>
            </ul>';
        } else {
            $dir = processDirectory($dir);

            if (isset($_POST['submit'])) {
                $isEmpty = true;

                foreach ($_FILES['file']['name'] AS $entry) {
                    if (!empty($entry)) {
                        $isEmpty = false;
                        break;
                    }
                }

                if ($isEmpty) {
                    echo '<div class="notice_failure">Chưa chọn tập tin</div>';
                } else {
                    for ($i = 0; $i < count($_FILES['file']['name']); ++$i) {
                        if (!empty($_FILES['file']['name'][$i])) {
                            if ($_FILES['file']['error'] == UPLOAD_ERR_INI_SIZE) {
                                echo '<div class="notice_failure">Tập tin <strong class="file_name_upload">' . $_FILES['file']['name'][$i] . '</strong> vượt quá kích thước cho phép</div>';
                            } else {
                                if (copy($_FILES['file']['tmp_name'][$i], $dir . '/' . str_replace(array('_jar', '.jar1', '.jar2'), '.jar', $_FILES['file']['name'][$i])))
                                    echo '<div class="notice_succeed">Tải lên tập tin <strong class="file_name_upload">' . $_FILES['file']['name'][$i] . '</strong>, <span class="file_size_upload">' . size($_FILES['file']['size'][$i]) . '</span> thành công</div>';
                                else
                                    echo '<div class="notice_failure">Tải lên tập tin <strong class="file_name_upload">' . $_FILES['file']['name'][$i] . '</strong> thất bại</div>';
                            }
                        }
                    }
                }
            }

            echo '<div class="list">
                <span>' . printPath($dir, true) . '</span><hr/>
                <form action="upload.php?dir=' . $dirEncode . $pages['paramater_1'] . '" method="post" enctype="multipart/form-data">
                    <span class="bull">&bull;</span>Tập tin 1:<br/>
                    <input type="file" name="file[]" size="18"/><br/>
                    <span class="bull">&bull;</span>Tập tin 2:<br/>
                    <input type="file" name="file[]" size="18"/><br/>
                    <span class="bull">&bull;</span>Tập tin 3:<br/>
                    <input type="file" name="file[]" size="18"/><br/>
                    <span class="bull">&bull;</span>Tập tin 4:<br/>
                    <input type="file" name="file[]" size="18"/><br/>
                    <span class="bull">&bull;</span>Tập tin 5:<br/>
                    <input type="file" name="file[]" size="18"/><br/>
                    <input type="submit" name="submit" value="Tải lên"/>
                </form>
            </div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/create.png"/> <a href="create.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Tạo mới</a></li>
                <li><img src="icon/import.png"/> <a href="import.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Nhập khẩu tập tin</a></li>
                <li><img src="icon/list.png"/> <a href="index.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        }

        include_once 'footer.php';
    } else {
        goURL('login.php');
    }*/

?>