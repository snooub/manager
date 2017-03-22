<?php

    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'login.php');

    $title = lng('create.title_page');
    $themes = [ env('resource.theme.file') ];
    $appAlert->setID(ALERT_CREATE);
    require_once('header.php');

    if ($appDirectory->getDirectory() == null || is_dir($appDirectory->getDirectory()) == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));

    $appLocationPath = new AppLocationPath($appDirectory, 'create.php?');
?>

    <?php $appAlert->display(); ?>
    <?php $appLocationPath->display(); ?>

    <?php $parameterForm = AppDirectory::createUrlParameter(
        AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectory(), true,
        AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),      $appDirectory->getPage() > 1
    ); ?>

    <div class="form-action">
        <form action="<?php echo $parameterForm; ?>" method="post">
            <ul>
                <li class="input">
                    <span>Tên thư mục hoặc tập tin:</span>
                    <input type="text" name="name" value="" class="none" placeholder="Nhập tên thư mục hoặc tập tin" />
                </li>
                </li>
                <li class="radio-choose">
                    <input type="radio" name="type" value="1" checked=""/>
                    <span>Thư mục</span>
                    <input type="radio" name="type" value="2"/>
                    <span>Tập tin</span>
                </li>
                <li class="button">
                    <button type="submit" name="create">
                        <span>Tạo</span>
                    </button>
                    <a href="#">
                        <span>Hủy</span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

<?php require_once('footer.php'); ?>

<?php

/*
            $dir = processDirectory($dir);

            if (isset($_POST['submit'])) {
                echo '<div class="notice_failure">';

                if (empty($_POST['name'])) {
                    echo 'Chưa nhập đầy đủ thông tin';
                } else if (intval($_POST['type']) === 0 && file_exists($dir . '/' . $_POST['name'])) {
                    echo 'Tên đã tồn tại dạng thư mục hoặc tập tin';
                } else if (intval($_POST['type']) === 1 && file_exists($dir . '/' . $_POST['name'])) {
                    echo 'Tên đã tồn tại dạng thư mục hoặc tập tin';
                } else if (isNameError($_POST['name'])) {
                    echo 'Tên không hợp lệ';
                } else {
                    if (intval($_POST['type']) === 0) {
                        if (!@mkdir($dir . '/' . $_POST['name']))
                            echo 'Tạo thư mục thất bại';
                        else
                            goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);
                    } else if (intval($_POST['type']) === 1) {
                        if (!@file_put_contents($dir . '/' . $_POST['name'], '...'))
                            echo 'Tạo tập tin thất bại';
                        else
                            goURL('index.php?dir=' . $dirEncode . $pages['paramater_1']);
                    } else {
                        echo 'Lựa chọn không hợp lệ';
                    }
                }

                echo '</div>';
            }

            echo '<div class="list">
                <span>' . printPath($dir, true) . '</span><hr/>
                <form action="create.php?dir=' . $dirEncode . $pages['paramater_1'] . '" method="post">
                    <span class="bull">&bull;</span>Tên thư mục hoặc tập tin:<br/>
                    <input type="text" name="name" value="' . (isset($_POST['name']) ? $_POST['name'] : null) . '" size="18"/><br/>
                    <input type="radio" name="type" value="0" checked="checked"/>Thư mục<br/>
                    <input type="radio" name="type" value="1"/>Tập tin<br/>
                    <input type="submit" name="submit" value="Tạo"/>
                </form>
            </div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/upload.png"/> <a href="upload.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Tải lên tập tin</a></li>
                <li><img src="icon/import.png"/> <a href="import.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Nhập khẩu tập tin</a></li>
                <li><img src="icon/list.png"/> <a href="index.php?dir=' . $dirEncode . $pages['paramater_1'] . '">Danh sách</a></li>
            </ul>';
        }

        include_once 'footer.php';
    } else {
        goURL('login.php');
    }
*/
?>