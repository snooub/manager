<?php

    define('LOADED',  1);
    define('SETTING', 1);

    use Librarys\App\AppAlert;
    use Librarys\App\AppUser;
    use Librarys\App\Config\AppConfig;

    require_once('global.php');

    if (AppUser::getInstance()->getPosition() !== AppUser::POSTION_ADMINSTRATOR)
        AppAlert::warning(lng('system.setting.alert.user_not_permission'), ALERT_SYSTEM_SETTING, env('app.http.host') . '/system/setting.php');

    $title = lng('system.setting_system.title_page');
    AppAlert::setID(ALERT_SYSTEM_SETTING_SYSTEM);
    require_once(ROOT . 'incfiles' . SP . 'header.php');

    $forms = [
        'http_referer' => null,

        'login' => [
            'enable_forgot_password'   => AppConfig::getInstance()->getSystem('login.enable_forgot_password',   true),
            'enable_lock_count_failed' => AppConfig::getInstance()->getSystem('login.enable_lock_count_failed', true),
            'enable_captcha_secure'    => AppConfig::getInstance()->getSystem('login.enable_captcha_secure',    true),
            'max_lock_count'           => AppConfig::getInstance()->getSystem('login.max_lock_count',           5),
            'time_lock'                => AppConfig::getInstance()->getSystem('login.time_lock',                180),
            'time_login'               => AppConfig::getInstance()->getSystem('login.time_login',               64800)
        ],

        'enable_disable' => [
            'check_password_default' => AppConfig::getInstance()->getSystem('enable_disable.check_password_default', true)
        ]
    ];

    if (isset($_POST['save'])) {
        $isFailed = false;

        foreach ($forms['login'] AS $key => &$value) {
            $envKey          = 'login.' . $key;
            $formKey         = 'login_' . $key;
            $isEnableDisable = isset($_POST[$formKey]) && strpos($formKey, 'login_enable_') === 0;

            if ($isEnableDisable)
                $formKey = 'login_' . $key;

            if (isset($_POST[$formKey])) {
                if ($isEnableDisable)
                    $value = boolval(addslashes($_POST[$formKey]));
                else
                    $value = intval(addslashes($_POST[$formKey]));
            } else {
                if ($isEnableDisable)
                    $value = false;
                else
                    $value = 0;
            }

            if (AppConfig::getInstance()->setSystem($envKey, $value) == false) {
                $isFailed = true;
                AppAlert::danger(lng('system.setting_system.alert.save_setting_failed'));

                break;
            }
        }

        if ($isFailed == false) {
            foreach ($forms['enable_disable'] AS $key => &$value) {
                $envKey  = 'enable_disable.' . $key;
                $formKey = 'enable_disable_' . $key;

                if (isset($_POST[$formKey]))
                    $value = boolval(addslashes($_POST[$formKey]));
                else
                    $value = false;

                if (AppConfig::getInstance()->setSystem($envKey, $value) == false) {
                    $isFailed = true;
                    AppAlert::danger(lng('system.setting_system.alert.save_setting_failed'));

                    break;
                }
            }
        }

        if ($isFailed == false) {
            if (AppConfig::getInstance()->write(true))
                AppAlert::success(lng('system.setting_system.alert.save_setting_success'));
            else
                AppAlert::danger(lng('system.setting_system.alert.save_setting_failed'));
        }
    }

    $settingTextInputs = [
        [
            'config_key'      => 'login.max_lock_count',
            'label_lng'       => 'system.setting_system.form.input.login_max_lock_count',
            'placeholder_lng' => 'system.setting_system.form.placeholder.input_login_max_lock_count',
            'name_input'      => 'login_max_lock_count',
            'type_input'      => 'number',
            'value_input'     => $forms['login']['max_lock_count']
        ],

        [
            'config_key'      => 'login.time_lock',
            'label_lng'       => 'system.setting_system.form.input.login_time_lock',
            'placeholder_lng' => 'system.setting_system.form.placeholder.input_login_time_lock',
            'name_input'      => 'login_time_lock',
            'type_input'      => 'number',
            'value_input'     => $forms['login']['time_lock']
        ],

        [
            'config_key'      => 'login.time_login',
            'label_lng'       => 'system.setting_system.form.input.login_time_login',
            'placeholder_lng' => 'system.setting_system.form.placeholder.input_login_time_login',
            'name_input'      => 'login_time_login',
            'type_input'      => 'number',
            'value_input'     => $forms['login']['time_login']
        ]
    ];

    $settingCheckboxInputs = [
        'enable_disable' => [
            [
                'config_key'      => 'login.enable_forgot_password',
                'label_lng'       => 'system.setting_system.form.input.enable_forgot_password',
                'id_input'        => 'login-enable-forgot-password',
                'name_input'      => 'login_enable_forgot_password',
                'value_input'     => $forms['login']['enable_forgot_password']
            ],

            [
                'config_key'      => 'login.enable_lock_count_failed',
                'label_lng'       => 'system.setting_system.form.input.enable_lock_count_failed',
                'id_input'        => 'login-enable-lock-count-failed',
                'name_input'      => 'login_enable_lock_count_failed',
                'value_input'     => $forms['login']['enable_lock_count_failed']
            ],

            [
                'config_key'      => 'login.enable_captcha_secure',
                'label_lng'       => 'system.setting_system.form.input.enable_captcha_secure',
                'id_input'        => 'login-enable-captcha-secure',
                'name_input'      => 'login_enable_captcha_secure',
                'value_input'     => $forms['login']['enable_captcha_secure']
            ],

            [
                'config_key'      => 'enable_disable.check_password_default',
                'label_lng'       => 'system.setting_system.form.input.enable_check_password_default',
                'id_input'        => 'enable-disable-check-password-default',
                'name_input'      => 'enable_disable_check_password_default',
                'value_input'     => $forms['enable_disable']['check_password_default']
            ]
        ]
    ];

?>

    <?php AppAlert::display(); ?>

    <div class="form-action">
        <div class="title">
            <span><?php echo lng('system.setting.title_page'); ?></span>
        </div>
        <form action="setting_system.php" method="post">
            <input type="hidden" name="<?php echo cfsrTokenName(); ?>" value="<?php echo cfsrTokenValue(); ?>"/>

            <ul class="form-element">
                <?php foreach ($settingTextInputs AS $inputs) { ?>
                    <li class="input">
                        <span><?php echo lng($inputs['label_lng']); ?></span>
                        <input type="<?php echo $inputs['type_input']; ?>" name="<?php echo $inputs['name_input']; ?>" value="<?php echo $inputs['value_input']; ?>" placeholder="<?php echo lng($inputs['placeholder_lng']); ?>"/>
                    </li>
                <?php } ?>
                <li class="checkbox">
                    <span><?php echo lng('system.setting_system.form.input.enable_disable_label'); ?></span>
                    <ul>
                        <?php foreach ($settingCheckboxInputs['enable_disable'] AS $checkboxs) { ?>
                            <li>
                                <input type="checkbox" id="<?php echo $checkboxs['id_input']; ?>" name="<?php echo $checkboxs['name_input']; ?>" value="1"<?php if ($checkboxs['value_input'] == true) { ?> checked="checked"<?php } ?>/>
                                <label for="<?php echo $checkboxs['id_input']; ?>">
                                    <span><?php echo lng($checkboxs['label_lng']); ?></span>
                                </label>
                            </li>
                        <?php } ?>
                    </ul>
                </li>

                <li class="button">
                    <button type="submit" name="save" id="button-save-on-javascript">
                        <span><?php echo lng('system.setting_system.form.button.save'); ?></span>
                    </button>
                    <a href="<?php echo env('app.http.host'); ?>">
                        <span><?php echo lng('system.setting_system.form.button.cancel'); ?></span>
                    </a>
                </li>
            </ul>
        </form>
    </div>

    <ul class="alert">
        <li class="info"><span><?php echo lng('system.setting_system.alert.tips'); ?></span></li>
    </ul>

    <ul class="menu-action">
        <li>
            <a href="<?php echo env('app.http.host'); ?>/system/setting.php">
                <span class="icomoon icon-config"></span>
                <span><?php echo lng('system.setting.menu_action.setting_manager'); ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo env('app.http.host'); ?>/user/setting.php">
                <span class="icomoon icon-config"></span>
                <span><?php echo lng('system.setting.menu_action.setting_profile'); ?></span>
            </a>
        </li>
    </ul>

<?php require_once(ROOT . 'incfiles' . SP . 'footer.php'); ?>