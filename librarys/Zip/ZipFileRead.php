<?php

    namespace Librarys\Zip;

    final class ZipFileRead
    {

        private $path;
        private $zip;
        private $entry;
        private $entryName;
        private $entryFilesize;
        private $entryCompressedSize;
        private $entryCompressedMethod;

        public function __construct($path)
        {
            $this->setPath($path);
        }

        public function open()
        {
            $this->zip = @zip_open($this->path);

            if (is_resource($this->zip))
                return true;
            else
                $this->zip = null;

            return false;
        }

        public function close()
        {
            if (is_resource($this->zip))
                zip_close($this->zip);
            else
                return false;

            return true;
        }

        public function readEntry()
        {
            if (is_resource($this->zip) == false)
                return false;

            $this->entry                 = zip_read($this->zip);
            $this->entryName             = null;
            $this->entryFilesize         = null;
            $this->entryCompressedSize   = null;
            $this->entryCompressedMethod = null;

            if ($this->entry == false)
                $this->entry = null;
            else
                return $this->entry;

            return false;
        }

        public function readContentEntry($length = 1024)
        {
            if ($this->entry == null)
                return false;

            return zip_entry_read($this->entry, $length);
        }

        public function readFullContentEntry()
        {
            if ($this->entry == null)
                return false;

            return zip_entry_read($this->entry, $this->readEntryFilesize());
        }

        public function readEntryName()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryName == null)
                $this->entryName = zip_entry_name($this->entry);

            return $this->entryName;
        }

        public function readEntryFilesize()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryFilesize == null)
                $this->entryFilesize = zip_entry_filesize($this->entry);

            return $this->entryFilesize;
        }

        public function readEntryCompressedSize()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryCompressedSize == null)
                $this->entryCompressedSize = zip_entry_compressedsize($this->entry);

            return $this->entryCompressedSize;
        }

        public function readEntryCompressedMethod()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryCompressedMethod == null)
                $this->entryCompressedMethod = zip_entry_compressionmethod($this->entry);

            return $this->entryCompressedMethod;
        }

        public function closeEntry()
        {
            if ($this->entry == null)
                return false;

            if (zip_entry_close($this->entry) == false) {
                return false;
            } else {
                $this->entry                 = null;
                $this->entryName             = null;
                $this->entryFilesize         = null;
                $this->entryCompressedSize   = null;
                $this->entryCompressedMethod = null;
            }

            return true;
        }

        public function copyEntryTo($path)
        {
            return file_put_contents($path, $this->readFullContentEntry());
        }

        public function setPath($path)
        {
            $this->path = $path;
        }

        public function getPath()
        {
            return $path;
        }

    }

?>