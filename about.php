<<?php

    use Librarys\App\AppConfigWrite;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    $title  = lng('about.title_page');
    $themes = [ env('resource.theme.about') ];

    require_once('incfiles' . SP . 'header.php');
?>

    <div id="about">
        <h1><?php echo env('app.about.name'); ?></h1>
        <h5><?php echo lng('about.version'); ?><?php echo env('app.about.version'); ?></h5>
    </div>

<?php require_once('incfiles' . SP . 'footer.php'); ?>