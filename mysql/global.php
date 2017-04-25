<?php

    define('ROOT',          '..' . DIRECTORY_SEPARATOR);
    define('MYSQL_REQUIRE', 1);

    require_once(
        realpath(ROOT) .
        DIRECTORY_SEPARATOR . 'incfiles' .
        DIRECTORY_SEPARATOR . 'global.php'
    );

    $appMysqlConfig  = new Librarys\App\AppMysqlConfig($boot, env('resource.config.mysql'));
    $appMysqlConnect = new Librarys\App\AppMysqlConnect($boot);

    $appMysqlConfig->execute($appUser);

    if ($appMysqlConfig->get('mysql_is_connect', false) == true) {
        $appMysqlConnect->setHost    ($appMysqlConfig->get('mysql_host'));
        $appMysqlConnect->setUsername($appMysqlConfig->get('mysql_username'));
        $appMysqlConnect->setPassword($appMysqlConfig->get('mysql_password'));
        $appMysqlConnect->setName    ($appMysqlConfig->get('mysql_name'));
        $appMysqlConnect->setPort    ($appMysqlConfig->get('mysql_port'));
        $appMysqlConnect->setEncoding($appMysqlConfig->get('mysql_encoding'));

        if ($appMysqlConnect->openConnect(false) == false) {
			if (defined('MYSQL_HOME') && strtolower($_SERVER['REQUEST_METHOD']) == 'get')
                $appAlert->danger(lng('mysql.home.alert.mysql_connect_failed', 'error', $appMysqlConnect->errorConnect()), ALERT_MYSQL_HOME);
            else if (defined('MYSQL_HOME') == false)
                $appAlert->danger(lng('mysql.home.alert.mysql_connect_failed', 'error', $appMysqlConnect->errorConnect()), ALERT_MYSQL_HOME, env('app.http.host') . '/mysql');
        } else if (defined('MYSQL_HOME')) {
            if ($appMysqlConfig->get('mysql_name') == null)
                $appAlert->info(lng('mysql.home.alert.mysql_is_already_connect'), ALERT_MYSQL_LIST_DATABASE, 'list_database.php');
            else
                $appAlert->info(lng('mysql.home.alert.mysql_is_already_connect'), ALERT_MYSQL_LIST_TABLE, 'list_table.php');
        }
    }
?>