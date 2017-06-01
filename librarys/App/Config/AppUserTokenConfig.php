<?php

    namespace Librarys\App\Config;

    if (defined('LOADED') == false)
        exit;

    use Librarys\Boot;

    final class AppUserTokenConfig extends BaseConfigRead
    {

        public function __construct(Boot $boot, $idUser)
        {
            parent::__construct($boot, env('resource.config.user_token'), env('resource.filename.config.user_token'));
            parent::execute(null, $idUser);
        }

        public function callbackPreWrite()
        {
            if ($this->getPathConfig() == $this->getPathConfigSystem())
                return false;

            return true;
        }

        public function takeConfigArrayWrite()
        {
            return $this->getConfigArray();
        }

        public function takePathConfigWrite()
        {
            return $this->pathConfig;
        }

    }

?>