<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;

    final class AppUpgrade
    {

        private $boot;
        private $appAboutConfig;
        private $appUpgradeConfig;
        private $isHasUpgradeLocal;

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