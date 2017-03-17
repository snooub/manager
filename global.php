<?php

    if (defined('LOADED') == false)
        exit;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    require_once('Librarys' . SP . 'Boot.php');

    $boot                       = new Librarys\Boot(require_once('config.php'));
    $appDirectoryInstallChecker = new Librarys\App\AppDirectoryInstallChecker($boot);

    $appDirectoryInstallChecker->execute();

    if ($appDirectoryInstallChecker->isAccept() == false) {
        if ($appDirectoryInstallChecker->isInstallDirectory() == false)
            trigger_error('Bạn đang cài đặt ứng dụng trên thư mục gốc, hãy cài đặt vào một thư mục con.');
        else if ($appDirectoryInstallChecker->isDirectoryPermissionExecute() == false)
            trigger_error('Có vẻ host bạn cài ứng dụng không thể thực thi được, bạn vui lòng kiểm tra lại.');
        else if ($appDirectoryInstallChecker->isConfigValidate() == false)
            trigger_error('Cấu hình cho ứng dụng không tồn tại, bạn hãy xóa bỏ ứng dụng và cài lại thử xem.');
        else
            trigger_error('Không thể xác định lỗi, bạn hãy kiểm tra lại, hoặc cài lại ứng dụng');

        exit(0);
    }

?>