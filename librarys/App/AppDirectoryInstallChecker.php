<?php

    namespace Librarys\App;

    use Librarys\Boot;

    final class AppDirectoryInstallChecker
    {

        private $boot;

        public function __construct(Boot $boot)
        {
            $this->boot = $boot;
        }

        public function execute()
        {

        }

    }

?>