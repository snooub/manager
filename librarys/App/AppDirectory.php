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
        private $permission;
        private $accessParentPath;

        const PARAMETER_DIRECTORY_URL = 'directory';
        const PARAMETER_NAME_URL      = 'name';

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


            if ($this->directory != '.' && $this->directory != '..') {
                if (FileInfo::permissionPath(FileInfo::validate($this->directory)))
                    $this->permission = true;
                else if ($this->name != null && File::permissionPath(FileInfo::validate($this->directory . SP . $this->name)))
                    $this->permission = true;
            }

            if ($this->directory != null && $this->permission == false)
                $this->accessParentPath = strtolower($this->directory) == strtolower(env('application.path'));
            else
                $this->accessParentPath = strtolower(env('application.path')) == strtolower(env('SERVER.DOCUMENT_ROOT'));
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

        public function isPermissionPath()
        {
            return $this->permission;
        }

        public function isAccessParentPath()
        {
            return $this->accessParentPath;
        }

    }

?>
