<?php

    namespace Librarys\Database\Extension;

    use Librarys\Database\DatabaseConnect;

    final class DatabaseExtensionMysql extends DatabaseExtensionInterface
    {

        public function __construct(DatabaseConnect $databaseConnect)
        {
            parent::__construct($databaseConnect);
        }

        public function connect($host, $username, $password, $name, $port)
        {
            if ($port != null && empty($port) && is_numeric($port))
                $host .= ':' . $port;

            $resource = @mysql_connect(
                $host,
                $username,
                $password
            );

            if ($this->isResource($resource) && $name != null) {
                if (@mysql_select_db($name) == false)
                    return false;
            }

            return $resource;
        }

        public function disconnect()
        {
            return @mysql_close($this->getDatabaseConnect()->getResource());
        }

        public function isConnect()
        {
            return $this->isResource($this->getDatabaseConnect()->getResource());
        }

        public function isResource($resource)
        {
            return is_resource($resource);
        }

        public function isSupportExtension()
        {
            return function_exists('mysql_connect');
        }

        public function query($sql)
        {
            return @mysql_query($sql, $this->getDatabaseConnect()->getResource());
        }

        public function freeResult($result)
        {
            if ($this->isResource($result))
                return @mysql_free_result($result);

            return false;
        }

        public function fetchAssoc($sqlOrQuery)
        {
            if ($this->isResource($sqlOrQuery))
                return @mysql_fetch_assoc($sqlOrQuery);
            else
                return @mysql_fetch_assoc($this->query($sqlOrQuery));
        }

        public function fetchRow($sqlOrQuery)
        {
            if ($this->isResource($sqlOrQuery))
                return @mysql_fetch_row($sqlOrQuery);
            else
                return @mysql_fetch_row($this->query($sqlOrQuery));
        }

        public function numRows($sqlOrQuery)
        {
            if ($this->isResource($sqlOrQuery))
                return @mysql_num_rows($sqlOrQuery);
            else
                return @mysql_num_rows($this->query($sqlOrQuery));
        }

        public function numFields($sqlOrQuery)
        {
            if ($this->isResource($sqlOrQuery))
                return @mysql_num_fields($sqlOrQuery);
            else
                return @mysql_num_fields($this->query($sqlOrQuery));
        }

        public function dataSeek($sqlOrQuery, $rowNumber = null)
        {
            if ($this->isResource($sqlOrQuery))
                return @mysql_data_seek($sqlOrQuery, $rowNumber);
            else
                return @mysql_data_seek($this->query($sqlOrQuery), $rowNumber);
        }

        public function insertId()
        {
            return @mysql_insert_id();
        }

        public function setCharset($charset)
        {
            return @mysql_set_charset($charset);
        }

        public function errorConnect()
        {
            return $this->error();
        }

        public function error()
        {
            return @mysql_error();
        }

        public function getExtensionType()
        {
            return 'mysql';
        }

    }

?>