<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\File\FileInfo;
    use Librarys\App\Config\AppConfig;

    final class AppTmpClean
    {

        public static function scanAutoClean(AppConfig $appConfig)
        {
            if ($appConfig == null)
                return false;

            $directory = env('app.path.tmp');

            if (FileInfo::isTypeDirectory($directory)) {
                $time     = time();
                $lifetime = $appConfig->get('tmp.lifetime', 180);
                $limit    = $appConfig->get('tmp.limit',    10);
                $handle   = FileInfo::scanDirectory($directory);

                if ($handle === false)
                    return false;

                $lists = array();

                foreach ($handle AS $filename) {
                    $filepath = FileInfo::filterPaths($directory . SP . $filename);

                    if (FileInfo::isTypeFile($filepath)) {
                        $filetime         = FileInfo::fileMTime($filepath);
                        $lists[$filename] = $filetime;
                    }
                }

                $count       = count($lists);
                $countDelete = $count;

                if ($count <= 0)
                    return false;

                asort($lists);

                foreach ($lists AS $filename => $filetime) {
                    $filepath = FileInfo::filterPaths($directory . SP . $filename);

                    if ($time - $filetime >= $lifetime || $countDelete >= $limit) {
                        $countDelete--;

                        if (FileInfo::isTypeFile($filepath))
                            FileInfo::unlink($filepath);
                    }
                }
            }

            return true;
        }

    }

?>