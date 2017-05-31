<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\App\Base\BaseConfigRead;

    final class AppAssetsConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot, $pathThemeEnv)
        {
            parent::__construct($boot, $pathThemeEnv);
            parent::parse(true);
        }

    }

?>