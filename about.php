<?php

    use Librarys\App\AppAboutConfig;

    define('LOADED', 1);
    require_once('incfiles' . DIRECTORY_SEPARATOR . 'global.php');

    $title  = lng('about.title_page');
    $themes = [ env('resource.theme.about') ];
    $config = new AppAboutConfig($boot, env('resource.config.about'));

    require_once('incfiles' . SP . 'header.php');
?>

    <div id="about">
        <h1><?php echo $config->get('name'); ?></h1>
        <ul>
        	<li class="label">
        		<ul>
        			<li><span><?php echo lng('about.info.label.author'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.version'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.email'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.github'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.facebook'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.phone'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.create_at'); ?></span></li>
        			<li><span><?php echo lng('about.info.label.update_at'); ?></span></li>
        		</ul>
        	</li>
        	<li class="value">
        		<ul>
        			<li><span><?php echo $config->get('author'); ?></span></li>
        			<li><span><?php echo $config->get('version'); ?></span></li>
        			<li><span><?php echo $config->get('email'); ?></span></li>
        			<li><span><a href="<?php echo $config->get('git_link'); ?>" target="_blank"><?php echo $config->get('git_title'); ?></a></span></li>
        			<li><span><a href="<?php echo $config->get('fb_link'); ?>" target="_blank"><?php echo $config->get('fb_title'); ?></a></span></li>
        			<li><span><?php echo $config->get('phone'); ?></span></li>
        			<li><span><?php echo date('d.m.Y - H:i', $config->get('create_at')); ?></span></li>
        			<li><span><?php echo date('d.m.Y - H:i', $config->get('update_at')); ?></span></li>
        		</ul>
        	</li>
        </ul>
    </div>

<?php require_once('incfiles' . SP . 'footer.php'); ?>