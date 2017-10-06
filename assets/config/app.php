<?php

    if (defined('LOADED') == false)
        exit;

    use Librarys\Error\ErrorHandler;
    use Librarys\Http\Request;

    $isLocal = Request::isLocal();

    return [
        'server' => [
            'document_root' => dirname(dirname(dirname(__DIR__))),
        ],

        'app' => [
            'server_app' => [
                'izerocs.net',
                'izerocs.ga'
            ],

            'dev' => [
                'enable'         => true,
                'enable_desktop' => true,

                'error_reported' => [
                    'enable'           => true,
                    'enable_producted' => false,
                    'level'            => ErrorHandler::EU_ALL,

                    'tpl'              => '${app.path.error}${SP}handler.php'
                ]
            ],

            'date' => [
                'timezone' => 'Asia/Ho_Chi_Minh'
            ],

            'captcha' => [
                'width'  => 140,
                'height' => 45,

                'font'   => [
                    'size' => 15,
                    'path' => '${app.path.theme}${SP}fonts${SP}captcha.ttf'
                ]
            ],

            'session' => [
                'init'            => true,
                'name'            => 'ManagerIzeroCs',
                'cookie_lifetime' => 86400 * 7,
                'cookie_path'     => '/${app.directory_absolute_http}/',
                'cache_limiter'   => 'private',
                'cache_expire'    => 180
            ],

            'autoload' => [
                'prefix_namespace' => 'Librarys',
                'prefix_class_mime' => '.php'
            ],

            'path' => [
                'root'            => dirname(dirname(__DIR__)),
                'librarys'        => '${app.path.root}${SP}librarys',
                'resource'        => '${app.path.root}${SP}assets',
                'error'           => '${app.path.resource}${SP}error',
                'theme'           => '${app.path.resource}${SP}theme',
                'icon'            => '${app.path.resource}${SP}icon',
                'javascript'      => '${app.path.resource}${SP}javascript',
                'lang'            => '${app.path.resource}${SP}language',
                'user'            => '${app.path.resource}${SP}user',
                'token'           => '${app.path.resource}${SP}token',
                'config'          => '${app.path.resource}${SP}config',
                'define'          => '${app.path.resource}${SP}define',
                'cache'           => '${app.path.resource}${SP}cache',
                'tmp'             => '${app.path.resource}${SP}tmp',
                'backup'          => '${app.path.resource}${SP}backup',
                'upgrade'         => '${app.path.resource}${SP}upgrade',
                'backup_mysql'    => '${app.path.backup}${SP}mysql',
            ],

            'http' => [

            ],

            'mysql' => [
                'sleep_redirect' => 3
            ],

            'language' => [
                'path'   => '${app.path.resource}${SP}language',
                'mime'   => '.php',
                'locale' => 'vi'
            ],

            'cfsr' => [
                'use_token'   => true,
                'key_name'    => '_cfsr_token',
                'time_live'   => 60000,
                'path_cookie' => '/${app.directory_absolute_http}/',

                'validate_post' => true,
                'validate_get'  => true
            ],

            'login' => [
                'session_login_name'          => 'LOGIN_MANAGER',
                'session_token_name'          => 'LOGIN_TOKEN_MANAGER',
                'session_check_password_name' => 'LOGIN_CHECK_PASSWORD_MANAGER'
            ]
        ],

        'resource' => [
            'config' => [
                'about'       => '${app.path.config}${SP}about.php',
                'manager'     => '${app.path.config}${SP}manager.php',
                'manager_dis' => '${app.path.config}${SP}manager_dis.php',
                'user'        => '${app.path.config}${SP}user.php',
                'mysql'       => '${app.path.config}${SP}mysql.php',
                'upgrade'     => '${app.path.config}${SP}upgrade.php'
            ],

            'define' => [
                'alert' => '${app.path.define}${SP}alert.php'
            ],

            'filename' => [
                'theme' => [
                    'app'         => $isLocal ? 'theme.css'         : 'theme.min.css',
                    'app_desktop' => $isLocal ? 'theme_desktop.css' : 'theme_desktop.min.css',
                ],

                'javascript' => [
                    'desktop' => [
                        'directory' => [
                            'base' => 'desktop',
                            'lib'  => '${resource.filename.javascript.desktop.directory.base}/lib'
                        ],

                        'file'      => [
                            'require' => 'require.js',
                            'bundle'  => 'bundle.js'
                        ]
                    ],

                    'onload'                    => $isLocal ? 'onload.js'                    : 'onload.min.js',
                    'custom_input_file'         => $isLocal ? 'custom_input_file.js'         : 'custom_input_file.min.js',
                    'more_input_url'            => $isLocal ? 'more_input_url.js'            : 'more_input_url.min.js',
                    'chmod_input'               => $isLocal ? 'chmod_input.js'               : 'chmod_input.min.js',
                    'button_save_on_javascript' => $isLocal ? 'button_save_on_javascript.js' : 'button_save_on_javascript.min.js',
                    'auto_focus_input_last'     => $isLocal ? 'auto_focus_input_last.js'     : 'auto_focus_input_last.min.js',
                    'checkbox_checkall'         => $isLocal ? 'checkbox_checkall.js'         : 'checkbox_checkall.min.js'
                ],

                'icon' => [
                    'favicon_ico' => 'icon.ico',
                    'favicon_png' => 'icon.png'
                ],

                'config' => [
                    'about'          => 'about.php',
                    'manager'        => 'manager.php',
                    'user'           => 'user.php',
                    'user_token'     => 'token.php',
                    'mysql'          => 'mysql.php',
                    'upgrade'        => 'upgrade.php',
                    'env_theme'      => 'env.php',
                    'env_javascript' => 'env.php'
                ]
            ]
        ]
    ];

?>
