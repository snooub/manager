<?php

    namespace Librarys\App;

    use Librarys\Boot;
    use Librarys\Database\DatabaseConnect;

    final class AppMysqlConnect extends DatabaseConnect
    {

        private $isDatabaseNameCustom;
        private $mysqlQueryStringCurrent;

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

        public function query($sql)
        {
            return parent::query($this->mysqlQueryStringCurrent = $sql);
        }

        public function getMysqlQueryExecStringCurrent()
        {
            return $this->getHost() . '@' . $this->getUsername() . ' > ' . $this->mysqlQueryStringCurrent;
        }

    }

?>