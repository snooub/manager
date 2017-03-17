<?php

	namespace Librarys\File;

	final class FileInfo
	{

		private $filePath;
		private $fileExt;
		private $fileMime;

		public function __construct($filePath)
		{
			$this->setFilePath($filePath);
		}

		public function isFile()
		{
			return is_file($this->filePath);
		}

		public function isDirectory()
		{
			return is_dir($this->filePath);
		}

		public function readFile()
		{
			readfile($this->filePath);
		}

		public function setFilePath($filePath)
		{
			$this->filePath = separator($filePath, SP);

			$this->fileExt  = FileInfo::extFile($this->getFileName());
			$this->fileMime = FileMime::get($this);
		}

		public function getFilePath()
		{
			return $this->filePath;
		}

		public function getFileName()
		{
			return basename($this->filePath);
		}

		public function getFileExt()
		{
			return $this->fileExt;
		}

		public function getFileMime()
		{
			return $this->fileMime;
		}

		public static function extFile($file)
		{
			if ($file instanceof FileInfo)
				$file = $file->getFileName();
			else
				$file = basename($file);

			$lastIndex = strrpos($file, '.');

			if ($lastIndex !== false)
				return strtolower(substr($file, $lastIndex + 1));

			return null;
		}

	}

?>