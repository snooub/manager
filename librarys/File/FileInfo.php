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

        public static function isNameError($name)
        {
            return strpos($name, '\\') !== false || strpos($name, '/') !== false;
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
            } else if (is_readable($path)) {
                return @chmod($path, $chmod);
            }
        }

        /**
         * @param $old = Array list path copy | Path directory, file copy
         * @param $new = Path directory parent copy of $old = array list path | Path directory, file copy to
         * @param $parent = Path directory parent copy to of $old = array list path | Not set of $old is not array list path
         * @param $move = Is delete source of copy success
         * @return boolean
         */
        public static function copy($old, $new, $parent = true, $move = false)
        {
            if (is_array($old)) {
                foreach ($old AS $entry) {
                    $path = $new . DS . $entry;

                    if (self::permissionPath($path) == false) {
                        // Abort entry
                    } else if (@is_file($path)) {
                        if (@copy($path, $parent . DS . $entry) == false)
                            return false;

                        if ($move)
                            self::unlink($path);
                    } else if (@is_dir($path)) {
                        if (self::copy($path, $parent . DS . $entry) == false)
                            return false;
                    } else {
                        return false;
                    }
                }

                return true;
            } else if (@is_file($old)) {
                if (@copy($old, $new) == false)
                    return false;

                if ($move)
                    self::unlink($old);

                return true;
            } else if (@is_dir($old)) {
                $handle = @scandir($old);

                if ($handle !== false) {
                    if ($$parent && $old != '/') {
                        $end = $new = $new . '/' . end(explode('/', $old));

                        if (@is_file($end) || (!@is_dir($end) && !@mkdir($end)))
                            return false;
                    } else if (!$$parent && !@is_dir($new) && !@mkdir($new)) {
                        return false;
                    }

                    foreach ($handler AS $entry) {
                        if ($entry != '.' && $entry != '..') {
                            $source = $old . '/' . $entry;
                            $dest = $new . '/' . $entry;

                            if (@is_file($source)) {
                                if (!@copy($source, $dest))
                                    return false;

                                if ($move)
                                    self::unlink($source);
                            } else if (@is_dir($source)) {
                                if (!copydir($source, $dest, false))
                                    return false;
                            } else {
                                return false;
                            }
                        }
                    }

                    if ($move)
                        return self::rrmdir($old);
                    else
                        return true;
                }
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
            if (is_readable($old))
                return rename($old, $new);

            return false;
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
                    $filename = $directory . DS . $entry;

                    if (is_readable($filename)) {
                        return false;
                    } else if (self::permissionPath($filename) == false) {
                        $isHasFileAppPermission = true;
                    } else if (@is_file($filename)) {
                        if (self::unlink($filename) == false)
                            return false;
                    } else if (@is_dir($filename)) {
                        if (self::rrmdir($filename, null, $isHasFileAppPermission) == false)
                            return false;
                    } else {
                        return false;
                    }
                }

                return true;
            } else if (is_readable($path) && is_file($path)) {
                return self::unlink($path);
            } else {
                $handle = @scandir($path);

                if ($handle !== false) {
                    $directoryCurrentHasPermission = false;

                    foreach ($handle AS $entry) {
                        if ($entry != '.' && $entry != '..') {
                            $filename = $path . SP . $entry;

                            if (is_readable($filename) == false) {
                                return false;
                            } else if (self::permissionPath($filename) == false) {
                                $isHasFileAppPermission        = true;
                                $directoryCurrentHasPermission = true;
                            } else if (@is_file($filename)) { bug($filename);
                                if (self::unlink($filename) == false)
                                    return false;
                            } else if (@is_dir($filename)) {
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

        /**
         *
         * @param $directory = Path directory container entrys, not set @param $path
         * @param $path = Path entry, not set @param $directory and @param $entrys
         * @param $entrys = Array list file name in directory, not set @param $path
         * @param $file = Path file zip
         * @param $delete = Is delete source
         * @param $override = Is not delete file zip of it exists and override content
         * @return boolean
         */
        public static function zip($directory, $path, $entrys, $file, $delete = false, $override = false)
        {
            if (class_exists('PclZip') == false)
                @include_once('pclzip.php');

            if (@is_dir($file))
                return false;

            if (@is_file($file) && $override == false)
                self::unlink($file);

            $object = new PclZip($file);

            if (is_array($entrys)) {
                foreach ($entrys AS $name) {
                    if ($object->add($directory . SP . $name, PCLZIP_OPT_REMOVE_PATH, $directory) == false)
                        return false;
                }

                if ($delete)
                    self::rrmdir($entrys, $directory);

                return true;
            } else {
                if ($object->add($path, PCLZIP_OPT_REMOVE_PATH, $path)) {
                    if ($delete)
                        self::rrmdir($path);

                    return true;
                }
            }

            return false;
        }

        public static function fileExists($path)
        {
            return file_exists($path);
        }

        /**
         * Check permission path
         */
        public static function permissionPath($path, $isUseName = false)
        {
            if ($path != null && empty($path) == false) {
                $sp = SP;

                if ($sp == '\\')
                    $sp = SP . SP;

                $path = strtolower($path);
                $path = self::validate($path);

                if (SP == '\\')
                    $path = str_replace(SP, $sp, $path);

                if ($isUseName)
                    $reg = env('application.directory');
                else
                    $reg = env('application.path');

                if ($reg != null)
                    $reg = strtolower($reg);

                $reg = self::validate($reg);

                if (SP == '\\')
                    $reg = str_replace(SP, $sp, $reg);

                if ($reg == $path)
                    return false;
                else if (preg_match('#^' . $reg . $sp . '(^\/+|^\\\\+)(.*?)$#si', $path))
                    return false;
                else if (preg_match('#^' . $reg . $sp . '(.*?)$#si', $path))
                    return false;
            }

            return true;
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

	}

?>
