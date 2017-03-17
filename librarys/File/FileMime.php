<?php

	namespace Librarys\File;

	final class FileMime
	{

		private static $mimes = array(
			// Text
			'txt'  => 'text/plain',
			'htm'  => 'text/html',
			'html' => 'text/html',
			'php'  => 'text/html',
			'css'  => 'text/css',
			'js'   => 'application/javascript',
			'json' => 'application/json',
			'xml'  => 'application/xml',
			'swf'  => 'application/x-shockwave-flash',
			'flv'  => 'video/x-flv',

			// Image
			'png'  => 'image/png',
			'jpe'  => 'image/jpeg',
			'jpeg' => 'image/jpeg',
			'jpg'  => 'image/jpeg',
			'gif'  => 'image/gif',
			'bmp'  => 'image/bmp',
			'ico'  => 'image/vnd.microsoft.icon',
			'tiff' => 'image/tiff',
			'tif'  => 'image/tiff',
			'svg'  => 'image/svg+xml',
			'svgz' => 'image/svg+xml',

			// Archive
			'zip'  => 'application/zip',
			'rar'  => 'application/x-rar-compressed',
			'exe'  => 'application/x-msdownload',
			'msi'  => 'application/x-msdownload',
			'cab'  => 'application/vnd.ms-cab-compressed',

			// Audio
			'mp3'  => 'audio/mpeg',
			'qt'   => 'video/quicktime',
			'mov'  => 'video/quicktime',

			// Adobe
			'pdf'  => 'application/pdf',
			'psd'  => 'image/vnd.adobe.photoshop',
			'ai'   => 'application/postscript',
			'ps'   => 'application/postscript',

			// MS office
			'doc'  => 'application/msword',
			'rtf'  => 'application/rtf',
			'xls'  => 'application/vnd.ms-excel',
			'ppt'  => 'application/vnd.ms-powerpoint',

			// Open office
			'odt'  => 'application/vnd.oasis.opendocument.text',
			'ods'  => 'application/vnd.oasis.opendocument.spreadsheet'
        );

		public static function get(FileInfo $fileinfo)
		{
			if ($fileinfo == null || $fileinfo->getFileExt() == null)
				return 'application/octet-stream';

			if (array_key_exists($fileinfo->getFileExt(), self::$mimes))
			 	return self::$mimes[$fileinfo->getFileExt()];

			if (function_exists('finfo_open') && defined('FILEINFO_MIME')) {
				$open = finfo_open(FILEINFO_MIME);
				$mime = finfo_file($open, $fileinfo->getFilePath());

				if ($open !== false)
					finfo_close($open);

				return $mime;
			}

			return 'application/octet-stream';
		}

	}

?>