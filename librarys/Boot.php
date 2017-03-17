<?php

    namespace Librarys;

    if (defined('SP') == false)
        define('SP', DIRECTORY_SEPARATOR);

    error_reporting(E_ALL);

    require_once(__DIR__ . SP . 'Function.php');
    require_once(__DIR__ . SP . 'Environment.php');
    require_once(__DIR__ . SP . 'Autoload.php');
    require_once(__DIR__ . SP . 'CFSR' . SP . 'CFSRToken.php');

    use Librarys\Autoload;
    use Librarys\CFSR\CFSRToken;
    use Librarys\Firewall\FirewallProcess;

    final class Boot
    {

        private $environment;
        private $language;
        private $firewall;
        private $autoload;
        private $cfsr;

        private $isErrorHandler;

        public function __construct(array $config)
        {
            $this->environment = new Environment($config);
            $this->language    = new Language($this);
            $this->autoload    = new Autoload($this);

            $this->environment->execute();

            $this->obBufferStart();
            $this->obErrorHandler();
            $this->obBufferEnd();

            $this->language->execute();
            $this->autoload->execute();

            if (env('app.session.init', false))
                $this->sessionInit();

            $this->firewall = new FirewallProcess($this);
            $this->cfsr     = new CFSRToken();

            if (env('app.firewall.enable', false))
                $this->firewall->execute();
        }

        public function sessionInit()
        {
            $sessionStart = false;

            if (version_compare(phpversion(), '5.4.0', '>='))
                $sessionStart = session_status() === PHP_SESSION_ACTIVE;
            else
                $sessionStart = session_id() !== '';

            if ($sessionStart == false) {
                session_name(env('app.session.name',                         session_name()));
                session_set_cookie_params(env('app.session.cookie_lifetime', ini_get('session.cookie_lifetime')));
                session_cache_limiter(env('app.session.cache_limiter',       session_cache_limiter()));
                session_cache_expire(env('app.session.cache_expire',         session_cache_expire()));

                session_start();
            }
        }

        public function obBufferStart()
        {
            ob_start();
        }

        public function obBufferHandler($label, $message, $title = null)
        {
            $path = env('app.path.error') . SP .
                    env('error.handler')  .
                    env('error.mime');

            if (is_file($path)) {
                if ($title == null)
                    $title = $label;

                ob_clean();
                ob_flush();

                header('Content-Type: text/html');
                require_once($path);
            }
        }

        public function obErrorHandler()
        {
            $this->isErrorHandler = false;

            register_shutdown_function(function() {
                $errors = error_get_last();

                if (is_array($errors)) {
                    switch ($errors['type']) {
                        case E_PARSE:
                        case E_ERROR:
                        case E_CORE_ERROR:
                        case E_COMPILE_ERROR:
                        case E_USER_ERROR:
                            $errors['type_string'] = 'Fatal error';
                            break;

                        case E_WARNING:
                        case E_USER_WARNING:
                        case E_COMPILE_WARNING:
                        case E_RECOVERABLE_ERROR:
                            $errors['type_string'] = 'Warning';
                            break;

                        case E_NOTICE:
                        case E_USER_NOTICE:
                            $errors['type_string'] = 'Notice';
                            break;

                        case E_STRICT:
                            $errors['type_string'] = 'Strict';
                            break;

                        case E_DEPRECATED:
                        case E_USER_DEPRECATED:
                            $errors['type_string'] = 'Deprecated';
                            break;

                        default:
                            $errors['type_string'] = 'Unknown';
                            break;
                    }

                    $this->isErrorHandler = true;

                    $this->obBufferHandler(
                        $errors['type_string'] . ' in ' .
                        $errors['file']        . ' on line ' .
                        $errors['line'],
                        $errors['message'],
                        $errors['type_string']
                    );
                }
            });
        }

        public function obBufferEnd()
        {
            register_shutdown_function(function() {
                ob_end_flush();
            });
        }

    }

?>