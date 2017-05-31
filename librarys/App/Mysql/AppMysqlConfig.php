<?php

    namespace Librarys\App\Mysql;

    use Librarys\Boot;
    use Librarys\App\Base\BaseConfigRead;

    final class AppMysqlConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot, env('resource.config.mysql'), env('config_file_name.mysql'));
            parent::parse(true);
        }

    }

?>