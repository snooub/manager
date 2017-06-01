<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\Zip\PclZip;
    use Librarys\App\Config\AppAboutConfig;
    use Librarys\App\Config\AppUpgradeConfig;

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

        const ERROR_CHECK_UPGRADE_NONE             = 0;
        const ERROR_CHECK_UPGRADE_FILE_NOT_FOUND   = 1;
        const ERROR_CHECK_UPGRADE_FILE_DATA_ERROR  = 2;
        const ERROR_CHECK_UPGRADE_MD5_CHECK_FAILED = 3;

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

        public function checkHasUpgradeLocal(&$errorCheckUpgrade = null)
        {
            $errorCheckUpgrade = self::ERROR_CHECK_UPGRADE_NONE;

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

            $binFilePath = AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_BIN_FILENAME);

            if (FileInfo::isTypeFile($binFilePath) == false) {
                $errorCheckUpgrade = self::ERROR_CHECK_UPGRADE_FILE_NOT_FOUND;
                return false;
            }

            if (FileInfo::fileSize($binFilePath) <= 0) {
                $errorCheckUpgrade = self::ERROR_CHECK_UPGRADE_FILE_DATA_ERROR;
                return false;
            }

            if ($this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_MD5_BIN_CHECK) !== @md5_file($binFilePath)) {
                $errorCheckUpgrade = self::ERROR_CHECK_UPGRADE_MD5_CHECK_FAILED;
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

            if ($pclZip->extract(PCLZIP_OPT_PATH, FileInfo::filterPaths($appPath), PCLZIP_CB_PRE_EXTRACT, 'upgradeCallbackExtractZip') != false) {
                FileInfo::fileWrite($logHandle, "Info: Extract upgrade success\n");
                FileInfo::fileWrite($logHandle, "Info: Check file recycle in app begin\n");

                foreach ($listContent AS $entrys) {
                    $entryFilename = FileInfo::filterPaths($entrys['stored_filename']);

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

                    $appEntryPath = FileInfo::filterPaths($appPath . SP . $entryFilepath);

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
                        $appEntryPath       = FileInfo::filterPaths($appPath . SP . $entryFilepath);
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
                FileInfo::fileWrite($logHandle, "Info: Clone and remove file upgrade begin\n");

                $binFilePath       = AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_BIN_FILENAME);
                $changelogFilePath = AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_CHANGELOG_FILENAME);
                $readmeFilePath    = AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_README_FILENAME);
                $resourceDirectory = env('app.path.resource');

                if (FileInfo::isTypeFile($binFilePath) && FileInfo::unlink($binFilePath))
                    FileInfo::fileWrite($logHandle, "Success: Remove file upgrade: " . $binFilePath . "\n");
                else
                    FileInfo::fileWrite($logHandle, "Failed: Remove file upgrade: " . $binFilePath . "\n");

                if (FileInfo::isTypeFile($changelogFilePath)) {
                    FileInfo::copySystem($changelogFilePath, AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_CHANGELOG_FILENAME, $resourceDirectory));

                    if (FileInfo::unlink($changelogFilePath))
                        FileInfo::fileWrite($logHandle, "Success: Remove file upgrade: " . $changelogFilePath . "\n");
                    else
                        FileInfo::fileWrite($logHandle, "Failed: Remove file upgrade: " . $changelogFilePath . "\n");
                }

                if (FileInfo::isTypeFile($readmeFilePath)) {
                    FileInfo::copySystem($readmeFilePath, AppUpdate::getPathFileUpgrade(AppUpdate::VERSION_README_FILENAME, $resourceDirectory));

                    if (FileInfo::unlink($readmeFilePath))
                        FileInfo::fileWrite($logHandle, "Success: Remove file upgrade: " . $readmeFilePath . "\n");
                    else
                        FileInfo::fileWrite($logHandle, "Failed: Remove file upgrade: " . $readmeFilePath . "\n");
                }

                if (FileInfo::isTypeFile(env('resource.config.upgrade')))
                    FileInfo::unlink(env('resource.config.upgrade'));

                FileInfo::fileWrite($logHandle, "Info: Clone and remove file upgrade end\n");
                FileInfo::fileWrite($logHandle, "Info: Update about upgrade begin\n");

                $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_VERSION,    $this->appUpgradeConfig->get(AppUpdate::ARRAY_DATA_KEY_VERSION));
                $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_CHECK_AT,   $this->appAboutConfig->get(AppAboutConfig::ARRAY_KEY_CHECK_AT));
                $this->appAboutConfig->setSystem(AppAboutConfig::ARRAY_KEY_UPGRADE_AT, time());
                $this->appAboutConfig->write();

                FileInfo::fileWrite($logHandle, "Info: Update about upgrade end\n");
                FileInfo::fileWrite($logHandle, "Info: Upgrade success");
                FileInfo::fileClose($logHandle);
                return true;
            } else {
                $errorZipExtract = self::ERROR_ZIP_EXTRACT;

                FileInfo::fileWrite($logHandle, $pclZip->errorInfo(true) . "\n");
                FileInfo::fileClose($logHandle);
            }

            return false;
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