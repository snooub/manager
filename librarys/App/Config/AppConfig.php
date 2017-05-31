<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\App\Base\BaseConfigRead;

    final class AppConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot, env('resource.config.manager'), env('resource.filename.config.manager'));
            parent::parse(true);
        }

    }

?>