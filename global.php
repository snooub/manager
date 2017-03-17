<?php

    if (defined('LOADED') == false)
        exit;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    require_once('Librarys' . SP . 'Boot.php');

    $boot                       = new Librarys\Boot(require_once('config.php'));
    $appDirectoryInstallChecker = new Librarys\App\AppDirectoryInstallChecker($boot);

    $appDirectoryInstallChecker->execute();

?>