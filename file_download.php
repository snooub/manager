<?php

    use Librarys\File\FileInfo;
    use Librarys\App\AppDirectory;
    use Librarys\App\AppLocationPath;
    use Librarys\App\AppParameter;

    define('LOADED', 1);
    require_once('global.php');

    @apache_setenv('no-gzip', 1);
    @ini_set('zlib.output_compression', 'Off');

    if ($appUser->isLogin() == false)
        $appAlert->danger(lng('login.alert.not_login'), ALERT_LOGIN, 'login.php');

    if ($appDirectory->isFileSeparatorNameExists() == false)
        $appAlert->danger(lng('home.alert.path_not_exists'), ALERT_INDEX, env('app.http.host'));
    else if ($appDirectory->isPermissionDenyPath($appDirectory->getDirectory()))
        $appAlert->danger(lng('home.alert.path_not_permission', 'path', $appDirectory->getDirectoryAndName()), ALERT_INDEX, env('app.http.host'));

    $appParameter = new AppParameter();
    $appParameter->add(AppDirectory::PARAMETER_DIRECTORY_URL, $appDirectory->getDirectoryEncode(), true);
    $appParameter->add(AppDirectory::PARAMETER_PAGE_URL,      $appDirectory->getPage(),            $appDirectory->getPage() > 1);
    $appParameter->add(AppDirectory::PARAMETER_NAME_URL,      $appDirectory->getNameEncode(),      true);

    $fileInfo    = new FileInfo($appDirectory->getDirectory() . SP . $appDirectory->getName());
    $fileSize    = $fileInfo->getFileSize();
    $isDirectory = $fileInfo->isDirectory();

    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename=' . $appDirectory->getName());
    header('Content-Length: ' . filesize($fileInfo->getFilePath()));
    header('Pragma: public');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');

    $range = null;

    if(isset($_SERVER['HTTP_RANGE'])) {
        list($size_unit, $rangeOrig) = explode('=', $_SERVER['HTTP_RANGE'], 2);

        // Check if http_range is sent by browser (or download manager)
        if ($size_unit == 'bytes') {
            // Multiple ranges could be specified at the same time, but for simplicity only serve the first range
            // http://tools.ietf.org/id/draft-ietf-http-range-retrieval-00.txt

            list($range, $extraRanges) = explode(',', $rangeOrig, 2);
        } else {
            $range = '';
            header('HTTP/1.1 416 Requested Range Not Satisfiable');
            exit;
        }
    } else {
        $range = '-';
    }

    list($seekStart, $seekEnd) = explode('-', $range, 2);

    // Set start and end based on range (if set), else set defaults
    // Also check for invalid ranges.
    $seekEnd   = (empty($seekEnd)) ? ($fileSize - 1) : min(abs(intval($seekEnd)), ($fileSize - 1));
    $seekStart = (empty($seekStart) || $seekEnd < abs(intval($seekStart))) ? 0 : max(abs(intval($seekStart)),0);

    // Only send partial content header if downloading a piece of the file (IE workaround)
    if ($seekStart > 0 || $seekEnd < ($fileSize - 1)) {
        header('HTTP/1.1 206 Partial Content');
        header('Content-Range: bytes ' . $seekStart . '-' . $seekEnd . '/' . $fileSize);
        header('Content-Length: ' . ($seekEnd - $seekStart + 1));
    } else {
      header("Content-Length: $fileSize");
    }

    header('Accept-Ranges: bytes');

    $file = @fopen($fileInfo->getFilePath(), 'rb');

    set_time_limit(0);
    fseek($file, $seekStart);

    while(!feof($file)) {
        print(@fread($file, 1024 * 8));
        ob_flush();
        flush();

        if (connection_status() != 0) {
            @fclose($file);
            exit;
        }
    }

        // File save was a success
        @fclose($file);
        exit;
?>

<?php

/*define('ACCESS', true);

    include_once 'function.php';

    if (IS_LOGIN) {
        $title = 'Tải tập tin';

        if ($dir == null || $name == null || !is_file(processDirectory($dir . '/' . $name))) {
            include_once 'header.php';

            echo '<div class="title">' . $title . '</div>';
            echo '<div class="list"><span>Đường dẫn không tồn tại</span></div>
            <div class="title">Chức năng</div>
            <ul class="list">
                <li><img src="icon/list.png"/> <a href="index.php">Danh sách</a></li>
            </ul>';

            include_once 'footer.php';
        } else {
            $dir = processDirectory($dir);
            $path = $dir . '/' . $name;

            header('Content-Type: application/octet-stream');
            header('Content-Disposition: inline; filename=' . $name);
            header('Content-Length: ' . filesize($path));
            readfile($path);
        }
    } else {
        goURL('login.php');
    }*/

?>