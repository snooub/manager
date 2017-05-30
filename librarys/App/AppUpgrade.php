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

        const ERROR_ZIP_NONE     = 0;
        const ERROR_ZIP_NOT_OPEN = 1;
        const ERROR_ZIP_EXTRACT  = 2;

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

            FileInfo::fileWrite($logHandle, "Info: Open file zip begin\n");

            if ($pclZip === false) {
                $errorZipExtract = self::ERROR_ZIP_NOT_OPEN;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true) . "\n");
                FileInfo::fileClose($logHandle);

                return false;
            }

            FileInfo::fileWrite($logHandle, "Info: Open file zip end\n");
            FileInfo::fileWrite($logHandle, "Info: Get list content in zip begin\n");
            $listContent = $pclZip->listContent();

            if (is_array($listContent) == false || count($listContent) <= 0) {
                $errorZipExtract = self::ERROR_ZIP_NOT_LIST_CONTENT;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true));
                FileInfo::fileClose($logHandle);

                return false;
            }

            FileInfo::fileWrite($logHandle, "Info: Get list content in zip end\n");

            $prefixDirectory = 'directory_';
            $prefixFile      = 'file_';
            $appPath         = env('app.path.root');
            $appContent      = FileInfo::listContent($appPath, $appPath, true, true, $prefixDirectory, $prefixFile);

            if (is_array($appContent) == false || count($appContent) <= 0) {
                $errorUpgrade = self::ERROR_UPGRADE_NOT_LIST_FILE_APP;

                FileInfo::fileWrite($logHandle, "Error: Not get list content app\n");
                FileInfo::fileClose($logHandle);

                return false;
            }

            if ($pclZip->extract(PCLZIP_OPT_PATH, FileInfo::validate(env('app.path.root') . SP . 'clone'), PCLZIP_CB_PRE_EXTRACT, 'upgradeCallbackExtractZip') != false) {
                FileInfo::fileWrite($logHandle, "Info: Extract upgrade success\n");
                FileInfo::fileWrite($logHandle, "Info: Check file recycle in app begin\n");

                foreach ($listContent AS $entrys) {
                    $entryFilename = FileInfo::validate($entrys['stored_filename']);

                    if ($entrys['folder'] == false && array_key_exists($prefixFile . $entryFilename, $appContent))
                        unset($appContent[$prefixFile . $entryFilename]);
                }

                $appEntryIgones = $this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_ENTRY_IGONE_REMOVE);

                foreach ($appContent AS $key => $entrys) {
                    $entryFilepath = $entrys['filepath'];
                    $entryIsIgone  = false;

                    foreach ($appEntryIgones AS $entryIgone) {
                        if (strpos($entryFilepath, $entryIgone) === 0) {
                            $entryIsIgone = true;
                            break;
                        }
                    }

                    $appEntryPath = FileInfo::validate($appPath . SP . $entryFilepath);

                    if ($entryIsIgone) {
                        unset($appContent[$key]);
                    } else if ($entrys['is_directory'] == false) {
                        if (FileInfo::unlink($appEntryPath) != false)
                            FileInfo::fileWrite($logHandle, 'Success: Remove file ' . $appEntryPath . "\n");
                        else
                            FileInfo::fileWrite($logHandle, 'Failed: Remove file ' . $appEntryPath . "\n");
                    } else if ($entrys['is_directory'] == false) {
                        FileInfo::fileWrite($logHandle, 'Info: Skip remove file ' . $appEntryPath . "\n");
                    }
                }

                FileInfo::fileWrite($logHandle, "Info: Check file recycle in app end\n");
                FileInfo::fileWrite($logHandle, "Info: Check directory empty in app begin\n");

                foreach ($appContent AS $entrys) {
                    if ($entrys['is_directory']) {
                        $entryFilepath      = $entrys['filepath'];
                        $appEntryPath       = FileInfo::validate($appPath . SP . $entryFilepath);
                        $globDirectoryEntry = FileInfo::globDirectory($appEntryPath . SP . '*');

                        if ($globDirectoryEntry === false ||  count($globDirectoryEntry) <= 0) {
                            if (FileInfo::rmdir($appEntryPath) != false)
                                FileInfo::fileWrite($logHandle, 'Success: Remove directory empty ' . $appEntryPath . "\n");
                            else
                                FileInfo::fileWrite($logHandle, 'Failed: Remove directory empty ' . $appEntryPath . "\n");
                        } else {
                            FileInfo::fileWrite($logHandle, 'Info: Skip remove directory ' . $appEntryPath . "\n");
                        }
                    }
                }

                FileInfo::fileWrite($logHandle, "Info: Check directory empty in app end\n");
                FileInfo::fileWrite($logHandle, "Info: Upgrade success");
                FileInfo::fileClose($logHandle);

                return $this->writeAbout();
            } else {
                $errorZipExtract = self::ERROR_ZIP_EXTRACT;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true) . "\n");
                FileInfo::fileClose($logHandle);
            }

            return false;
        }

        private function writeAbout()
        {
            $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_VERSION,    $this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_VERSION));
            $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_CHECK_AT,   $this->appAboutConfig->get(AppAboutConfig::ARRAY_KEY_CHECK_AT));
            $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_UPGRADE_AT, time());

            $appAboutConfigWrite = new AppAboutConfigWrite($this->appAboutConfig);
            $appAboutConfigWrite->write();

            return true;
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