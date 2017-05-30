<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\Zip\PclZip;

    final class AppUpgrade
    {

        private $boot;
        private $appAboutConfig;
        private $appUpgradeConfig;
        private $isHasUpgradeLocal;

        const LOG_FILENAME_UPGRADE = 'upgrade.log';

        const ERROR_ZIP_NONE             = 0;
        const ERROR_ZIP_NOT_OPEN         = 1;
        const ERROR_ZIP_NOT_LIST_CONTENT = 2;

        const ERROR_UPGRADE_NONE             = 0;
        const ERROR_UPGRADE_NOT_LIST_FILE_APP = 1;

        public function __construct(Boot $boot, $appAboutConfig = null, $appUpgradeConfig = null)
        {
            $this->boot = $boot;

            if ($appAboutConfig == null)
                $this->appAboutConfig = new AppAboutConfig($boot);
            else
                $this->appAboutConfig = $appAboutConfig;

            if ($appUpgradeConfig == null)
                $this->appUpgradeConfig = new AppUpgradeConfig($boot);
            else
                $this->appUpgradeConfig = $appUpgradeConfig;
        }

        public function checkHasUpgradeLocal()
        {
            if ($this->appUpgradeConfig->hasEntryConfigArrayAny() == false)
                return false;

            $versionUpdate  = $this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_VERSION);
            $versionCurrent = $this->appAboutConfig->get('version');

            if (AppUpdate::validateVersionValue($versionCurrent, $versionCurrentMatches) == false)
                return false;

            if (AppUpdate::validateVersionValue($versionUpdate, $versionUpdateMatches) == false) {
                if (FileInfo::fileExists($this->appUpgradeConfig->getPathConfigSystem()))
                    FileInfo::unlink($this->appUpgradeConfig->getPathConfigSystem());

                return false;
            }

            if (AppUpdate::versionCurrentIsOLd($versionCurrentMatches, $versionUpdateMatches))
                return true;

            return false;
        }

        public function upgradeNow($checkHasUpgradeLocal = false, &$errorZipExtract = null, &$errorUpgrade = null)
        {
            if ($checkHasUpgradeLocal && $this->checkHasUpgradeLocal() == false)
                return false;

            $logHandle   = FileInfo::fileOpen(AppUpdate::getPathFileUpgrade(self::LOG_FILENAME_UPGRADE), 'wa+');
            $binFilePath = AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_BIN_FILENAME);
            $pclZip      = new PclZip($binFilePath);

            $errorZipExtract = self::ERROR_ZIP_NONE;
            $errorUpgrade    = self::ERROR_UPGRADE_NONE;

            if ($pclZip === false) {
                $errorZipExtract = self::ERROR_ZIP_NOT_OPEN;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true) . "\n");
                FileInfo::fileClose($logHandle);

                return false;
            }

            FileInfo::fileWrite($logHandle, "Info: Open file zip success\n");
            $listContent = $pclZip->listContent();

            if (is_array($listContent) == false || count($listContent) <= 0) {
                $errorZipExtract = self::ERROR_ZIP_NOT_LIST_CONTENT;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true));
                FileInfo::fileClose($logHandle);

                return false;
            }

            FileInfo::fileWrite($logHandle, "Info: Get list content in zip success\n");
            $appContent = FileInfo::listContent(
                env('app.path.root'),
                env('app.path.root'),
                true,
                true,
                'directory_',
                'file_'
            );

            if (is_array($appContent) == false || count($appContent) <= 0) {
                $errorUpgrade = self::ERROR_UPGRADE_NOT_LIST_FILE_APP;

                FileInfo::fileWrite($logHandle, "Error: Not get list content app\n");
                FileInfo::fileClose($logHandle);

                return false;
            }
ksort($appContent);
bug($appContent);
            // foreach ($listContent AS $entrys) {
            //     $
            // }
        }

        public function getAppAboutConfig()
        {
            return $this->appAboutConfig;
        }

        public function getAppUpgradeConfig()
        {
            return $this->appUpgradeConfig;
        }

        public function getVersionUpgrade()
        {
            if ($this->appUpgradeConfig->hasEntryConfigArrayAny() == false)
                return null;

            return $this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_VERSION);
        }

    }

?>