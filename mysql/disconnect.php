<?php

    define('LOADED', 1);
    require_once('global.php');

    if ($appMysqlConfig->set('mysql_is_connect', false)) {
        $appMysqlConfigWrite = new Librarys\App\Mysql\AppMysqlConfigWrite($appMysqlConfig);
        $appMysqlConfigWrite->setSpacing('    ');

        if ($appMysqlConfig->write()) {
            $boot->sleepFixHeaderRedirectUrl();
            $appAlert->success(lng('mysql.home.alert.disconnect_success'), ALERT_MYSQL_HOME, 'index.php');
        }
    }

    $appAlert->success(lng('mysql.home.alert.disconnect_failed'), ALERT_MYSQL_HOME, 'list_database.php');

?>