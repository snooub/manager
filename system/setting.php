<?php

	use Librarys\App\AppConfigWrite;

    define('LOADED', 1);
    define('SETTING', 1);
    define('ROOT',   '..' . DIRECTORY_SEPARATOR);

    require_once(ROOT . 'incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, env('app.http.host') . '/user/login.php');

    $title = lng('system.setting.title_page');
    $appAlert->setID(ALERT_SYSTEM_SETTING);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $forms = [
        'http_referer' => null,

        'paging' => [
            'file_home_list'      => $appConfig->get('paging.file_home_list'),
            'file_view_zip'       => $appConfig->get('paging.file_view_zip'),
            'file_edit_text'      => $appConfig->get('paging.file_edit_text'),
            'file_edit_text_line' => $appConfig->get('paging.file_edit_text_line')
        ],

        'login' => [
            'enable_forgot_password' => $appConfig->get('login.enable_forgot_password')
        ],

        'auto_redirect' => [
            'file_rename' => $appConfig->get('auto_redirect.file_rename'),
            'file_chmod'  => $appConfig->get('auto_redirect.file_chmod')
        ],
    ];

    if (isset($_SERVER['HTTP_REFERER']))
        $forms['http_referer'] = trim($_SERVER['HTTP_REFERER']);

    if (isset($_POST['save'])) {
        $forms['http_referer'] = trim($_POST['http_referer']);
        $isFailed              = false;

        foreach ($forms['paging'] AS $key => &$value) {
            $envKey  = 'paging.' . $key;
            $formKey = 'paging_' . $key;

            if (isset($_POST[$formKey]))
                $value = intval(addslashes($_POST[$formKey]));
            else
                $value = 0;

            if ($appConfig->set($envKey, $value) == false) {
                $isFailed = true;
                $appAlert->danger(lng('system.setting.alert.save_setting_failed'));

                break;
            }
        }

        if ($isFailed == false) {
            if (isset($_POST['login_enable_forgot_password']))
                $forms['login']['enable_forgot_password'] = boolval(addslashes($_POST['login_enable_forgot_password']));
            else
                $forms['login']['enable_forgot_password'] = false;

            if ($appConfig->set('login.enable_forgot_password', $forms['login']['enable_forgot_password']) == false) {
                $isFailed = true;
                $appAlert->danger(lng('system.setting.alert.save_setting_failed'));
            }
        }

        if ($isFailed == false) {
            foreach ($forms['auto_redirect'] AS $key => &$value) {
                $envKey  = 'auto_redirect.' . $key;
                $formKey = 'auto_redirect_' . $key;

                if (isset($_POST[$formKey]))
                    $value = boolval(addslashes($_POST[$formKey]));
                else
                    $value = false;

                if ($appConfig->set($envKey, $value) == false) {
                    $isFailed = true;
                    $appAlert->danger(lng('system.setting.alert.save_setting_failed'));

                    break;
                }
            }
        }

        if ($isFailed == false) {
            $appConfigWrite = new AppConfigWrite($appConfig);
            $appConfigWrite->setSpacing('    ');

        	if ($appConfigWrite->write())
                $appAlert->success(lng('system.setting.alert.save_setting_success'), null, 'setting.php');
    	   else
                $appAlert->danger(lng('system.setting.alert.save_setting_failed'));
        }
    }

    if ($forms['http_referer'] == null || empty($forms['http_referer']))
        $forms['http_referer'] = env('app.http.host');
    else if (strpos($forms['http_referer'], $_SERVER['PHP_SELF']) !== false)
        $forms['http_referer'] = env('app.http.host');
?>

    <?php $appAlert->display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('system.setting.title_page'); ?></span>
        </div>
        <form action="setting.php" method="post">
	        <input type="hidden" name="<?php echo $boot->getCFSRToken()->getName(); ?>" value="<?php echo $boot->getCFSRToken()->getToken(); ?>"/>
            <input type="hidden" name="http_referer" value="<?php echo $forms['http_referer']; ?>"/>

            <ul>
                <?php if ($appConfig->isEnvEnabled('paging.file_home_list')) { ?>
                    <li class="input">
                        <span><?php echo lng('system.setting.form.input.paging_file_home_list'); ?></span>
                        <input type="number" name="paging_file_home_list" value="<?php echo $forms['paging']['file_home_list']; ?>" placeholder="<?php echo lng('system.setting.form.placeholder.input_paging_file_home_list'); ?>"/>
                    </li>
                <?php } ?>
                <?php if ($appConfig->isEnvEnabled('paging.file_view_zip')) { ?>
                    <li class="input">
                        <span><?php echo lng('system.setting.form.input.paging_file_view_zip'); ?></span>
                        <input type="number" name="paging_file_view_zip" value="<?php echo $forms['paging']['file_view_zip']; ?>" placeholder="<?php echo lng('system.setting.form.placeholder.input_paging_file_view_zip'); ?>"/>
                    </li>
                <?php } ?>
                <?php if ($appConfig->isEnvEnabled('paging.file_edit_text')) { ?>
                    <li class="input">
                        <span><?php echo lng('system.setting.form.input.paging_file_edit_text'); ?></span>
                        <input type="number" name="paging_file_edit_text" value="<?php echo $forms['paging']['file_edit_text']; ?>" placeholder="<?php echo lng('system.setting.form.placeholder.input_paging_file_edit_text'); ?>"/>
                    </li>
                <?php } ?>
                <?php if ($appConfig->isEnvEnabled('paging_file_edit_text_line')) { ?>
                    <li class="input">
                        <span><?php echo lng('system.setting.form.input.paging_file_edit_text_line'); ?></span>
                        <input type="number" name="paging_file_edit_text_line" value="<?php echo $forms['paging']['file_edit_text_line']; ?>" placeholder="<?php echo lng('system.setting.form.placeholder.input_paging_file_edit_text_line'); ?>"/>
                    </li>
                <?php } ?>
                <li class="checkbox">
                	<ul>
                        <?php if ($appConfig->isEnvEnabled('login.enable_forgot_password')) { ?>
                    		<li>
    		                	<input type="checkbox" id="login-enable-forgot-password" name="login_enable_forgot_password" value="1"<?php if ($forms['login']['enable_forgot_password'] == true) { ?> checked="checked"<?php } ?>/>
    		                	<label for="login-enable-forgot-password">
    		                		<span><?php echo lng('system.setting.form.input.enable_forgot_password'); ?></span>
    		                	</label>
    	                	</li>
                        <?php } ?>
                        <?php if ($appConfig->isEnvEnabled('auto_redirect.file_rename')) { ?>
                    		<li>
    		                	<input type="checkbox" id="auto-redirect-file-rename" name="auto_redirect_file_rename" value="1"<?php if($forms['auto_redirect']['file_rename'] == true) { ?> checked="checked"<?php } ?>/>
    		                	<label for="auto-redirect-file-rename">
    		                		<span><?php echo lng('system.setting.form.input.enable_auto_redirect_file_rename'); ?></span>
    		                	</label>
                    		</li>
                        <?php } ?>
                        <?php if ($appConfig->isEnvEnabled('auto_redirect.file_chmod')) { ?>
                    		<li>
    		                	<input type="checkbox" id="auto-redirect-file-chmod" name="auto_redirect_file_chmod" value="1"<?php if($forms['auto_redirect']['file_chmod'] == true) { ?> checked="checked"<?php } ?>/>
            		        	<label for="auto-redirect-file-chmod">
                    				<span><?php echo lng('system.setting.form.input.enable_auto_redirect_file_chmod'); ?></span>
                    			</label>
                    		</li>
                        <?php } ?>
                	</ul>
                </li>
                <li class="button">
                    <button type="submit" name="save">
                        <span><?php echo lng('system.setting.form.button.save'); ?></span>
                    </button>
                    <a href="<?php echo $forms['http_referer']; ?>">
                        <span><?php echo lng('system.setting.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="alert">
    	<li class="info">
    		<span><?php echo lng('system.setting.alert.tips'); ?></span>
    	</li>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="<?php echo env('app.http.host'); ?>/system/setting_theme.php">
                <span class="icomoon icon-theme"></span>
                <span><?php echo lng('system.setting.menu_action.setting_theme'); ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo env('app.http.host'); ?>/user/setting.php">
                <span class="icomoon icon-config"></span>
                <span><?php echo lng('system.setting.menu_action.setting_profile'); ?></span>
            </a>
        </li>
        <li class="hidden">
            <a href="<?php echo env('app.http.host'); ?>/user/manager.php">
                <span class="icomoon icon-user"></span>
                <span><?php echo lng('system.setting.menu_action.manager_user'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>
<?php

/*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Cài đặt';
        $ref = isset($_POST['ref']) ? $_POST['ref'] : (isset($_SERVER['HTTP_REFFRER']) ? $_SERVER['HTTP_REFERER']: null);
        $ref = $ref != $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'] ? $ref : null;

        include_once 'header.php';

        echo '<div class="title">' . $title . '</div>';

        $username = $configs['username'];
        $passwordO = null;
        $passwordN = null;
        $verifyN = null;
        $pageList = $configs['page_list'];
        $pageFileEdit = $configs['page_file_edit'];
        $pageFileEditLine = $configs['page_file_edit_line'];
        $pageDatabaseListRows = $configs['page_database_list_rows'];

        if (isset($_POST['submit'])) {
            $username = addslashes($_POST['username']);
            $passwordO = addslashes($_POST['password_o']);
            $passwordN = addslashes($_POST['password_n']);
            $verifyN = addslashes($_POST['verify_n']);
            $pageList = addslashes($_POST['page_list']);
            $pageFileEdit = addslashes($_POST['page_file_edit']);
            $pageFileEditLine = addslashes($_POST['page_file_edit_line']);
            $pageDatabaseListRows = addslashes($_POST['page_database_list_rows']);

            if (empty($username)) {
                echo '<div class="notice_failure">Chưa nhập tên đăng nhập</div>';
            } else if (strlen($username) < 3) {
                echo '<div class="notice_failure">Tên đăng nhập phải lớn hơn 3 ký tự</div>';
            } else if (!empty($passwordO) && getPasswordEncode($passwordO) != $configs['password']) {
                echo '<div class="notice_failure">Mật khẩu cũ không đúng</div>';
            } else if (!empty($passwordO) && (empty($passwordN) || empty($verifyN))) {
                echo '<div class="notice_failure">Để thay đổi mật khẩu hãy nhập đủ hai mật khẩu</div>';
            } else if (!empty($passwordO) && $passwordN != $verifyN) {
                echo '<div class="notice_failure">Hai mật khẩu không giống nhau</div>';
            } else if (!empty($passwordO) && strlen($passwordN) < 5) {
                echo '<div class="notice_failure">Mật khẩu phải lớn hơn 5 ký tự</div>';
            } else {
                if (createConfig($username, (!empty($passwordN) ? getPasswordEncode($passwordN) : $configs['password']), $pageList, $pageFileEdit, $pageFileEditLine, $pageDatabaseListRows, false)) {
                    include PATH_CONFIG;

                    $username = $configs['username'];
                    $passwordO = null;
                    $passwordN = null;
                    $verifyN = null;
                    $pageList = $configs['page_list'];
                    $pageFileEdit = $configs['page_file_edit'];
                    $pageFileEditLine = $configs['page_file_edit_line'];
                    $pageDatabaseListRows = addslashes($_POST['page_database_list_rows']);

                    echo '<div class="notice_succeed">Lưu thành công</div>';
                } else {
                    echo '<div class="notice_failure">Lưu thất bại</div>';
                }
            }
        }

        echo '<div class="list">
            <form action="setting.php" method="post">
                <span class="bull">&bull;</span>Tài khoản:<br/>
                <input type="text" name="username" value="' . $username . '" size="18"/><br/>
                <span class="bull">&bull;</span>Mật khẩu cũ:<br/>
                <input type="password" name="password_o" value="' . $passwordO . '" size="18"/><br/>
                <span class="bull">&bull;</span>Mật khẩu mới:<br/>
                <input type="password" name="password_n" value="' . $passwordN . '" size="18"/><br/>
                <span class="bull">&bull;</span>Nhập lại mật khẩu mới:<br/>
                <input type="password" name="verify_n" value="' . $verifyN . '" size="18"/><br/>
                <span class="bull">&bull;</span>Phân trang danh sách:<br/>
                <input type="text" name="page_list" value="' . $pageList . '" size="18"/><br/>
                <span class="bull">&bull;</span>Phân trang sửa văn bản thường:<br/>
                <input type="text" name="page_file_edit" value="' . $pageFileEdit . '" size="18"/><br/>
                <span class="bull">&bull;</span>Phân trang sửa văn bản theo dòng:<br/>
                <input type="text" name="page_file_edit_line" value="' . $pageFileEditLine . '" size="18"/><br/>
                <span class="bull">&bull;</span>Phân trang danh sách dữ liệu sql:<br/>
                <input type="text" name="page_database_list_rows" value="' . $pageDatabaseListRows . '" size="18"/><br/>
                <input type="hidden" name="ref" value="' . $ref . '"/>
                <input type="submit" name="submit" value="Lưu"/>
            </form>
        </div>
        <div class="tips"><img src="icon/tips.png"/> Mật khẩu để trống nếu không muốn thay đổi, các phân trang để bằng 0 nếu không muốn phân trang</div>
        <div class="title">Chức năng</div>
        <ul class="list">';

        if ($ref != null)
            echo '<li><img src="icon/back.png"/> <a href="' . $ref . '">Quay lại</a></li>';
        else
            echo '<li><img src="icon/list.png"/> <a href="index.php">Danh sách</a></li>';

        echo '</ul>';

        include_once 'footer.php';
    } else {
        goURL('login.php');
    }*/

?>
