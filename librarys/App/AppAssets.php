<?php

    namespace Librarys\App;

    final class AppAssets
    {

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

    }

?>