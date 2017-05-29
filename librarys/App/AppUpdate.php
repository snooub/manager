<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\File\FileCurl;
    use Librarys\App\AppAboutConfig;

    final class AppUpdate
    {

        private $servers = [
            'localhost',
            // 'izerocs.mobi',
            // 'izerocs.net',
            // 'izerocs.ga'
        ];

        private $boot;
        private $aboutConfig;
        private $serverErrors = array();
        private $path         = 'app/ManagerServer/check_update.php';

        private $jsonArray;
        private $updateStatus;

        const PARAMETER_VERSION_GUEST_URL = 'version_guest';

        const ARRAY_KEY_URL              = 'url';
        const ARRAY_KEY_ERROR_INT        = 'error_int';
        const ARRAY_KEY_HTTP_CODE        = 'http_code';
        const ARRAY_KEY_ERROR_CHECK      = 'error_check';
        const ARRAY_KEY_ERROR_SERVER     = 'error_server';
        const ARRAY_KEY_ERROR_WRITE_INFO = 'error_write_info';

        const ARRAY_DATA_KEY_VERSION         = 'version';
        const ARRAY_DATA_KEY_IS_BETA         = 'is_beta';
        const ARRAY_DATA_KEY_CHANGELOG       = 'changelog';
        const ARRAY_DATA_KEY_BUILD_LAST      = 'build_last';
        const ARRAY_DATA_KEY_COMPRESS_METHOD = 'compress_method';
        const ARRAY_DATA_KEY_ERROR_INT       = 'error_int';

        const RESULT_NONE              = 0;
        const RESULT_VERSION_IS_LATEST = 1;
        const RESULT_VERSION_IS_OLD    = 2;

        const ERROR_CHECK_NONE                   = 0;
        const ERROR_CHECK_JSON_DATA              = 1;
        const ERROR_CHECK_JSON_DATA_NOT_VALIDATE = 2;

        const ERROR_SERVER_NONE                                = 0;
        const ERROR_SERVER_NOT_FOUND_LIST_VERSION_IN_SERVER    = 1;
        const ERROR_SERVER_NOT_FOUND_PARAMETER_VERSION_GUEST   = 2;
        const ERROR_SERVER_VERSION_GUEST_NOT_VALIDATE          = 3;
        const ERROR_SERVER_VERSION_SERVER_NOT_VALIDATE         = 4;
        const ERROR_SERVER_NOT_FOUND_VERSION_CURRENT_IN_SERVER = 5;

        const ERROR_WRITE_INFO_NONE   = 0;
        const ERROR_WRITE_INFO_FAILED = 1;

        public function __construct(Boot $boot, AppAboutConfig $about)
        {
            $this->boot        = $boot;
            $this->aboutConfig = $about;
        }

        public function checkUpdate()
        {
            if (is_array($this->servers) == false)
                return false;

            $countSuccess = count($this->servers);

            foreach ($this->servers AS $server) {
                $curl           = new FileCurl($server . '/' . $this->path . '?' . self::PARAMETER_VERSION_GUEST_URL . '=' . $this->aboutConfig->get('version'));
                $errorCheck     = self::ERROR_CHECK_NONE;
                $errorServer    = self::ERROR_SERVER_NONE;
                $errorWriteInfo = self::ERROR_WRITE_INFO_NONE;

                if ($curl->curl() != false) {
                    $bufferLength = $curl->getBufferLength();
                    $bufferData   = $curl->getBuffer();
                    $jsonData     = jsonDecode($bufferData);
                    $jsonValidate = self::validateJsonData($jsonData);

                    if ($jsonData === false) {
                        $errorCheck = self::ERROR_CHECK_JSON_DATA;
                    } else if ($jsonValidate === false) {
                        $errorCheck = self::ERROR_CHECK_JSON_DATA_NOT_VALIDATE;
                    } else {
                        $this->jsonArray = $jsonData;

                        if ($this->hasJsonArrayKey(self::ARRAY_DATA_KEY_ERROR_INT))
                            $errorServer = $this->getJsonArrayValue(self::ARRAY_DATA_KEY_ERROR_INT);
                        else if ($this->checkDataUpdate() != false && $this->makeFileUpdateInfo($errorWriteInfo))
                            return true;
                    }
                }

                $countSuccess--;
                $this->serverErrors[$server] = [
                    self::ARRAY_KEY_URL              => $curl->getURL(),
                    self::ARRAY_KEY_ERROR_INT        => $curl->getErrorInt(),
                    self::ARRAY_KEY_HTTP_CODE        => $curl->getHttpCode(),
                    self::ARRAY_KEY_ERROR_CHECK      => $errorCheck,
                    self::ARRAY_KEY_ERROR_SERVER     => $errorServer,
                    self::ARRAY_KEY_ERROR_WRITE_INFO => $errorWriteInfo
                ];
            }

            if ($countSuccess <= 0)
                return false;

            return true;
        }

        private function checkDataUpdate()
        {
            if ($this->aboutConfig instanceof AppAboutConfig == false)
                return false;

            if (is_array($this->jsonArray) == false)
                return false;

            $this->updateStatus = self::RESULT_NONE;

            $versionCurrent = $this->aboutConfig->get('version');
            $versionUpdate  = $this->getVersionUpdate();

            if (self::versionCurrentIsOld($versionCurrent, $versionUpdate))
                $this->updateStatus = self::RESULT_VERSION_IS_LATEST;
            else
                $this->updateStatus = self::RESULT_VERSION_IS_OLD;

            return true;
        }

        private function makeFileUpdateInfo(&$errorWriteInfo = null)
        {
            $appUpgradeConfig      = new AppUpgradeConfig($this->boot);
            $appUpgradeConfigWrite = new AppUpgradeConfigWrite($appUpgradeConfig);

            foreach ($this->jsonArray AS $key => $value) {
                if ($appUpgradeConfig->set($key, $value) == false) {
                    $errorWriteInfo = self::ERROR_WRITE_INFO_FAILED;
                    return false;
                }
            }

            if ($appUpgradeConfigWrite->write() == false) {
                $errorWriteInfo = self::ERROR_WRITE_INFO_FAILED;
                return false;
            }

            $this->aboutConfig->setSystem('check_at', time());
            $this->aboutConfig->fastWriteConfig();

            return true;
        }

        public function getServers()
        {
            return $this->servers;
        }

        public function getServerErrors()
        {
            return $this->serverErrors;
        }

        public function getUpdateStatus()
        {
            return $this->updateStatus;
        }

        public function getJsonArrayValue($key)
        {
            if (is_array($this->jsonArray) == false)
                return null;

            if (isset($this->jsonArray[$key]))
                return $this->jsonArray[$key];

            return null;
        }

        public function hasJsonArrayKey($key)
        {
            if (is_array($this->jsonArray) == false)
                return false;

            if (isset($this->jsonArray[$key]))
                return true;

            return false;
        }

        public function getVersionUpdate()
        {
            return $this->getJsonArrayValue(self::ARRAY_DATA_KEY_VERSION);
        }

        public function getChangeMsgUpdate()
        {
            return $this->getJsonArrayValue(self::ARRAY_DATA_KEY_CHANGE_MSG);
        }

        public function getBuildLastUpdate()
        {
            return $this->getJsonArrayValue(self::ARRAY_DATA_KEY_BUILD_LAST);
        }

        public function getCompressMethodUpdate()
        {
            return $this->getJsonArrayValue(self::ARRAY_DATA_KEY_COMPRESS_METHOD);
        }

        public function getDataUpdate()
        {
            return $this->getJsonArrayValue(self::ARRAY_DATA_KEY_DATA_UPDATE);
        }

        public static function validateJsonData($jsonArray)
        {
            if ($jsonArray == null || is_array($jsonArray) == false)
                return false;

            if (isset($jsonArray[self::ARRAY_DATA_KEY_ERROR_INT]))
                return true;

            $keyHas      = array();
            $keyValidate = [
                self::ARRAY_DATA_KEY_VERSION,
                self::ARRAY_DATA_KEY_CHANGELOG,
                self::ARRAY_DATA_KEY_BUILD_LAST,
                self::ARRAY_DATA_KEY_COMPRESS_METHOD
            ];

            foreach ($jsonArray AS $key => $value) {
                if (in_array($key, $keyValidate)) {
                    $keyHas[] = $key;

                    if ($key === self::ARRAY_DATA_KEY_VERSION && self::validateVersionValue($value) == false)
                        return false;
                }
            }

            $countKeyHas      = count($keyHas);
            $countKeyValidate = count($keyValidate);

            if ($countKeyValidate === $countKeyHas)
                return true;

            return false;
        }

        public static function validateVersionValue($version, &$matches = null)
        {
            return preg_match('/^(\d)+\.(\d)+\.?(\d)?$/i', $version, $matches);
        }

        public static function versionCurrentIsOld($versionCurrent, $versionUpdate)
        {
            $versionCurrentMatches = null;
            $versionUpdateMacthes  =  null;

            if (is_array($versionCurrent) == false)
                self::validateVersionValue($versionCurrent, $versionCurrentMatches);
            else
                $versionCurrentMatches = $versionCurrent;

            if (is_array($versionUpdate) == false)
                self::validateVersionValue($versionUpdate, $versionUpdateMacthes);
            else
                $versionUpdateMacthes = $versionUpdate;

            if (is_array($versionCurrentMatches) == false || is_array($versionUpdateMacthes) == false)
                return false;

            if (isset($versionCurrentMatches[3]) == false)
                $versionCurrentMatches[3] = -1;

            if (isset($versionUpdateMacthes[3]) == false)
                $versionUpdateMacthes[3] = -1;

            for ($i = 0; $i < 3; ++$i) {
                if (intval($versionUpdateMacthes[$i]) > intval($versionCurrentMatches[$i]))
                    return true;
            }

            return false;
        }

    }

?>