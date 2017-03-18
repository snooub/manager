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
            $this->config = $config;
        }

        public function execute()
        {
            if (is_array($this->config))
                $this->parse($this->config);
            else if (is_file($this->config))
                $this->parse(file_get_contents($this->config));
            else if (is_null($this->config) == false)
                $this->parse(json_decode($this->config, true));
            else
                $this->parse([]);
        }

        public function parse(array $config)
        {
            if (is_null($config))
                return;


        }

    }

?>