<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\App\Base\BaseConfigWrite;

    final class AppUpgradeConfigWrite extends BaseConfigWrite
    {

        public function __construct(AppUpgradeConfig $appConfig)
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
            return $this->baseConfigRead->getConfigArray();
        }

    }

?>