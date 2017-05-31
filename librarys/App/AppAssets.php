<?php

    namespace Librarys\App;

    use Librarys\File\FileInfo;
    use Librarys\App\Config\AppAssetsConfig;

    final class AppAssets
    {

        private $pathDirectory;
        private $filename;
        private $config;
        private $buffer;

        public function __construct($pathDirectory, $filename)
        {
            $this->setPathDirectory($pathDirectory);
            $this->setFilename($filename);
        }

        public function setPathDirectory($pathDirectory)
        {
            $this->pathDirectory = $pathDirectory;
        }

        public function getPathDirectory()
        {
            return $this->pathDirectory;
        }

        public function setFilename($filename)
        {
            $this->filename = $filename;
        }

        public function getFilename()
        {
            return $this->filename;
        }

        public static function makeURLResourceTheme($themeDirectory, $filename)
        {
            global $boot;

            $filename = str_ireplace('.css', null, basename($filename));
            $buffer   = env('app.http.host') . '/asset.php';
            $buffer  .= '?' . ASSET_PARAMETER_THEME_URL        . '=' . $themeDirectory;
            $buffer  .= '&' . ASSET_PARAMETER_CSS_URL          . '=' . $filename;
            $buffer  .= '&' . $boot->getCFSRToken()->getName() . '=' . $boot->getCFSRToken()->getToken();
            $buffer  .= '&' . ASSET_PARAMETER_RAND_URL         . '=' . env('dev.rand');

            return $buffer;
        }

        public static function makeURLResourceJavascript($filename)
        {
            global $boot;

            $filename = str_ireplace('.js', null, basename($filename));
            $buffer  = env('app.http.host') . '/asset.php';
            $buffer .= '?' . ASSET_PARAMETER_JS_URL           . '=' . $filename;
            $buffer .= '&' . $boot->getCFSRToken()->getName() . '=' . $boot->getCFSRToken()->getToken();
            $buffer .= '&' . ASSET_PARAMETER_RAND_URL         . '=' . env('dev.rand');

            return $buffer;
        }

        public static function makeURLResourceIcon($themeDirectory, $filename)
        {
            return env('app.http.theme') . '/' . $themeDirectory . '/icon/' . $filename;
        }

        public function load()
        {
            global $boot;

            $envpath  = FileInfo::validate($this->pathDirectory . SP . env('resource.filename.config.env_theme'));
            $filepath = FileInfo::validate($this->pathDirectory . SP . $this->filename);

            if (FileInfo::isTypeFile($filepath) == false)
                return false;

            $this->buffer = FileInfo::fileReadContents($filepath);

            if (FileInfo::isTypeFile($envpath))
                $this->config = new AppAssetsConfig($boot, $envpath);

            if ($this->buffer == false)
                return false;

            if ($this->config !== null && preg_match_all('/(\$|\#)\[(.+?)\]/si', $this->buffer, $matches) != false) {
                foreach ($matches[2] AS $index => $env) {
                    $value = $this->config->get($env);

                    if ($value == null || empty($value) || is_string($value) == false)
                        trigger_error('Not value for key "' . $env);
                    else if ($matches[1][$index] === '#')
                        $this->buffer = str_replace($matches[0][$index], '#' . $value, $this->buffer);
                    else
                        $this->buffer = str_replace($matches[0][$index], $value, $this->buffer);
                }
            }

            return true;
        }

        public function display($isPrint = true)
        {
            if ($isPrint == false)
                return $this->buffer;

            echo $this->buffer;
            echo "\n\n";
        }

    }

?>