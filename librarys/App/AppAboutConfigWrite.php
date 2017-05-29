<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\App\Base\BaseConfigWrite;

    final class AppAboutConfigWrite extends BaseConfigWrite
    {

        public function __construct(AppAboutConfig $appConfig)
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