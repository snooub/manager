<?php

    use Librarys\File\FileInfo;
    use Librarys\File\FileMime;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;
    use Librarys\Zip\PclZip;

    define('LOADED',               1);
    define('EXISTS_FUNC_OVERRIDE', 1);
    define('EXISTS_FUNC_SKIP',     2);
    define('EXISTS_FUNC_RENAME',   3);

    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'user/login.php');

    if ($appDirectory->isFileSeparatorNameExists() == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath())
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectoryAndName()), ALERT_INDEX, env('app.http.host'));

    $appLocationPath = new AppLocationPath($appDirectory, 'index.php');
    $appLocationPath->setIsPrintLastEntry(true);
    $appLocationPath->setIsLinkLastEntry(true);

    $appParameter = new AppParameter();
    $appParameter->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectoryEncode(), true);
    $appParameter->add(AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),            $appDirectory->getPage() > 1);
    $appParameter->add(AppDirectory::PARAMETER_NAME_URL,      $appDirectory->getNameEncode(),      true);

    $fileInfo    = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $fileMime    = new FileMime($fileInfo);
    $isDirectory = $fileInfo->isDirectory();

    if ($isDirectory) {
        $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, $appParameter->toString(true));
    }

    if ($fileMime->isFormatArchiveZip() == false) {
        $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
        $appAlert->danger(lng('file_unzip.alert.file_is_not_format_archive_zip'), ALERT_INDEX, $appParameter->toString(true));
    }

    $title   = lng('file_unzip.title_page');
    $themes  = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_FILE_UNZIP);
    require_once('incfiles' . SP . 'header.php');

    $forms = [
        'path'        => $appDirectory->getDirectory(),
        'exists_func' => EXISTS_FUNC_OVERRIDE
    ];

    if (isset($_POST['browser'])) {
        $forms['path']        = $_POST['path'];
        $forms['action']      = intval($_POST['action']);
        $forms['exists_func'] = intval($_POST['exists_func']);

        if ($forms['action'] !== ACTION_COPY && $forms['action'] !== ACTION_MOVE) {
            $appAlert->danger(lng('file_copy.alert.action_not_validate'));
        } else {
            $appFileCopy->setSession($appDirectory->getDirectory(), $appDirectory->getName(), $forms['action'] === ACTION_MOVE, $forms['exists_func']);

            $appParameter->remove(AppDirectory::PARAMETER_NAME_URL);
            $appParameter->toString(true);

            $appAlert->gotoURL('index.php' . $appParameter->toString());
        }
    } else if (isset($_POST['unzip'])) {
        $forms['path']        = $_POST['path'];
        $forms['exists_func'] = intval($_POST['exists_func']);

        //$appFileCopy->clearSession();

        if (empty($forms['path'])) {
            $appAlert->danger(lng('file_unzip.alert.not_input_path_unzip'));
        } else if ($forms['exists_func'] !== EXISTS_FUNC_OVERRIDE &&
                   $forms['exists_func'] !== EXISTS_FUNC_SKIP     &&
                   $forms['exists_func'] !== EXISTS_FUNC_RENAME)
        {
            $appAlert->danger(lng('file_unzip.alert.exists_func_not_validate'));
        } else if (@is_dir(FileInfo::validate($forms['path'])) == false) {
            $appAlert->danger(lng('file_unzip.alert.path_unzip_not_exists'));
        } else if (FileInfo::permissionDenyPath($forms['path'])) {
            $appAlert->danger(lng('file_unzip.alert.not_unzip_file_to_directory_app'));
        } else {
            $pclzip = new PclZip($appDirectory->getDirectory() . SP . $appDirectory->getName());

            $callbackPreExtract = function($event, $header) {
                return isPathNotPermission($header['filename']) == false ? 1 : 0;
            }

            if ($pclzip->extract(PCLZIP_OPT_PATH, FileInfo::validate($forms['path']), PCLZIP_CB_PRE_EXTRACT, $callbackPreExtract) != false) {

            } else {

            }

/*            $filePathOld            = FileInfo::validate($appDirectory->getDirectory() . SP . $appDirectory->getName());
            $filePathNew            = FileInfo::validate($forms['path'] . SP . $appDirectory->getName());
            $isHasFileAppPermission = false;

            $callbackFileExists = function($directory, $filename, $isDirectory) {
                global $forms;

                if ($forms['exists_func'] === EXISTS_FUNC_SKIP) {
                    return null;
                } else if ($forms['exists_func'] === EXISTS_FUNC_RENAME) {
                    $fileRename = null;
                    $pathRename = null;

                    while (true) {
                        $fileRename = rand(10000, 99999) . '_' . $filename;
                        $pathRename = FileInfo::validate($directory . SP . $fileRename);

                        if (FileInfo::fileExists($pathRename) == false) {
                            break;
                        }
                    }

                    return $pathRename;
                }

                return $directory . SP . $filename;
            };

            if (FileInfo::copy($filePathOld, $filePathNew, true, $forms['action'] === ACTION_MOVE, $isHasFileAppPermission, $callbackFileExists) == false) {
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
            }*/
        }
    }
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('file_unzip.title_page'); ?>: <?php echo $appDirectory->getName(); ?></span>
        </div>
        <form action="file_unzip.php<?php echo $appParameter->toString(); ?>" method="post">
            <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>

            <ul>
                <li class="input">
                    <span><?php echo lng('file_unzip.form.input.path_unzip'); ?></span>
                    <input type="text" name="path" value="<?php echo $forms['path']; ?>" placeholder="<?php echo lng('file_unzip.form.placeholder.input_path_unzip'); ?>"/>
                </li>
                <li class="radio-choose">
                    <span><?php echo lng('file_unzip.form.input.if_has_entry_is_exists'); ?></span>
                    <ul class="radio-choose-tab">
                        <li>
                            <input type="radio" name="exists_func" value="<?php echo EXISTS_FUNC_OVERRIDE; ?>" id="exists_func_override"<?php if ($forms['exists_func'] === EXISTS_FUNC_OVERRIDE) { ?> checked="checked"<?php } ?>/>
                            <label for="exists_func_override">
                                <span><?php echo lng('file_unzip.form.input.exists_func_override'); ?></span>
                            </label>
                        </li>
                        <li>
                            <input type="radio" name="exists_func" value="<?php echo EXISTS_FUNC_SKIP; ?>" id="exists_func_skip"<?php if ($forms['exists_func'] === EXISTS_FUNC_SKIP) { ?> checked="checked"<?php } ?>/>
                            <label for="exists_func_skip">
                                <span><?php echo lng('file_unzip.form.input.exists_func_skip'); ?></span>
                            </label>
                        </li>
                        <li>
                            <input type="radio" name="exists_func" value="<?php echo EXISTS_FUNC_RENAME; ?>" id="exists_func_rename"<?php if ($forms['exists_func'] == EXISTS_FUNC_RENAME) { ?> checked="checked"<?php } ?>/>
                            <label for="exists_func_rename">
                                <span><?php echo lng('file_unzip.form.input.exists_func_rename'); ?></span>
                            </label>
                        </li>
                    </ul>
                </li>
                <li class="button">
                    <button type="submit" name="unzip">
                        <span><?php echo lng('file_unzip.form.button.unzip'); ?></span>
                    </button>
                    <button type="submit" name="browser">
                        <span><?php echo lng('file_unzip.form.button.browser'); ?></span>
                    </button>
                    <a href="index.php<?php echo $appParameter->toString(); ?>">
                        <span><?php echo lng('file_unzip.form.button.cancel'); ?></span>
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
        <li>
            <a href="file_download.php<?php echo $appParameter->toString(); ?>">
                <span class="icomoon icon-download"></span>
                <span><?php echo lng('file_info.menu_action.download'); ?></span>
            </a>
        </li>

        <?php if ($fileMime->isFormatArchiveZip()) { ?>
            <li>
                <a href="file_viewzip.php<?php echo $appParameter->toString(); ?>">
                    <span class="icomoon icon-archive"></span>
                    <span><?php echo lng('file_info.menu_action.viewzip'); ?></span>
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
        $title = 'Giải nén tập tin';
        $format = $name == null ? null : getFormat($name);

        include_once 'header.php';

        echo '<div class="title">' . $title . '</div>';

        if ($dir == null || $name == null || !is_file(processDirectory($dir . '/' . $name))) {
            echo '<div class="list"><span>Đường dẫn không tồn tại</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php' . $pages['paramater_0'] . '">Danh sách</a></li>
            </ul>';
        } else if (!in_array($format, array('zip', 'jar'))) {
            echo '<div class="list"><span>Tập tin không phải zip</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        } else {
            $dir = processDirectory($dir);
            $format = getFormat($name);

            if (isset($_POST['submit'])) {
                echo '<div class="notice_failure">';

                if (empty($_POST['path'])) {
                    echo 'Chưa nhập đầy đủ thông tin';
                } else if (!is_dir(processDirectory($_POST['path']))) {
                    echo 'Đường dẫn giải nén không tồn tại';
                } else if (isPathNotPermission(processDirectory($_POST['path']))) {
                    echo 'Bạn không thể giải nén tập tin zip tới đường dẫn của File Manager';
                } else {
                    include 'pclzip.class.php';

                    $zip = new PclZip($dir . '/' . $name);

                    function callback_pre_extract($event, $header)
                    {
                        return isPathNotPermission($header['filename']) == false ? 1 : 0;
                    }

                    if ($zip->extract(PCLZIP_OPT_PATH, processDirectory($_POST['path']), PCLZIP_CB_PRE_EXTRACT, 'callback_pre_extract') != false) {
                        if (isset($_POST['is_delete']))
                            @unlink($dir . '/' . $name);

                        goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);
                    } else {
                        echo 'Giải nén tập tin lỗi';
                    }
                }

                echo '</div>';
            }

            echo '<div class="list">
                <span class="bull">&bull;</span><span>' . printPath($dir . '/' . $name) . '</span><hr/>
                <form action="file_unzip.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '" method="post">
                    <span class="bull">&bull;</span>Đường dẫn giải nén:<br/>
                    <input type="text" name="path" value="' . (isset($_POST['path']) ? $_POST['path'] : $dir) . '" size="18"/><br/>
                    <input type="checkbox" name="is_delete" value="1"' . (isset($_POST['is_delete']) ? ' checked="checked"' : null) . '/> Xóa tập tin zip<br/>
                    <input type="submit" name="submit" value="Giải nén"/>
                </form>
            </div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/info.png"/> <a href="file.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Thông tin</a></li>
                <li><img src="icon/unzip.png"/> <a href="file_viewzip.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Xem</a></li>
                <li><img src="icon/download.png"/> <a href="file_download.php?dir=' . $dirEncode . '&name=' . $name . $pages['paramater_1'] . '">Tải về</a></li>
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
