<?php

    namespace Librarys\App\Mysql;

    final class AppMysqlAttribute
    {

        private static $array = [
            'UNSIGNED'                    => 'UNSIGNED',
            'UNSIGNED ZEROFILL'           => 'UNSIGNED ZEROFILL',
            'ON UPDATE CURRENT_TIMESTAMP' => 'CURRENT TIMESTAMP'
        ];

        const ATTRIBUTES_NONE    = 'none';
        const ATTRIBUTES_DEFAULT = null;

        public static function display($lngAttributesNone = null, $defaultAttributes = null, $isPrint = true)
        {
            $buffer = null;

            if (is_array(self::$array) == false || count(self::$array) <= 0) {
                $buffer .= '<option value="' . self::ATTRIBUTES_NONE . '">';
                $buffer .= $lngAttributesNone;
                $buffer .= '</option>';
            } else {
                $buffer .= '<option value="' . self::ATTRIBUTES_NONE  . '"';

                if (
                        ($defaultAttributes != null &&
                         $defaultAttributes == self::ATTRIBUTES_NONE) ||

                        ($defaultAttributes       != null &&
                         self::ATTRIBUTES_DEFAULT != null &&
                         self::ATTRIBUTES_DEFAULT == self::ATTRIBUTES_NONE)
                    )
                {
                    $buffer .= ' selected="selected"';
                }

                $buffer .= '>';
                $buffer .= '</option>';

                foreach (self::$array AS $key => $attr) {
                    $buffer .= '<option value="' . $key . '"';

                    if (
                            ($defaultAttributes != null &&
                             $defaultAttributes == $key) ||

                            ($defaultAttributes       != null &&
                             self::ATTRIBUTES_DEFAULT != null &&
                             self::ATTRIBUTES_DEFAULT == $key)
                        )
                    {
                        $buffer .= ' selected="selected"';
                    }

                    $buffer .= '>';
                    $buffer .= $attr;
                    $buffer .= '</option>';
                }
            }

            if ($isPrint == false)
                return $buffer;

            echo $buffer;
        }

    }

?>