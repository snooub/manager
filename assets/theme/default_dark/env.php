<?php

    if (defined('LOADED') == false)
        exit;

    return [
        'directory' => 'default_dark',
        'http'      => env('app.http.theme') . '/default_dark'
    ];

?>