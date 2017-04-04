<?php

    namespace Librarys\App;

    use Librarys\Boot;
    use Librarys\File\FileInfo;

    final class AppDirectory
    {

        private $boot;
        private $directory;
        private $name;
        private $directoryEncode;
        private $nameEncode;
        private $page;
        private $permissionDeny;
        private $accessParentPath;

        const PARAMETER_DIRECTORY_URL = 'directory';
        const PARAMETER_NAME_URL      = 'name';
        const PARAMETER_PAGE_URL      = 'pager';

        public function __construct(Boot $boot)
        {
            $this->boot = $boot;
        }

        public function execute()
        {
            if (isset($_GET[self::PARAMETER_DIRECTORY_URL]) && empty($_GET[self::PARAMETER_DIRECTORY_URL]) == false)
                $this->directory = self::rawDecode($_GET[self::PARAMETER_DIRECTORY_URL]);
            else
                $this->directory = env('SERVER.DOCUMENT_ROOT');

            if ($this->directory != null) {
                $this->directory       = FileInfo::validate($this->directory);
                $this->directoryEncode = self::rawEncode($this->directory);
            }

            if (isset($_GET[self::PARAMETER_NAME_URL]) && empty($_GET[self::PARAMETER_NAME_URL]) == false) {
                $this->name       = addslashes($_GET[self::PARAMETER_NAME_URL]);
                $this->nameEncode = self::rawEncode($this->name);
            } else {
                $this->name = null;
            }

            if (isset($_GET[self::PARAMETER_PAGE_URL]) && empty($_GET[self::PARAMETER_PAGE_URL]) == false)
                $this->page = intval($_GET[self::PARAMETER_PAGE_URL]);
            else
                $this->page = 1;

            if ($this->page <= 0)
                $this->page = 1;

            if ($this->directory != '.' && $this->directory != '..') {
                $isPermissionDenyDirectory     = FileInfo::permissionDenyPath(FileInfo::validate($this->directory));
                $isPermissionDenyDirectoryName = false;

                if ($this->name != null)
                    $isPermissionDenyDirectoryName = FileInfo::permissionDenyPath(FileInfo::validate($this->directory . SP . $this->name));

                if ($isPermissionDenyDirectory == false && $isPermissionDenyDirectoryName == false)
                    $this->permissionDeny = false;
                else
                    $this->permissionDeny = true;
            }

            if ($this->directory != null && $this->permissionDeny == false)
                $this->accessParentPath = strtolower($this->directory) == strtolower(env('application.parent_path'));
            else
                $this->accessParentPath = strtolower(env('application.parent_path')) == strtolower(env('SERVER.DOCUMENT_ROOT'));
        }

        public static function rawEncode($url)
        {
            return rawurlencode($url);
        }

        public static function rawDecode($url)
        {
            return rawurldecode($url);
        }

        public function setDirectory($directory)
        {
            $_GET[self::PARAMETER_DIRECTORY_URL] = $directory;

            $this->execute();
        }

        public function getDirectory()
        {
            return $this->directory;
        }

        public function getDirectoryEncode()
        {
            return $this->directoryEncode;
        }

        public function getName()
        {
            return $this->name;
        }

        public function getNameEncode()
        {
            return $this->nameEncode;
        }

        public function getDirectoryAndName()
        {
            if ($this->name != null)
                return $this->directory . SP . $this->name;

            return $this->directory;
        }

        public function getPage()
        {
            return $this->page;
        }

        public function isPermissionDenyPath()
        {
            return $this->permissionDeny;
        }

        public function isAccessParentPath()
        {
            return $this->accessParentPath;
        }

        public function isDirectoryExists()
        {
            if ($this->directory == null || empty($this->directory))
                return false;

            return is_dir($this->directory);
        }

        public function isDirectorySeparatorNameExists()
        {
            if ($this->isDirectoryExists() == false)
                return false;

            if ($this->name == null || empty($this->name))
                return false;

            return is_dir(FileInfo::validate($this->directory . SP . $this->name));
        }

        public function isFileSeparatorNameExists()
        {
            if ($this->isDirectoryExists() == false)
                return false;

            if ($this->name == null || empty($this->name))
                return false;

            return is_file(FileInfo::validate($this->directory . SP . $this->name));
        }

        public function isFileExistsDirectory()
        {
            if ($this->directory == null || empty($this->directory))
                return false;

            return file_exists($this->directory);
        }

        public function isFileExistsDirectorySeparatorName()
        {
            if ($this->isDirectoryExists() == false)
                return false;

            if ($this->name == null || empty($this->name))
                return false;

            return file_exists(FileInfo::validate($this->directory . SP . $this->name));
        }

    }

?>
