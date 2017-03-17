<?php

    return [
        'server' => [
            'document_root' => dirname(__DIR__),
        ],

        'app' => [
            'autoload' => [
                'prefix_namespace' => 'Librarys',
                'prefix_class_mime' => '.php'
            ],

            'session' => [
                'init'            => true,
                'name'            => 'BlogIzeroCs',
                'cookie_lifetime' => 86400 * 7,
                'cache_limiter'   => 'private',
            ],

            'path' => [
                'root'       => __DIR__,
                'librarys'   => '${app.path.root}${SP}librarys',
                'error'      => '${app.path.root}${SP}error',
                'resource'   => '${app.path.root}${SP}resource',
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
                'path_cookie' => '/',

                'validate_post' => true,
                'validate_get'  => true
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

            ],

            'theme' => [
                'app'     => '${app.http.theme}/default/theme.css'
            ]
        ]
    ];

?>