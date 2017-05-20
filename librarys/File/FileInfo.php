<?php

	namespace Librarys\File;

    use Librarys\Zip\PclZip;

	final class FileInfo
	{

		private $filePath;
		private $fileExt;
		private $fileMime;

		public function __construct($filePath, $receiverMime = true)
		{
			$this->setFilePath($filePath, $receiverMime);
		}

		public function isFile()
		{
			return self::isTypeFile($this->filePath);
		}

		public function isDirectory()
		{
			return self::isTypeDirectory($this->filePath);
		}

		public function readFile()
		{
			return @readfile($this->filePath);
		}

		public function setFilePath($filePath, $receiverMime = true)
		{
			$this->filePath = separator($filePath, SP);
			$this->fileExt  = self::extFile($this->getFileName());

            if (empty($this->fileExt))
                $this->fileExt = null;

            if ($receiverMime)
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
            if ($this->fileMime == null)
                $this->fileMime = FileMime::get($this);

			return $this->fileMime;
		}

        public function getFileSize()
        {
            return self::fileSize($this->filePath);
        }

        public static function isNameValidate($name)
        {
            return strpos($name, '\\') === false && strpos($name, '/') === false;
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

        public static function chmod($path, $chmod = null)
        {
            if ($chmod == null) {
                $perms = @fileperms($path);

                if ($perms !== false) {
                    $perms = decoct($perms);
                    $perms = substr($perms, strlen($perms) == 5 ? 2 : 3, 3);
                } else {
                    $perms = "000";
                }

                return $perms;
            } else if (@chmod($path, $chmod)) {
                return true;
            }

            return false;
        }

        /**
         * @param $old = Array list path copy | Path directory, file copy
         * @param $new = Path directory parent copy of $old = array list path | Path directory, file copy to
         * @param $parent = Path directory parent copy to of $old = array list path | Not set of $old is not array list path
         * @param $move = Is delete source of copy success
         * @param $isHasFileAppPermission = Result check has file of app in path
         * @param $callbackIsFileExists = Callback if file is exists function($directory, $filename, $isDirectory) {}
         * @return boolean
         */
        public static function copy($old, $new, $parent = true, $move = false, & $isHasFileAppPermission = false, & $callbackIsFileExists = null)
        {
            if ($callbackIsFileExists == null) {
                $callbackIsFileExists = function($directory, $filename, $isDirectory) {
                    return $directory . SP . $filename;
                };
            }

            if (is_array($old)) {
                foreach ($old AS $entry) {
                    $path = $new . SP . $entry;

                    if (self::permissionDenyPath($path)) {
                        $isHasFileAppPermission = true;
                    } else if (self::isTypeFile($path)) {
                        $file = $parent . SP . $entry;

                        if (id_file($file))
                            $file = $callbackIsFileExists($parent, $entry, false);

                        // If file is null skip file
                        if ($file == null)
                            return true;

                        if (@copy($path, $file) == false)
                            return false;

                        if ($move)
                            self::unlink($path);
                    } else if (self::isTypeDirectory($path)) {
                        $file = $parent . SP . $entry;

                        if (self::isTypeDirectory($file))
                            $file = $callbackIsFileExists($parent, $entry, true);

                        // If file is null skip file
                        if ($file == null)
                            return true;

                        if (self::copy($path, $file, $move, $isHasFileAppPermission) == false)
                            return false;
                    } else {
                        return false;
                    }
                }

                return true;
            } else if (self::isTypeFile($old)) {
                if (self::permissionDenyPath($old) || self::permissionDenyPath($new)) {
                    $isHasFileAppPermission = true;
                } else {
                    if (self::isTypeFile($new)) {
                        $separatorLastIndex = strrpos($new, SP);

                        if ($separatorLastIndex === false)
                            return false;

                        $directory = substr($new, 0, $separatorLastIndex);
                        $filename  = substr($new, $separatorLastIndex + 1);

                        $new = $callbackIsFileExists($directory, $filename, false);
                    }

                    if ($new == null)
                        return true;

                    if (@copy($old, $new) == false)
                        return false;

                    if ($move)
                        self::unlink($old);
                }

                return true;
            } else if (self::isTypeDirectory($old)) {
                if (self::permissionDenyPath($old) || self::permissionDenyPath($new)) {
                    $isHasFileAppPermission = true;
                } else {
                    $handle = @scandir($old);

                    if ($handle !== false) {
                        if (($parent && $old != SP) || $parent == false) {
                            if (self::isTypeFile($new))
                                return false;

                            if (self::isTypeDirectory($new)) {
                                $separatorLastIndex = strrpos($new, SP);

                                if ($separatorLastIndex === false)
                                    return false;

                                $directory = substr($new, 0, $separatorLastIndex);
                                $filename  = substr($new, $separatorLastIndex + 1);
                                $new       = $callbackIsFileExists($directory, $filename, true);
                            }

                            if ($new == null)
                                return true;

                            if (self::isTypeDirectory($new) == false && @mkdir($new) == false)
                                return false;
                        }

                        foreach ($handle AS $entry) {
                            if ($entry != '.' && $entry != '..') {
                                $source = $old . SP . $entry;
                                $dest   = $new . SP . $entry;

                                if (self::isTypeFile($source)) {
                                    if (self::isTypeFile($dest))
                                        $dest = $callbackIsFileExists($new, $entry, false);

                                    if ($dest == null)
                                        return true;

                                    if (@copy($source, $dest) == false)
                                        return false;

                                    if ($move)
                                        self::unlink($source);
                                } else if (self::isTypeDirectory($source)) {
                                     if (self::isTypeDirectory($dest))
                                         $dest = $callbackIsFileExists($new, $entry, true);

                                    if ($dest == null)
                                        return true;

                                    if (self::copy($source, $dest, false, $move, $isHasFileAppPermission, $callbackIsFileExists) == false)
                                        return false;
                                } else {
                                    return false;
                                }
                            }
                        }

                        if ($move)
                            return self::rrmdir($old, null, $isHasFileAppPermission);
                        else
                            return true;
                    }
                }

                return true;
            }

            return false;
        }

        public static function curl($url, &$info = '', $ref = '', $cookie = '', $user_agent = '', $header = '')
        {
            if (function_exists('curl_init')) {
                $ch = curl_init();

                $headers[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
                $headers[] = 'Accept-Language: en-us,en;q=0.5';
                $headers[] = 'Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7';
                $headers[] = 'Keep-Alive: 300';
                $headers[] = 'Connection: Keep-Alive';
                $headers[] = 'Content-type: application/x-www-form-urlencoded;charset=UTF-8';

                curl_setopt($ch, CURLOPT_URL, $url);

                if ($user_agent)
                    curl_setopt($ch, CURLOPT_USERAGENT, $user_agent);
                else
                    curl_setopt($ch, CURLOPT_USERAGENT, 'Nokia3110c/2.0 (04.91) Profile/MIDP-2.0 Configuration/CLDC-1.1');

                if ($header)
                    curl_setopt($ch, CURLOPT_HEADER, 1);
                else
                    curl_setopt($ch, CURLOPT_HEADER, 0);

                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

                if ($ref)
                    curl_setopt($ch, CURLOPT_REFERER, $ref);
                else
                    curl_setopt($ch, CURLOPT_REFERER, 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N');

                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

                if (strncmp($url, 'https', 6))
                    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

                if ($cookie)
                    curl_setopt($ch, CURLOPT_COOKIE, $cookie);

                curl_setopt($ch, CURLOPT_TIMEOUT, 100);

                $html = curl_exec($ch);
                $info = curl_getinfo($ch);
                $mess_error = curl_error($ch);

                curl_close($ch);
            } else {
                $matches = parse_url($url);
                $host = $matches['host'];
                $link = (isset($matches['path']) ? $matches['path'] : '/') . (isset($matches['query']) ? '?' . $matches['query'] : '') . (isset($matches['fragment']) ? '#' . $matches['fragment'] : '');
                $port = !empty($matches['port']) ? $matches['port'] : 80;
                $fp = @fsockopen($host, $port, $errno, $errval, 30);

                if (!$fp) {
                    $html = "$errval ($errno)<br />\n";
                } else {
                    if (!$ref)
                        $ref = 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N';

                    $rand_ip = rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254);
                    $out  = "GET $link HTTP/1.1\r\n" .
                            "Host: $host\r\n" .
                            "Referer: $ref\r\n" .
                            "Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5\r\n";

                    if ($cookie)
                        $out .= "Cookie: $cookie\r\n";

                    if ($user_agent)
                        $out .= "User-Agent: " . $user_agent . "\r\n";
                    else
                        $out .= "User-Agent: " . 'Nokia3110c/2.0 (04.91) Profile/MIDP-2.0 Configuration/CLDC-1.1' . "\r\n";

                    $out .= "X-Forwarded-For: $rand_ip\r\n".
                            "Via: CB-Prx\r\n" .
                            "Connection: Close\r\n\r\n";

                    fwrite($fp, $out);

                    while (!feof($fp))
                        $html .= fgets($fp, 4096);

                    fclose($fp);
                }
            }

            return $html;
        }

        public static function invalid($name)
        {
            return strpbrk($name, "\\/?%*:|\"<>") == false;
        }

        public static function rename($old, $new)
        {
            return rename($old, $new);
        }

        /**
         * [rrmdir Delete directory and delete entry in directory]
         * @param  [string|array]  $path                    [Path directory or array entry]
         * @param  [string]        $directory               [Path directory container array entry, set of $path is array entry]
         * @param  boolean         &$isHasFileAppPermission [Flag set true if has directory app]
         * @return [boolean]                                [Return true if delete success]
         */
        public static function rrmdir($path, $directory = null, & $isHasFileAppPermission = false)
        {
            if (is_array($path)) {

                foreach ($path AS $entry) {
                    $filename = $directory . SP . $entry;

                    if (self::permissionDenyPath($filename)) {
                        $isHasFileAppPermission = true;
                    } else if (self::isTypeFile($filename)) {
                        if (self::unlink($filename) == false)
                            return false;
                    } else if (self::isTypeDirectory($filename)) {
                        if (self::rrmdir($filename, null, $isHasFileAppPermission) == false)
                            return false;
                    } else {
                        return false;
                    }
                }

                return true;
            } else if (self::isReadable($path) && self::isTypeFile($path)) {
                return self::unlink($path);
            } else {
                $handle = @scandir($path);

                if ($handle !== false) {
                    $directoryCurrentHasPermission = false;

                    foreach ($handle AS $entry) {
                        if ($entry != '.' && $entry != '..') {
                            $filename = $path . SP . $entry;

                            if (self::permissionDenyPath($filename)) {
                                $isHasFileAppPermission        = true;
                                $directoryCurrentHasPermission = true;
                            } else if (self::isTypeFile($filename)) {
                                if (self::unlink($filename) == false)
                                    return false;
                            } else if (self::isTypeDirectory($filename)) {
                                if (self::rrmdir($filename, null, $isHasFileAppPermission) == false)
                                    return false;
                            } else {
                                return false;
                            }
                        }
                    }

                    if ($directoryCurrentHasPermission)
                        return true;

                    return @rmdir($path);
                }
            }

            return false;
        }

        public static function sizeToString($size)
        {
            $size = @intval($size);

            if ($size < 1024)
                $size = $size . 'B';
            else if ($size < 1048576)
                $size = round($size / 1024, 2) . 'KB';
            else if ($size < 1073741824)
                $size = round($size / 1048576, 2) . 'MB';
            else
                $size = round($size / 1073741824, 2) . 'GB';

            return $size;
        }

        public static function unlink($path)
        {
            return @unlink($path);
        }

        public static function validate($path, $isPathZIP = false)
        {
            $SP = SP;

            if ($SP == '\\')
                $SP = '\\\\';

            $path = str_replace('\\', $SP, $path);
            $path = str_replace('/',  $SP, $path);

            $path = preg_replace('#\\{1,}#', $SP, $path);
            $path = preg_replace('#/{1,}#',  $SP, $path);

            $path = preg_replace('#' . $SP . '\.'   . $SP . '#', $SP . $SP, $path);
            $path = preg_replace('#' . $SP . '\.\.' . $SP . '#', $SP . $SP, $path);

            $path = preg_replace('#' . $SP . '\.{1,2}$#', $SP . $SP, $path);
            $path = preg_replace('#' . $SP . '{2,}#',     $SP,       $path);

            if ($isPathZIP)
                $path = preg_replace('#' . $SP . '?(.+?)' . $SP . '?$#', '$1', $path);
            else
                $path = preg_replace('#(.+?)' . $SP . '$#', '$1', $path);

            return $path;
        }

        public static function fileExists($path)
        {
            return @file_exists($path);
        }

        /**
         * Check permission path
         * If path is deny permission return true
         */
        public static function permissionDenyPath($path, $isUseName = false)
        {
            if ($path != null && empty($path) == false) {
                $sp = SP;

                if (SP == '\\')
                    $sp = SP . SP;

                $path = strtolower($path);
                $path = self::validate($path);

                if ($isUseName)
                    $reg = env('application.directory');
                else
                    $reg = env('application.path');

                if ($reg != null)
                    $reg = strtolower($reg);

                $reg = self::validate($reg);

                if (SP == '\\')
                    $reg = str_replace(SP, $sp, $reg);

                if (preg_match('#^' . $reg . '$#si', $path))
                    return true;
                else if (preg_match('#^' . $reg . $sp . '(^\/+|^\\\\+)(.*?)$#si', $path))
                    return true;
                else if (preg_match('#^' . $reg . $sp . '(.*?)$#si', $path))
                    return true;
            }

            return false;
        }

        public static function getChmodPermission($path)
        {
            $perms = fileperms($path);

            if ($perms !== false) {
                $perms = decoct($perms);
                $perms = substr($perms, strlen($perms) == 5 ? 2 : 3, 3);
            } else {
                $perms = 0;
            }

            return $perms;
        }

        public static function fileSize($path, $convertToString = false)
        {
            if ($convertToString == false)
                return @filesize($path);

            return self::sizeToString(@filesize($path));
        }

        public static function scanDirectory($directory)
        {
            return @scandir($directory);
        }

        public static function isTypeFile($path)
        {
            return @is_file($path);
        }

        public static function isTypeDirectory($path)
        {
            return @is_dir($path);
        }

        public static function isLink($path)
        {
            return @is_link($path);
        }

        public static function isReadable($path)
        {
            return @is_readable($path);
        }

        public static function isWriteable($path)
        {
            return @is_writeable($path);
        }

        public static function isExecutable($path)
        {
            return @is_executable($path);
        }

        public static function fileOpen($path, $mode)
        {
            return @fopen($path, $mode);
        }

        public static function fileClose($handle)
        {
            return @fclose($handle);
        }

        public static function fileRead($handle, $length)
        {
            return @fread($handle, $length);
        }

        public static function fileWrite($handle, $string, $length = null)
        {
            if ($string == null)
                $string = '';

            if ($length == null)
                $length = strlen($string);

            return @fwrite($handle, $string, $length) && @fflush($handle);
        }

        public static function fileFlush($handle)
        {
            return @fflush($handle);
        }

        public static function fileReadContents($path)
        {
            if (($handle = self::fileOpen($path, 'ra')) !== false) {
                if (($data = self::fileRead($handle, self::fileSize($path))) !== false) {
                    self::fileClose($handle);
                    return $data;
                }

                self::fileClose($handle);
            }

            return false;
        }

        public static function fileWriteContents($path, $buffer)
        {
            if (($handle = self::fileOpen($path, 'wa+')) !== false) {
                if (self::fileWrite($handle, $buffer) !== false) {
                    self::fileFlush($handle);
                    self::fileClose($handle);

                    return true;
                }

                self::fileClose($handle);
            }

            return false;
        }

        public static function fileMTime($path)
        {
            return @filemtime($path);
        }

	}

?>
