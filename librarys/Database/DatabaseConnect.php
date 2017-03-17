<?php

	namespace Librarys\Database;

	use Librarys\Boot;

	class DatabaseConnect
	{

		private $boot;
		private $resource;
		private $query;

        private $host;
        private $username;
        private $password;
        private $name;
        private $port;
        private $prefix;
        private $encoding;

		public function __construct(Boot $boot)
		{
			$this->boot   = $boot;
			$this->query  = array();

			$this->openConnect();
			$this->registerShutdown();
		}

		protected function openConnect()
		{
			if ($this->isResource($this->resource))
				return;

			$this->host     = env('mysql.host');
			$this->username = env('mysql.username');
			$this->password = env('mysql.password');
			$this->name     = env('mysql.nane');
			$this->port     = env('mysql.port');
            $this->prefix   = env('mysql.prefix');
            $this->encoding = env('mysql.encoding');

			if (env('mysql.auto_local', false) && $this->boot->isRunLocal()) {
				$this->host     = env('mysql.local.host');
				$this->username = env('mysql.local.username');
				$this->password = env('mysql.local.password');
				$this->name     = env('mysql.local.name');
				$this->port     = env('mysql.local.port');
                $this->prefix   = env('mysql.local.prefix');
                $this->encoding = env('mysql.local.encoding');
			}

			$this->resource = mysqli_connect(
				$this->host,
				$this->username,
				$this->password,
				$this->name,
				$this->port
			);

            if ($this->isResource($this->resource))
                mysqli_set_charset($this->resource, $this->encoding);
		}

		protected function freeConnect()
		{
			if (is_array($this->query)) {
				foreach ($this->query AS $result) {
					if ($this->isResource($result))
						mysqli_free_result($result);
				}

				$this->query = array();
			}
		}

		protected function disConnected()
		{
			if ($this->isResource($this->resource))
				mysqli_close($this->resource);
		}

		private function registerShutdown()
		{
			register_shutdown_function(function() {
				$this->freeConnect();
				$this->disConnected();
			});
		}

		public function isResource($resource)
		{
			return is_resource($resource) || is_object($resource);
		}

        public function getHost()
        {
            return $this->host;
        }

        public function getUsername()
        {
            return $this->username;
        }

        public function getPassword()
        {
            return $this->password;
        }

        public function getName()
        {
            return $this->name;
        }

        public function getPort()
        {
            return $this->port;
        }

        public function getPrefix()
        {
            return $this->prefix;
        }

        public function getEncoding()
        {
            return $this->encoding;
        }

		public function query($sql)
		{
			$query = null;

			if ($this->isResource($sql))
				$query = $sql;
			else
				$query = mysqli_query($this->resource, $sql);

			return ($this->query[] = $query);
		}

        public function error()
        {
            if ($this->isResource($this->resource))
                return mysqli_error($this->resource);

            return null;
        }

		public function fetchAssoc($sql)
		{
			if ($this->isResource($sql))
				return mysqli_fetch_assoc($sql);
			else
				return mysqli_fetch_assoc($this->query($sql));
		}

		public function fetchRow($sql)
		{
			if ($this->isResource($sql))
				return mysqli_fetch_row($sql);
			else
				return mysqli_fetch_row($this->query($sql));
		}

		public function numRows($sql)
		{
			if ($this->isResource($sql))
				return mysqli_num_rows($sql);
			else
				return mysqli_num_rows($this->query($sql));
		}

		public function numFields($sql)
		{
			if ($this->isResource($sql))
				return mysqli_num_fields($sql);
			else
				return mysqli_num_fields($this->query($sql));
		}

		public function dataSeek($sql)
		{
			if ($this->isResource($sql))
				return mysqli_data_seek($sql);
			else
				return mysqli_data_seek($this->query($sql));
		}

		public function insertId()
		{
			return mysqli_insert_id($this->resource);
		}

	}

?>