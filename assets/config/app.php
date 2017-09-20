<?php

    if (defined('LOADED') == false)
        exit;

    use Librarys\Error\ErrorHandler;

    return [
        'server' => [
            'document_root' => dirname(dirname(dirname(__DIR__))),
        ],

        'app' => [
            'server_app' => [
                'localhost',
                'izerocs.net',
                'izerocs.ga'
            ],

            'dev' => [
                'enable'         => true,
                'enable_desktop' => true,

                'error_reported' => [
                    'enable'           => true,
                    'enable_producted' => true,
                    'level'            => ErrorHandler::EU_ALL,

                    'tpl'              => '${app.path.error}${SP}handler.php'
                ]
            ],

            'date' => [
                'timezone' => 'Asia/Ho_Chi_Minh'
            ],

            'captcha' => [
                'width'  => 100,
                'height' => 45,

                'font'   => [
                    'size' => 17,
                    'path' => 'captcha.ttf'
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
                    'app'         => 'theme.css',
                    'app_desktop' => 'theme_desktop.css',
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

                    'onload'                    => 'onload.js',
                    'custom_input_file'         => 'custom_input_file.js',
                    'more_input_url'            => 'more_input_url.js',
                    'chmod_input'               => 'chmod_input.js',
                    'button_save_on_javascript' => 'button_save_on_javascript.js',
                    'auto_focus_input_last'     => 'auto_focus_input_last.js',
                    'checkbox_checkall'         => 'checkbox_checkall.js'
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
