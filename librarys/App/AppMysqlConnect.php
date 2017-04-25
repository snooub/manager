<?php

    namespace Librarys\App;

    use Librarys\Boot;
    use Librarys\Database\DatabaseConnect;

    final class AppMysqlConnect extends DatabaseConnect
    {

        public function __construct(Boot $boot)
        {
            parent::__construct($boot);
        }

    }

?>