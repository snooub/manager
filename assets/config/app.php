<?php

    return [
        'server' => [
            'document_root' => dirname(dirname(dirname(__DIR__))),
        ],

        'app' => [
            'autoload' => [
                'prefix_namespace' => 'Librarys',
                'prefix_class_mime' => '.php'
            ],

            'session' => [
                'init'            => true,
                'name'            => 'ManagerIzeroCs',
                'cookie_lifetime' => 86400 * 7,
                'cookie_path'     => '/${app.directory_absolute_http}/',
                'cache_limiter'   => 'private'
            ],

            'path' => [
                'root'       => dirname(dirname(__DIR__)),
                'librarys'   => '${app.path.root}${SP}librarys',
                'resource'   => '${app.path.root}${SP}assets',
                'error'      => '${app.path.resource}${SP}error',
                'theme'      => '${app.path.resource}${SP}theme',
                'icon'       => '${app.path.resource}${SP}icon',
                'javascript' => '${app.path.resource}${SP}javascript',
                'template'   => '${app.path.resource}${SP}template',
                'lang'       => '${app.path.resource}${SP}language'
            ],

            'http' => [

            ],

            'language' => [
                'path'   => '${app.path.resource}${SP}language',
                'mime'   => '.php',
                'locale' => 'vi'
            ],

            'firewall' => [
                'path'            => '${app.path.resource}${SP}firewall',
                'path_htaccess'   => '${app.path.root}${SP}.htaccess',
                'email'           => 'Izero.Cs@gmail.com',
                'enable'          => false,
                'enable_htaccess' => true,

                'time' => [
                    'request' => 1,
                    'small'   => 10,
                    'medium'  => 120,
                    'large'   => 3600
                ],

                'lock_count' => [
                    'small'    => 5,
                    'medium'   => 10,
                    'large'    => 15,
                    'forever'  => 20,
                    'htaccess' => 25
                ]
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
                'session_login_name' => 'LOGIN_MANAGER',
                'session_token_name' => 'LOGIN_TOKEN_MANAGER'
            ]
        ],

        'error' => [
            'reporting' => E_ALL | E_STRICT,
            'mime'      => '.php',
            'theme'     => '${resource.theme.default}',

            'handler'   => 'handler',
            'not_found' => 'not_found',
            'firewall'  => 'firewall'
        ],

        'resource' => [
            'javascript' => [
                'custom_input_file' => '${app.http.javascript}/custom_input_file.js',
                'chmod_input'       => '${app.http.javascript}/chmod_input.js'
            ],

            'theme' => [
                'app'     => '${app.http.theme}/default/theme.css',
                'login'   => '${app.http.theme}/default/login.css',
                'file'    => '${app.http.theme}/default/file.css',
                'mysql'   => '${app.http.theme}/default/mysql.css',
                'icomoon' => '${app.http.theme}/default/style.css'
            ],

            'icon' => [
                'favicon_ico' => '${app.http.theme}/default/icon/icon.ico',
                'favicon_png' => '${app.http.theme}/default/icon/icon.png'
            ]
        ]
    ];

?>
