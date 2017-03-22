<?php

    namespace Librarys\App;

    final class AppLocationPath
    {

        private $appDirectory;

        private $urlBegin;
        private $urlEnd;

        /**
         * [__construct Init object]
         * @param AppDirectory $appDirectory [Object AppDirectory]
         * @param [string]       $urlBegin     [Url begin custom]
         * @param [string]       $urlEnd       [Url end custom]
         */
        public function __construct(AppDirectory $appDirectory, $urlBegin = null, $urlEnd = null)
        {
            $this->appDirectory = $appDirectory;

            $this->setUrlBegin($urlBegin);
            $this->setUrlEnd($urlEnd);
        }

         /**
         * [setUrlBegin Set value url begin for page]
         * @param [string] $urlBegin [Can write null value]
         */
        public function setUrlBegin($urlBegin)
        {
            $this->urlBegin = $urlBegin;
        }

        /**
         * [getUrlBegin Return url begin]
         * @return [string] [Return url begin]
         */
        public function getUrlBegin()
        {
            return $this->urlBegin;
        }

        /**
         * [setUrlEnd Set value url end for page]
         * @param [string] $urlEnd [Can write null value]
         */
        public function setUrlEnd($urlEnd)
        {
            $this->urlEnd = $urlEnd;
        }

        /**
         * [getUrlEnd Return url end]
         * @return [string] [Return url end]
         */
        public function getUrlEnd()
        {
            return $this->urlEnd;
        }

        /**
         * [display description]
         * @return [string] [Return html display of page]
         */
        public function display($print = true)
        {
            $buffer = null;

            if ($this->appDirectory->getDirectory() != SP && strpos($this->appDirectory->getDirectory(), SP) !== false) {
                $locationSP    = SP;

                if ($locationSP == '\\')
                    $locationSP = SP . SP;

                $locationArray           = explode(SP, preg_replace('|^' . $locationSP . '(.*?)$|', '\1', $this->appDirectory->getDirectory()));
                $locationCount           = count($locationArray);
                $locationIsSeparatorFist = strpos($this->appDirectory->getDirectory(), SP) === 0;
                $locationEntry           = null;
                $locationUrl             = null;

                $buffer .= '<ul class="location-path">';

                foreach ($locationArray AS $locationKey => $locationValue) {
                    if ($locationKey === 0) {
                        $locationSeparator = null;

                        if (preg_match('|^' . $locationSP . '(.*?)$|', $this->appDirectory->getDirectory()) !== false)
                            $locationSeparator = SP;

                        if ($locationIsSeparatorFist)
                            $locationEntry = $locationSeparator . $locationValue;
                        else
                            $locationEntry = $locationValue;
                    } else {
                        $locationEntry = SP . $locationValue;
                    }

                    if ($locationKey < $locationCount - 1) {
                        $buffer .= '<li>';

                        if ($locationKey > 0 || ($locationKey === 0 && $locationIsSeparatorFist))
                            $buffer .= '<span class="separator">' . SP . '</span>';

                        $buffer .= '<a href="' . $this->urlBegin . AppDirectory::PARAMETER_DIRECTORY_URL . '=' . AppDirectory::rawEncode($locationUrl . $locationEntry) . $this->urlEnd . '">';
                        $buffer .= '<span>';

                        $locationUrl .= $locationEntry;
                        $buffer      .= $locationValue;

                        $buffer .= '</span>';
                        $buffer .= '</a>';
                        $buffer .= '</li>';
                    } else {
                        break;
                    }
                }

                $buffer .= '</ul>';
            }

            if ($print == true)
                echo $buffer;
            else
                return $buffer;
        }

    }

?>