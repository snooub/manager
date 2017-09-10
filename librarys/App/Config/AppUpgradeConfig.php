<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    final class AppUpgradeConfig extends BaseConfig
    {

        public function __construct()
        {
            parent::__construct(env('resource.config.upgrade'), env('resource.filename.config.upgrade'));
            parent::parse(true);
        }

        public function callbackPreWrite()
        {
            return true;
        }

        public function takeConfigArrayWrite()
        {
            return $this->getConfigArraySystem();
        }

        public function takePathConfigWrite()
        {
            return $this->pathConfigSystem;
        }

    }

?>