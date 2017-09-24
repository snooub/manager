<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\File\FileInfo;

    class AppConfig extends BaseConfig
    {

        private static $instance;

        protected function __construct()
        {
            parent::__construct(env('resource.config.manager'), env('resource.filename.config.manager'));
            parent::parse(true);
        }

        protected function __wakeup()
        {

        }

        protected function __clone()
        {

        }

        public static function getInstance()
        {
            if (null === self::$instance)
                self::$instance = new AppConfig();

            return self::$instance;
        }

        public function callbackPreWrite()
        {
            if ($this->getPathConfig() == $this->getPathConfigSystem())
                return false;

            return true;
        }

        public function takeConfigArrayWrite()
        {
            return $this->getConfigArray();
        }

        public function takePathConfigWrite()
        {
            return $this->pathConfig;
        }

    }

?>