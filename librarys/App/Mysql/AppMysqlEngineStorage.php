<?php

    namespace Librarys\App\Mysql;

    use Librarys\App\Mysql\AppMysqlConnect;

    final class AppMysqlEngineStorage
    {

/*        private static $array = [
            'InnoDB',
            'MyISAM',
            'MEMORY',
            'MERGE',
            'EXAMPLE',
            'ARCHIVE',
            'CSV',
            'BLACKHOLE',
            'FEDERATD'
        ];*/
        public static $array;

        const ENGINE_STORAGE_NONE    = 'none';
        const ENGINE_STORAGE_DEFAULT = 'MyISAM';

        public static function display(AppMysqlConnect $appMysqlConnect, $nameRadioCheck, $lngEngineStorageNone = null $defaultEngineStorage = null, $isPrint = true)
        {
            if ($appMysqlConnect == null)
                return;

            $query = $appMysqlConnect->query('SELECT * FROM `information_schema`.`ENGINES`');

            if ($appMysqlConnect->isResource($query)) {

            }

            $buffer = null;

            if (is_array(self::$array) == false || count(self::$array) <= 0) {
                $buffer .= '<li>';
                    $buffer .= '<input type="radio" name="' . $nameRadioCheck . '" value="' . self::ENGINE_STORAGE_NONE . '"/>';
                    $buffer .= '<label for="' . self::ENGINE_STORAGE_NONE . '">';
                        $buffer .= '<span>' . $lngEngineStorageNone . '</span>';
                    $buffer .= '</label>';
                $buffer .= '</li>';
            } else {
                foreach (self::$array AS $engine) {
                    $buffer .= '<li>';
                        $buffer .= '<input type="radio" name="' . $nameRadioCheck . '" value="' . $engine . '"';

                        if (
                                ($defaultEngineStorage != null &&
                                 $defaultEngineStorage == $engine) ||

                                ($defaultEngineStorage        != null &&
                                 self::ENGINE_STORAGE_DEFAULT != null &&
                                 self::ENGINE_STORAGE_DEFAULT = $engine)
                            )
                        {
                            $buffer .= ' checked="checked"';
                        }

                        $buffer .= '/>';
                        $buffer .= '<label for="' . $engine . '">';
                            $buffer .= '<span>' . $engine . '</span>';
                        $buffer .= '</label>';
                    $buffer .= '</li>';
                }
            }

            if ($isPrint == false)
                return $buffer;

            echo $buffer;
        }

    }

?>