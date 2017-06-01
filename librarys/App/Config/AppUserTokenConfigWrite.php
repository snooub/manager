<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\App\Base\BaseConfigWrite;

    final class AppUserTokenConfigWrite extends BaseConfigWrite
    {

        public function __construct(AppUserConfig $appConfig)
        {
            parent::__construct($appConfig, $appConfig->getPathConfig());
            parent::setSpacing('    ');
        }

        public function callbackPreWrite()
        {
            return true;
        }

        public function resultConfigArray()
        {
            return $this->baseConfigRead->getConfigArray();
        }

    }

?>