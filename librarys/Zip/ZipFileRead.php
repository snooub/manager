<?php

    namespace Librarys\Zip;

    use Librarys\File\FileInfo;

    final class ZipFileRead
    {

        private $path;
        private $pathExtract;

        private $zip;
        private $entry;
        private $entryName;
        private $entryFileName;
        private $entryFilePath;
        private $entryFileSize;
        private $entryCompressedSize;
        private $entryCompressedMethod;
        private $entryPathExtract;

        const COMPRESSED_METHOD_STORED = 'stored';
        const COMPRESSED_METHOD_DEFLATED = 'deflated';

        public function __construct($path, $pathExtract = null)
        {
            $this->setPath($path);
            $this->setPathExtract($pathExtract);

            register_shutdown_function(function() {
                $this->closeEntry();
                $this->close();
            });
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
            if (is_resource($this->zip)) {
                if (zip_close($this->zip) == false)
                    return false;
                else
                    $this->zip = null;

                return true;
            }

            return false;
        }

        public function readNextEntry()
        {
            if (is_resource($this->zip) == false)
                return false;

            $this->entry                 = zip_read($this->zip);
            $this->entryName             = null;
            $this->entryFileName         = null;
            $this->entryFilePath         = null;
            $this->entryFileSize         = null;
            $this->entryCompressedSize   = null;
            $this->entryCompressedMethod = null;
            $this->entryPathExtract      = null;

            if ($this->entry == false)
                $this->entry = null;
            else
                return $this->entry;

            return false;
        }

        public function readContentEntry($length = 1024)
        {
            if ($this->entry == null || $this->isEntryCompressedMethodStored())
                return false;

            return zip_entry_read($this->entry, $length);
        }

        public function readFullContentEntry()
        {
            if ($this->entry == null || $this->isEntryCompressedMethodStored())
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

        public function readEntryFileName()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryFileName != null)
                return $this->entryFileName;

            $origin       = FileInfo::validate($this->readEntryName());
            $originLength = strlen($origin);

            if (strpos($origin, SP) === false) {
                $this->entryFileName = $origin;
                $this->entryFilePath = null;
            } else {
                if ($this->isEntryCompressedMethodStored() && strrpos($origin, SP) === $originLength - 1)
                    $origin = substr($origin, 0, $originLength - 1);

                $this->entryFileName = basename($origin);
                $this->entryFilePath = substr($origin, 0, $originLength - strlen($this->entryFileName));

                if (strrpos($this->entryFilePath, SP) === strlen($this->entryFilePath) - 1)
                    $this->entryFilePath = substr($this->entryFilePath, 0, strlen($this->entryFilePath) - 1);
            }

            return $this->entryFileName;
        }

        public function readEntryFilePath()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryFilePath != null)
                return $this->entryFilePath;

            if ($this->readEntryFileName())
                return $this->entryFilePath;

            return false;
        }

        public function readEntryFileSize()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryFileSize == null)
                $this->entryFileSize = zip_entry_filesize($this->entry);

            return $this->entryFileSize;
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

        public function isEntryCompressedMethodStored()
        {
            if ($this->entry == null)
                return false;

            if ($this->readEntryCompressedMethod() == self::COMPRESSED_METHOD_STORED)
                return true;

            return false;
        }

        public function isEntryCompressedMethodDeflated()
        {
            if ($this->entry == null)
                return false;

            if ($this->readEntryCompressedMethod() == self::COMPRESSED_METHOD_DEFLATED)
                return true;

            return false;
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
                $this->entryFileName         = null;
                $this->entryFilePath         = null;
                $this->entryFileSize         = null;
                $this->entryCompressedSize   = null;
                $this->entryCompressedMethod = null;
                $this->entryPathExtract      = null;
            }

            return true;
        }

        public function extract($callbackPreExtract = null, $callbackPostExtract = null)
        {
            if ($callbackPreExtract == null) {
                $callbackPreExtract = function(&$fileName, &$filePath, $isDirectory, $pathExtract) {
                    return true;
                };
            }

            if ($callbackPostExtract == null) {
                $callbackPostExtract = function(&$fileName, &$filePath, $isDirectory, $pathExtract) {

                };
            }

            if (is_resource($this->zip)) {
                while ($this->readNextEntry() != false) {
                    $filePath = $this->readEntryFilePath();
                    $fileName = $this->readEntryFileName();

                    if ($callbackPreExtract($fileName, $filePath, $this->isEntryCompressedMethodStored(), $this->getPathExtractEntry())) {
                        $pathEntry = FileInfo::validate($this->getPathExtract() . SP . $filePath . SP . $fileName);

                        if ($this->isEntryCompressedMethodStored()) {
                            if (is_dir($pathEntry) == false && @mkdir($pathEntry) == false)
                                return false;
                        } else {
                            if (is_file($pathEntry) && @unlink($pathEntry) == false)
                                return false;

                            if (@file_put_contents($pathEntry, $this->readFullContentEntry()) === false)
                                return false;
                        }

                        $callbackPostExtract($filename, $filepath, $this->isEntryCompressedMethodStored(), $this->getPathExtractEntry());
                    }

                    $this->closeEntry();
                }

                return true;
            }

            return false;
        }

        public function getPathExtractEntry()
        {
            if ($this->entry == null)
                return false;

            if ($this->entryPathExtract != null)
                return $this->entryPathExtract;

            return ($this->entryPathExtract = FileInfo::validate($this->getPathExtract() . SP . $this->readEntryName()));
        }

        public function setPath($path)
        {
            $this->path = $path;
        }

        public function getPath()
        {
            return $this->path;
        }

        public function setPathExtract($pathExtract)
        {
            $this->pathExtract = $pathExtract;
        }

        public function getPathExtract()
        {
            return $this->pathExtract;
        }

    }

?>
