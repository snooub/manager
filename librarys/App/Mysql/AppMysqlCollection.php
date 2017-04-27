<?php

    namespace Librarys\App\Mysql;

    final class AppMysqlCollection
    {

        private static $array = [
            'armscii8' => [
                'armscii8_bin',
                'armscii8_general_ci'
            ],

            'ascii' => [
                'ascii_bin',
                'ascii_general_ci'
            ],

            'big5' => [
                'big5_bin',
                'big5_chinese_ci'
            ],

            'binary' => [
                'binary'
            ],

            'cp1250' => [
                'cp1250_bin',
                'cp1250_croatian_ci',
                'cp1250_czech_cs',
                'cp1250_general_ci',
                'cp1250_polish_ci'
            ],

            'cp1251' => [
                'cp1251_bin',
                'cp1251_bulgarian_ci',
                'cp1251_general_ci',
                'cp1251_general_cs',
                'cp1251_ukrainian_ci'
            ],

            'cp1256' => [
                'cp1256_bin',
                'cp1256_general_ci'
            ],

            'cp1257' => [
                'cp1257_bin',
                'cp1257_general_ci',
                'cp1257_lithuanian_ci'
            ],

            'cp850' => [
                'cp850_bin',
                'cp850_general_ci'
            ],

            'cp852' => [
                'cp852_bin',
                'cp852_general_ci'
            ],

            'cp866' => [
                'cp866_bin',
                'cp866_general_ci'
            ],

            'cp932' => [
                'cp932_bin',
                'cp932_japanese_ci'
            ],

            'dec8' => [
                'dec8_bin',
                'dec8_swedish_ci'
            ],

            'eucjpms' => [
                'eucjpms_bin',
                'eucjpms_japanese_ci'
            ],

            'euckr' => [
                'euckr_bin',
                'euckr_korean_ci'
            ],

            'gb2312' => [
                'gb2312_bin',
                'gb2312_chinese_ci'
            ],

            'gbk' => [
                'gbk_bin',
                'gbk_chinese_ci'
            ],

            'geostd8' => [
                'geostd8_bin',
                'geostd8_general_ci'
            ],

            'greek' => [
                'greek_bin',
                'greek_general_ci'
            ],

            'hebrew' => [
                'hebrew_bin',
                'hebrew_general_ci'
            ],

            'hp8' => [
                'hp8_bin',
                'hp8_english_ci'
            ],

            'keybcs2' => [
                'keybcs2_bin',
                'keybcs2_general_ci'
            ],

            'koi8r' => [
                'koi8r_bin',
                'koi8r_general_ci'
            ],

            'koi8u' => [
                'koi8u_bin',
                'koi8u_general_ci'
            ],

            'latin1' => [
                'latin1_bin',
                'latin1_danish_ci',
                'latin1_general_ci',
                'latin1_general_cs',
                'latin1_german1_ci',
                'latin1_german2_ci',
                'latin1_spanish_ci',
                'latin1_swedish_ci'
            ],

            'latin2' => [
                'latin2_bin',
                'latin2_croatian_ci',
                'latin2_czech_cs',
                'latin2_general_ci',
                'latin2_hungarian_ci'
            ],

            'latin5' => [
                'latin5_bin',
                'latin5_turkish_ci'
            ],

            'latin7' => [
                'latin7_bin',
                'latin7_estonian_cs',
                'latin7_general_ci',
                'latin7_general_cs'
            ],

            'macce' => [
                'macce_bin',
                'macce_general_ci'
            ],

            'macroman' => [
                'macroman_bin',
                'macroman_general_ci'
            ],

            'sjis' => [
                'sjis_bin',
                'sjis_japanese_ci'
            ],

            'swe7' => [
                'swe7_bin',
                'swe7_swedish_ci'
            ],

            'tis620' => [
                'tis620_bin',
                'tis620_thai_ci'
            ],

            'ucs2' => [
                'ucs2_bin',
                'ucs2_czech_ci',
                'ucs2_danish_ci',
                'ucs2_esperanto_ci',
                'ucs2_estonian_ci',
                'ucs2_general_ci',
                'ucs2_hungarian_ci',
                'ucs2_icelandic_ci',
                'ucs2_latvian_ci',
                'ucs2_lithuanian_ci',
                'ucs2_persian_ci',
                'ucs2_polish_ci',
                'ucs2_roman_ci',
                'ucs2_romanian_ci',
                'ucs2_slovak_ci',
                'ucs2_slovenian_ci',
                'ucs2_spanish2_ci',
                'ucs2_spanish_ci',
                'ucs2_swedish_ci',
                'ucs2_turkish_ci',
                'ucs2_unicode_ci'
            ],

            'ujis' => [
                'ujis_bin',
                'ujis_japanese_ci'
            ],

            'utf8' => [
                'utf8_bin',
                'utf8_czech_ci',
                'utf8_danish_ci',
                'utf8_esperanto_ci',
                'utf8_estonian_ci',
                'utf8_general_ci',
                'utf8_hungarian_ci',
                'utf8_icelandic_ci',
                'utf8_latvian_ci',
                'utf8_lithuanian_ci',
                'utf8_persian_ci',
                'utf8_polish_ci',
                'utf8_roman_ci',
                'utf8_romanian_ci',
                'utf8_slovak_ci',
                'utf8_slovenian_ci',
                'utf8_spanish2_ci',
                'utf8_spanish_ci',
                'utf8_swedish_ci',
                'utf8_turkish_ci',
                'utf8_unicode_ci'
            ]
        ];

        const COLLECTION_NONE    = 'none';
        const COLLECTION_SPLIT   = '-@-';
        const COLLECTION_DEFAULT = 'utf8' . self::COLLECTION_SPLIT . 'utf8_unicode_ci';

        public static function display($lngCollectionNone = null, $defaultCollection = null, $isPrint = true)
        {
            $buffer = null;

            if (is_array(self::$array) == false || count(self::$array) <= 0) {
                $buffer .= '<option value="' . self::COLLECTION_NONE . '">';
                $buffer .= $lngCollectionNone;
                $buffer .= '</option>';
            } else {
                $buffer .= '<option value="' . self::COLLECTION_NONE . '"';

                if (
                        ($defaultCollection != null &&
                         $defaultCollection == self::COLLECTION_NONE) ||

                        ($defaultCollection       == null &&
                         self::COLLECTION_DEFAULT != null &&
                         self::COLLECTION_DEFAULT == self::COLLECTION_NONE)
                    ) {
                    $buffer .= ' selected="selected"';
                }

                $buffer .= '>';
                $buffer .= '</option>';

                foreach (self::$array AS $charset => $collection) {
                    $buffer .= '<optgroup label="' . $charset . '">';

                    foreach ($collection AS $collate) {
                        $collectionCurrent = $charset . self::COLLECTION_SPLIT . $collate;
                        $buffer           .= '<option value="' . $collectionCurrent . '"';

                        if (
                               ($defaultCollection != null &&
                                $defaultCollection == $collectionCurrent) ||

                               ($defaultCollection       == null &&
                                self::COLLECTION_DEFAULT != null &&
                                self::COLLECTION_DEFAULT == $collectionCurrent)
                            )
                        {
                            $buffer .= ' selected="selected"';
                        }

                        $buffer .= '>';
                        $buffer .= $collate;
                        $buffer .= '</option>';
                    }

                    $buffer .= '</optgroup>';
                }
            }

            if ($isPrint == false)
                return $buffer;

            echo $buffer;
        }

        public static function isValidate($collection, &$character = null, &$collate = null)
        {
            if (preg_match('/^(.+?)' . self::COLLECTION_SPLIT . '(.+?)$/is', $collection, $matches)) {
                $character = $matches[1];
                $collate   = $matches[2];

                return true;
            }

            return false;
        }

    }

?>