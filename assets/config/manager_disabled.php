<?php

    if (defined('LOADED') == false)
        exit;

    // Disable env set to config user
    // Disable env set to true, enable env set to false

    return [
        'login'                          => true,
        'login.enable_forgot_password'   => true,
        'login.enable_lock_count_failed' => true,
        'login.max_lock_count'           => true
    ];

?>