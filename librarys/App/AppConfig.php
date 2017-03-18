<?php

    namespace Librarys\App;

    use Librarys\Boot;

    final class AppConfig
    {

        private $boot;
        private $config;

        public function __construct(Boot $boot, $config = null)
        {
            $this->boot   = $boot;
            $this->parse($config);
        }

        public function execute()
        {

        }

        public function parse($config)
        {
            if (is_null($config))
                return;

            if (is_array($config))
                $this->config = $config;
            else if (is_file($config))
                $this->config = require_once($config);
            else if (is_null($config) == false)
                $this->config = json_decode($config, true);
            else
                $this->config = array();
        }

    }

?>