<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\App\Base\BaseConfigWrite;

    final class AppUserConfigWrite extends BaseConfigWrite
    {

        public function __construct(AppUserConfig $appConfig)
        {
            parent::__construct($appConfig, $appConfig->getPathConfigSystem());
            parent::setSpacing('    ');
        }

        public function callbackPreWrite()
        {
            return true;
        }

        public function resultConfigArray()
        {
            return $this->baseConfigRead->getConfigArraySystem();
        }

    }

?>