<?php

    namespace Librarys\App;

    use Librarys\Boot;
    use Librarys\Database\DatabaseConnect;

    final class AppMysqlConnect extends DatabaseConnect
    {

        private $isDatabaseNameCustom;

        public function __construct(Boot $boot)
        {
            parent::__construct($boot);
        }

        public function setDatabaseNameCustom($isDatabaseNameCustom)
        {
            $this->isDatabaseNameCustom = $isDatabaseNameCustom;
        }

        public function isDatabaseNameCustom()
        {
            return $this->isDatabaseNameCustom;
        }

    }

?>