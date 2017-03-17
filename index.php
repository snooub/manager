<?php

    define('LOADED', 1);
    require_once('global.php');

    if ($appUser->isLogin()) {

    } else {
        gotoURL(env('app.http.host') . '/login.php');
    }

?>