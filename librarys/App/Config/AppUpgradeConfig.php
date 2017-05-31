<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\App\Base\BaseConfigRead;

    final class AppUpgradeConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot, env('resource.config.upgrade'), env('resource.filename.config.upgrade'));
            parent::parse(true);
        }

    }

?>