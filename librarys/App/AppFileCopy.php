<?php

    namespace Librarys\App;

    use Librarys\File\FileInfo;

    final class AppFileCopy
    {

        private $isSession;
        private $directory;
        private $name;
        private $page;
        private $path;
        private $isMove;

        const SESSION_KEY         = 'COPY_INFOS';
        const ARRAY_KEY_DIRECTORY = 'directory';
        const ARRAY_KEY_NAME      = 'name';
        const ARRAY_KEY_PATH      = 'path';
        const ARRAY_KEY_PAGE      = 'page';
        const ARRAY_KEY_IS_MOVE   = 'is_move';

        public function __construct()
        {
            if (isset($_SESSION[self::SESSION_KEY])) {
                $array = $_SESSION[self::SESSION_KEY];

                if (isset($array[self::ARRAY_KEY_DIRECTORY]) && isset($array[self::ARRAY_KEY_NAME])) {
                    $this->setDirectory($array[self::ARRAY_KEY_DIRECTORY]);
                    $this->setName($array[self::ARRAY_KEY_NAME]);
                }

                if (isset($array[self::ARRAY_KEY_PATH]))
                    $this->setPath($array[self::ARRAY_KEY_PATH]);

                if (isset($array[self::ARRAY_KEY_PAGE]))
                    $this->setPage($array[self::ARRAY_KEY_PAGE]);

                if (isset($array[self::ARRAY_KEY_IS_MOVE]))
                    $this->setIsMove($array[self::ARRAY_KEY_IS_MOVE]);
                else
                    $this->setIsMove(false);

                $this->isSession = true;
            } else {
                $this->isSession = false;
            }
        }

        public function setSession($directory, $name, $page, $isMove)
        {
            $this->setDirectory($directory);
            $this->setName($name);
            $this->setPath(FileInfo::validate($directory));
            $this->setPage($page);
            $this->setIsMove($isMove);
            $this->flushSession();
        }

        public function flushSession()
        {
            $_SESSION[self::SESSION_KEY] = [
                self::ARRAY_KEY_DIRECTORY => $this->directory,
                self::ARRAY_KEY_NAME      => $this->name,
                self::ARRAY_KEY_PATH      => $this->path,
                self::ARRAY_KEY_PAGE      => $this->page,
                self::ARRAY_KEY_IS_MOVE   => $this->isMove
            ];
        }

        public function clearSession()
        {
            unset($_SESSION[self::SESSION_KEY]);
        }

        public function setDirectory($directory)
        {
            $this->directory = $directory;
        }

        public function getDirectory()
        {
            return $this->directory;
        }

        public function setName($name)
        {
            $this->name = $name;
        }

        public function getName()
        {
            return $this->name;
        }

        public function setPath($path)
        {
            $this->path = $path;
        }

        public function getPath()
        {
            return $this->path;
        }

        public function setPage($page)
        {
            $this->page = $page;
        }

        public function getPage()
        {
            return $this->page;
        }

        public function setIsMove($isMove)
        {
            $this->isMove = $isMove;
        }

        public function isMove()
        {
            return $this->isMove;
        }

        public function isSession()
        {
            return $this->isSession;
        }

    }

?>