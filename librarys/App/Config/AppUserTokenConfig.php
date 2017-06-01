<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;
    use Librarys\App\Base\BaseConfigRead;

    final class AppUserTokenConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot, env('resource.config.user_token'), env('resource.filename.config.user_token'));
            parent::parse(true);
        }

    }

?>