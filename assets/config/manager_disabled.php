<?php

    if (defined('LOADED') == false)
        exit;

    // Disable env set to config user
    // Disable env set to false, enable env set to true

    return [
        'login'                          => false,
        'login.enable_forgot_password'   => false,
        'login.enable_lock_count_failed' => false,
        'login.max_lock_count'           => false,
        'login.time_lock'                => false
    ];

?>