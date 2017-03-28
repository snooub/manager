<?php

    namespace Librarys\App;

    use Librarys\Boot;
    use Librarys\File\FileInfo;

    final class AppDirectory
    {

        private $boot;
        private $directory;
        private $directoryEncode;
        private $name;
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

            if (isset($_GET[self::PARAMETER_NAME_URL]) && empty($_GET[self::PARAMETER_NAME_URL]) == false)
                $this->name = addslashes($_GET[self::PARAMETER_NAME_URL]);
            else
                $this->name = null;

            if (isset($_GET[self::PARAMETER_PAGE_URL]) && empty($_GET[self::PARAMETER_PAGE_URL]) == false)
                $this->page = intval(addslashes($_GET[self::PARAMETER_PAGE_URL]));
            else
                $this->page = 1;

            if ($this->page <= 0)
                $this->page = 1;

            if ($this->directory != '.' && $this->directory != '..') {
                if (FileInfo::permissionPath(FileInfo::validate($this->directory)))
                    $this->permissionDeny = false;
                else if ($this->name != null && File::permissionPath(FileInfo::validate($this->directory . SP . $this->name)))
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

    }

?>
