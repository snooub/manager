<?php

    namespace Librarys\Database\DatabaseConnect;

    final class DatabaseBackupRestore
    {

        private $databaseConnect;

        private $databaseLists;
        private $tabelLists;

        public function __construct(DatabaseConnect $databaseConnect)
        {
            $this->databaseConnect = $databaseConnect;
            $this->databaseLists   = array();
            $this->tabelLists      = array();
        }

        public function addDatabaseBackup($databaseName)
        {
            $this->databaseLists[] = addslashes($databaseName);
        }

        public function addTableBackup($databaseName, $tableName)
        {
            $this->databaseLists[addslashes($databaseName)] = addslashes($tableName);
        }

        public function backupRoot()
        {

        }

        public function backupDatabase($databaseName)
        {

        }

    }

?>