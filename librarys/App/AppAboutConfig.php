<?php

    namespace Librarys\App;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\File\FileInfo;
    use Librarys\App\Base\BaseConfigRead;

    final class AppAboutConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot, env('resource.config.about'), env('config_file_name.about'));
            parent::parse(true);
        }

    }

?>