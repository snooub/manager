# MySQL database backup
#
# Generated: Sunday 21. May 2017 11:14 ICT
# Hostname: localhost
# Database: `cms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `cms_content_props`
# --------------------------------------------------------


#
# Delete any existing table `cms_content_props`
#

DROP TABLE IF EXISTS `cms_content_props`;


#
# Table structure of table `cms_content_props`
#

CREATE TABLE `cms_content_props` (
  `content_id` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  `param3` varchar(255) DEFAULT NULL,
  `content` longtext,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  KEY `cms_idx_content_props_by_content` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_content_props` (98 records)
#
 
INSERT INTO `cms_content_props` VALUES ('1', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('1', 'string', 'design_id', NULL, NULL, NULL, '2', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('1', 'string', 'content_en', NULL, NULL, NULL, '<p>Congratulations! The installation worked. You now have a fully functional installation of CMS Made Simple and you are <em>almost</em> ready to start building your site.</p><p>If you chose to install the default content, you will see numerous pages available to read.  You should read them thoroughly  as these default pages are devoted to showing you the basics of how to begin working with CMS Made Simple.  On these example pages, templates, and stylesheets many of the features of the default installation of CMS Made Simple are described and demonstrated. You can learn much about the power of CMS Made Simple by absorbing this information.</p><p>To get to the Administration Console you have to login as the administrator (with the username/password you mentioned during the installation process) on your site at http://yourwebsite.com/cmsmspath/admin.  If this is your site click <a title="CMSMS Demo Admin Panel" href="admin">here</a> to login.</p><p>Read about how to use CMS Made Simple in the <a class="external" href="http://docs.cmsmadesimple.org/" title="CMS Made Simple Documentation" target="_blank">documentation</a>. In case you need any help the community is always at your service, in the  <a class="external" href="http://forum.cmsmadesimple.org" title="CMS Made Simple Forum" target="_blank">forum</a> or the <a class="external" href="http://www.cmsmadesimple.org/support/irc" title="Information about the CMS Made Simple IRC channel" target="_blank">IRC</a>.</p><h3>License</h3><p>CMS Made Simple is released under the <a class="external" href="http://www.gnu.org/licenses/licenses.html#GPL" title="General Public License" target="_blank">GPL</a> license and as such you don\'t have to leave a link back to us in these templates or on your site as much as we would like it.</p><p> Some third party add-on modules may include additional license restrictions.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('2', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('2', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('2', 'string', 'content_en', NULL, NULL, NULL, '<p>So how is a web-site created with CMS Made Simple? There are a couple of terms that are central to understanding this.</p><p>You first need to have templates, which is the HTML code for your pages. This is styled with CSS in one or more style sheets that are attached to each template. You then create pages that contain your websites content using one of these templates.</p><p>That doesn\'t sound too hard, does it? Basically you don\'t need to know any HTML or CSS to get a site up with CMS Made Simple. But if you want to customize it to your liking, consider learning some <a class="external" href="http://www.w3schools.com/css/" target="_blank">CSS</a>.</p><p>In the menu to the left you can read more about this, as well as more advanced features like the Menu Manager, additional extensions for adding many kinds of functionality to your site and the Event Manager for managing work flow. Last is a summary of the basic work flow when creating a site with CMS Made Simple.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('3', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('3', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('3', 'string', 'content_en', NULL, NULL, NULL, '<p>A <em>template</em> is basically the HTML layout, or the design, of a page.  This is the work of the designer. Whatever is in a template is used on every  page that uses that template, meaning that the person editing the content  doesn\'t need any web design skills.</p><p>In the template there are placeholders for content and navigation areas. When  a user is visiting your site the page is automatically generated from the  template and the placeholders are filled with the content.</p><p>The template is the HTML structure. It is then styled in one or more  <em>style sheets</em> that are attached to each template. This styling is done  with CSS. So to get a site look the way you want you should be familiar with HTML and CSS on at least a basic level. But don\'t worry, there are themes with  ready-made templates and style sheets for you to download!</p><p>When you first install CMS Made Simple there are some basic templates that  you can use and customize to your needs. Those templates are described in the section {cms_selflink page=default_templates text=\'Default Templates Explained\'}. The designer of your site can also add new templates to make the site look any way you want. The CMSMS community also shares themes for anyone to download and use at <a class="external" href="http://themes.cmsmadesimple.org" target="_blank">The CMSMS Themes site</a>.</p><h3>Templates and style sheets in the CMSMS Admin Panel</h3><p>In the CMSMS Admin Panel you will find the templates and style sheets in the <strong>Layout</strong> menu.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('4', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('4', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('4', 'string', 'content_en', NULL, NULL, NULL, '<p>Pages determine the structure of your web-site as seen in the admin Content &raquo; Pages page. Think of a web-site as a set  of pages. These pages are accessed through a menu. You can also link to a page  from within another page.</p><h3>Navigation/Menu</h3><p>The navigation, or the menu, is a set of links that help the user to navigate through  the pages on your web site. These links are automatically created by CMS Made  Simple from the page structure. This hierarchy is what drives the menu you see  on the left of this page.</p><p>Pages can be in several levels, like a tree of generations. The top level in  the menu are the parent pages. Each parent page can have children pages, which  in turn can be parents to other children.</p><p>The page template determines where on a page the navigation is placed.</p><p>You can create any kind of navigation you can dream of by customizing a menu  template for <em>Menu Manager</em>. However, the default templates should work  for most situations as the menu basically is just an unordered list that you  style to your liking with CSS. The web is full of good articles about styling a list of links, one of the best is <a class="external" href="http://css.maxdesign.com.au/listutorial/index.htm" target="_blank">listutorial at maxdesign</a></p><h3>Pages in the CMSMS Admin Panel</h3><p>You add pages, as well as other content (see next chapter), in the CMSMS Admin Panel from the Content &raquo; Pages menu.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('5', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('5', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('5', 'string', 'content_en', NULL, NULL, NULL, '<p>The content is the information for the page. We have already mentioned that for each page on your site you  choose what template to use. When you add content to a page, it is automatically  placed in the placeholders of the template selected for that page.</p><p>A template can define one or several content areas, or content blocks. To add more content blocks to your template, use <code>{ldelim}content block=\'block name\'}</code>. These blocks will then appear as text areas when you edit or add a page that uses that template.</p><p>You can make a content block use only one line, instead of a full text area, by using the parameter oneline=true. That is, the full tag being: <code>{ldelim}content block=\'block name\' oneline=true}</code>. Read about more parameters in the help for the Content tag in the CMSMS Admin Panel, under Extensions &raquo; Tags.</p><h3>Content Types</h3><p>There are currently 6 main content types in version {cms_version} "{cms_versionname}". These content types determine the type of content for each menu item.</p><ul><li>Content</li><li>Error Page</li><li>External Page Link</li><li>Internal Page Link</li><li>Section Header</li><li>Separator</li></ul><p>The <strong>Content</strong> type is simply a regular page. Normally this is the only one you will use. That is what this page you are reading is. Here you can put any content that you would put on a regular page. The layout of these types of pages are controlled by the templates. For each <strong>content</strong> page you create you must add the title, menu text, choose if it is going to have a parent and choose a template for it.  If you login as admin and change the template of this page, you will see exactly how it works.</p><p>The <strong>Error Page</strong> type is just what it sounds like, a page you set for "404 page not found" errors, where you can add the content that shows when a 404 error occurs, a target type and title, you can also choose the template it uses, it has no parent as it is not part of the menu.</p><p>The <strong>External Page Link</strong> type is just what it sounds like, a link to another external page and you add the title, menu text, choose if it is going to have a parent and a destination page along with the target setting and other options that a content type page has. This <strong>external page link</strong> type also shows up in the menu following the same hierarchy rules as the <strong>content</strong> type.</p><p>The <strong>Internal Page Link</strong> type is also just what it sounds like, a link to another internal page. This <strong>internal page link</strong> type also shows up in the menu following the same hierarchy rules as the <strong>content</strong> type and you add the title, menu text, choose if it is going to have a parent and a destination page along with the target setting and other options that a content type page has.</p><p>The <strong>Section Header</strong> type is used to break up menus into groupings (sections). This is unrelated to the hierarchy, as the section headers have no associated pages with them but can be used to group a set of links of similar content under them. They are just a little bit of text to say what the next few links are in reference to.</p><p>The <strong>Separator</strong> type is just what it sounds like, a separator that appears on the menus. This type follows the hierarchy set in content management pages.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('6', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('6', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('6', 'string', 'content_en', NULL, NULL, NULL, '<p>The Menu Manager is a module that reads your page hierarchy and builds a navigation using a \'Menu Manager Template\'. By default a few sample menu manager templates are included with your default installation. For most users these are enough, as a menu basically is just an unordered list that is styled with CSS.</p><p>The Menu Manager module also accepts various optional attributes (parameters) in the {ldelim}menu{rdelim} tag to allow you to customize its behavior. You can see the list and explanation of these parameters in the Menu Manager Help which can be found on the right side of the screen when you click on "Layout &raquo; Menu Manager" in the administration console.</p><p>Customizing templates in the Menu Manager is as simple as clicking the \'Import Template to Database\' button, which will then allow you to create a template with a new name, and modify the layout of the template. You can use your new navigation template by specifying the new name in the call to {ldelim}menu{rdelim} in your page template. i.e: {ldelim}menu template=\'mynewtemplate\'{rdelim}.</p><h3>Menu Manager in the CMSMS Admin Panel</h3><p>Read more about how to do this in the <strong>Help</strong> for the Menu Manager in the CMSMS Admin Panel. It can be found in the Layout menu.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('7', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('7', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('7', 'string', 'content_en', NULL, NULL, NULL, '<p>There are three kinds of extensions, that can add many kinds of functionality to your default CMS Made Simple install. They are called tags, user defined tags, and modules.</p><h3>Tags</h3><p>Tags are the simplest form of extensions. They are designed to accomplish just one small and specific task.</p><p>There are a number of custom tags available with CMS Made Simple. To find what kind of tags are available look in Extensions &raquo; Tags in the Admin Panel.</p><p>To insert any of these in a template or a page, simply type e.g. <code>{ldelim}content}</code>. Many of these Smarty tags are used as placeholders in a template, i.e. placeholders for content, navigation, breadcrumbs etc.</p><p>Website developers who have a bit of PHP experience will find it easy to create and share their own custom tags.</p><h3>User defined tags</h3><p>Users can also create their own tags to insert in templates or pages., these are called user defined tags. They are snippets of php code (but without the &lt;?php and ?&gt; surrounding them), providing the ability to add re-usable pieces of php functionality to your site. User defined tags are inserted in templates and pages just like tags: <code>{ldelim}tagname}</code>.</p><p>Typically, user defined tags provide a utility that is special to a website, and likely won\'t need to be re-used on another site. Also they are typically small and used for simple tasks.</p><h3>Modules</h3><p>Modules are the highest level of plugin in the CMS Made Simple environment. They are designed to allow developers to implement complex tasks within CMSMS. A module typically provides advanced functionality, usually interacts with the database in complex ways, and may provide numerous reports or forms on the website. Additionally, a module may have an administrative interface to allow manipulating its data and its settings.</p><p>An extremely well defined API <em>(Application Programming Interface)</em> has been written to allow module developers to write complex, intricate, and fully functioning applications for use within a CMSMS powered website.</p><p>There are {cms_selflink page=\'modules\' text=\'a few modules included\'} with the default installation of CMS Made Simple. Other popular modules are Frontend Users, Album, Calendar, Guestbook and Form Builder.</p><p>The ModuleManager module (included with CMS Made Simple) allows browsing a list of available modules, reading about them, and then installing them on your website.</p><p>To insert modules in a template or a page, you actually use the module name as a parameter to the <code>{ldelim}cms_module}</code> tag. It looks like this: <code>{ldelim}cms_module module=\'modulename\' parameter1=\'this\' parameter2=5 parameter3=\'that\'}</code>. It is normal for modules to accept parameters to effect changes to their default behavior, though it is not always required.</p><h3>Read more</h3><p>You can read more about extensions in the <a class="external" href="http://docs.cmsmadesimple.org/modules/add-ons">CMSMS documentation</a>.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('8', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('8', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('8', 'string', 'content_en', NULL, NULL, NULL, '<p>Events are a new powerful way of assigning actions to events. For example if you would like to send an email to the site administrator when a new file is uploaded or a new page is created by another user you could add some code to those events to be executed when that event happens.</p><p>In brief here\'s how it works:</p><p>a) A module, or the core, can register, and then Send Events such as "newNews", or "newFronteEndUser" or "fileUploaded", "editPage", etc, etc, etc. there\'s some 50 events in the core at the moment, and then uploads and frontend users have been configured to send events, We still have to do selfreg, etc, etc, etc.</p><p>b) There are pages in the admin to allow you to specify which modules, and/or user tags should handle those events, and the order that each of those handlers should be called in.</p><p>c) If one of the handlers of an event is a module, then.... the modules DoEvent method is called with the name of the event, and whatever data it wants to send. Each triggered event needs to be documented, but as of this moment, most are.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('9', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('9', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('9', 'string', 'content_en', NULL, NULL, NULL, '<p>These are the basic steps when creating a website with CMS Made Simple:</p><ol><li><em>Plan</em> -- Determine what pages you want (structure) and how you want  these pages to look (design). </li><li><em>Create Templates</em> -- Create one or several template(s) that  determine the layout of your pages. </li><li><em>Style the Templates</em> -- Attach one or more stylesheets to each  template and style the layout and content with CSS. </li><li><em>Create Pages</em> -- Then you create pages, add content to them and  select what template to use for each page. </li></ol><p>When a user navigates to your site the page is created from the template,  adding the content where the placeholder(s) are in the template.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('10', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('10', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('10', 'string', 'content_en', NULL, NULL, NULL, '<p>The CMS Made Simple community is always at your service if you need some help with your site. Here is where you find more information and support:</p><ul><li><a class="external" href="http://docs.cmsmadesimple.org/">The CMSMS Documentation Website</a> -- Start here, the documentation is maintained by the CMSMS Dev-team</li><li><a class="external" href="http://forum.cmsmadesimple.org/">The CMSMS Forums</a> -- here you can search for answers to your questions or ask just about anything.</li><li><a class="external" href="http://cmsmadesimple.org/main/support/IRC">IRC</a> -- IRC is short for Internet Relay Chat and is like a community chat. Many developers hang out here and others that are ready to discuss and give support.</li></ul><p>Please remember that people involved in developing and supporting CMSMS have day jobs and other duties and might not be available 24/7. Be patient and polite and you will get better answers.</p><p>Hope you will enjoy using CMS Made Simple for creating your web sites! If you want to contribute to the development yourself, you are very welcome to do so. You can contact us on <a class="external" href="http://cmsmadesimple.org/main/support/IRC">IRC</a> or hit the <a class="external" href="http://forum.cmsmadesimple.org/">forums</a> to get involved.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('11', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('11', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('11', 'string', 'content_en', NULL, NULL, NULL, '<p>CMS Made Simple {cms_version} was installed with numerous default templates (you choose this during the installation process). These are to display some of the features of CMS Made Simple and to give you a head start when creating your own web sites.</p><p>The tags that are unique to templates in CMS Made Simple are described on the page {cms_selflink page=\'cmsms_tags\' text=\'CMSMS tags in the templates\'} (see menu to the left). Click on any link beneath that page in the menu to the left to see what the default templates look like.</p><h4>Changing the style of Default Templates</h4><p>All of the templates and style sheets have comments throughout them to help you find where to change the look of them.</p><h3>Menus/navigation</h3><p>Two kinds of navigation are used in these templates. For each there is a menu template in the Menu Manager. <strong>CSSMenu </strong>is a dropdown menu using only CSS. Well, for Internet Explorer 6 some JavaScript has to be used... Two of the page templates are using CSSMenu for navigation, {cms_selflink page=\'cssmenu_horizontal\' text=\'one with the menu horizontally at the top\'} and the other {cms_selflink page=\'cssmenu_vertical\' text=\'with the menu vertically to the left\'}.</p><p>The other navigation type is what we call <strong>Simple Navigation</strong>. That is just an unordered list that gets its style and appearance from the style sheets (CSS). Also here {cms_selflink page=\'top_left\' text=\'one page template is using a horizontal simple navigation\'} and the other {cms_selflink page=\'navleft\' text=\'a vertical menu\'}.</p><p>The menu tag in each template is used like this: <code>{ldelim}menu template=\'cssmenu\'}</code>, where the <code>cssmenu</code> is the name of the Menu Manager template, if you make a custom menu template you don\'t need to use the  on the end. More parameters can be used, for example to start a menu from the second level, collapse the children pages until the parent is clicked etc. Read more about that in the Menu Manager Help in the Admin Panel.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('12', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('12', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('12', 'string', 'content_en', NULL, NULL, NULL, '<p>Here we explain the tags that are used in the default templates that are specific to templates in CMS Made Simple. The rest of the templates are just pure HTML. You can read more about that in the <a class="external" href="http://docs.cmsmadesimple.org/layout/create-your-own-template">documentation website</a>.</p><div class="templatecode"><h3>Page title</h3><pre>&lt;title&gt;{ldelim}sitename} - {ldelim}title}&lt;/title&gt;</pre><p>For each page using these tags in a template the tags are replaced with the site name you specify in Site Admin &raquo; Global settings and the title you specify when you add/edit each page.</p><p><em>Read more</em> about the <code>{ldelim}sitename}</code> and <code>{ldelim}title}</code> tags in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Metadata</h3><pre>{ldelim}metadata}</pre><p>This tag adds to your page any metadata that you have specified in Site Admin &raquo; Global settings and also page specific metadata that you can add under the Options tab when adding/editing a page.</p><p>It is also used for knowing the base folder for your site when using pretty URLs. So don\'t remove this if you use Pretty URLs!</p><p><em>Read more</em> about the <code>{ldelim}metadata}</code>tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Stylesheets (deprecated)</h3><pre>{ldelim}stylesheet}</pre><p>This tag links to all style sheets (CSS) that you have attached to a template. It means that you only have to add this tag once and all attached style sheets will be linked automatically.</p><p><em>Read more</em> about the <code>{ldelim}stylesheet}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Stylesheets</h3><pre>{ldelim}cms_stylesheet}</pre><p>This tag is the newer version of the tag above. The tag links to all style sheets (CSS) that you have attached to a template. It means that you only have to add this tag once and all attached style sheets will be linked automatically.</p><p>The new tag allows you to use smarty variables like [[$red]] to indicate a color, and one change will change it througout your layout. The new tag requires that [[root_url]]/ be put in front of images, as the stylesheets are cached.</p><p><em>Read more</em> about the <code>{ldelim}cms_stylesheet}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Relational links</h3><pre>{ldelim}cms_selflink dir="start" rellink=1}{ldelim}cms_selflink dir="prev" rellink=1}{ldelim}cms_selflink dir="next" rellink=1}</pre><p>These are relational links for interconnections between pages, which is good for accessibility and Search Engine Optmization</p><p><em>Read more</em> about the <code>{ldelim}cms_selflink}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Page width in Internet Explorer 6</h3><pre>{ldelim}literal}&lt;script type="text/JavaScript"&gt;&lt;!--//pass min and max -measured against window widthfunction P7_MinMaxW(a,b){ldelim}	var nw="auto",w=document.documentElement.clientWidth;	if(w&gt;=b){ldelim}nw=b+"px";}if(w&lt;=a){ldelim}nw=a+"px";}return nw;}//--&gt;&lt;/script&gt;&lt;!--[if lte IE 6]&gt;&lt;style type="text/css"&gt;#pagewrapper {ldelim}width:expression(P7_MinMaxW(720,950));}#container {ldelim}height: 1%;}&lt;/style&gt;&lt;![endif]--&gt;{ldelim}/literal}</pre><p>This isn\'t a tag really, but displays how to insert JavaScript in a CMSMS template.</p><p>The default templates use fluid page width. But Internet Explorer 6 doesn\'t understand min-width and max-width, so for that browser the min and max page width is set with this JavaScript. For other browsers the page width is set in the style sheets beginning with "Layout ..."</p></div><div class="templatecode"><h3>Skip links for accessibility</h3><pre>{ldelim}anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</pre><p>Anchor links (links to an anchor in the same page) are inserted with the <code>{ldelim}anchor}</code> tag. In the default templates this is used for skip links that are visible to screen readers, but hidden with CSS to visual browsers.</p><p><em>Read more</em> about the <code>{ldelim}anchor}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Header with logo image that links to default page</h3><pre>{ldelim}cms_selflink dir="start" text="$sitename"}</pre><p>In the header the &lt;h1&gt; tag (hidden by CSS) is a link to the page that is selected as the default page. The <code>dir="start"</code> parameter in the {ldelim}cms_selflink} tag is used for this. To get the site name as the text for the link, the <code>$sitename</code> variable is used.</p><p><em>Read more</em> about the <code>{ldelim}cms_selflink}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Search</h3><pre>{ldelim}search}</pre><p>To insert a search form on your site, simply use the {ldelim}search} tag. Search is actually a module and should therefore be called as a parameter in the {ldelim}cms_module} tag, like this: <code>{ldelim}cms_module module=\'search\'}</code>. But to simplify matters, we did a wrapper tag so that it\'s easier to remember.</p><p><em>Read more</em> about the Search module in Extensions &raquo; Modules in the Admin Panel.</p></div><div class="templatecode"><h3>Breadcrumbs</h3><pre>{ldelim}breadcrumbs starttext=\'You are here\' root=\'Home\' delimiter=\'&raquo;\'}</pre><p>Breadcrumbs is a path to the current page. In the default templates we have chosen to put the text \'You are here\' before the path and force \'Home\' to always be the root in the path, even if it isn\'t. With the delimiter parameter you can select the delimiter that separates entries in the path.</p><p><em>Read more</em> about the <code>{ldelim}breadcrumbs}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Navigation</h3><pre>{ldelim}menu template=\'simple navigation\' collapse=\'1\'}</pre><p>This is how you insert a menu where you want it to appear. Like the <code>{ldelim}search}</code> tag, this is actually just a wrapper tag, as the Menu Manager is a module.</p><p>In the default templates the menu manager template that is used for the menus are stored in files. That\'s why you see the .tpl extension in the template parameter. But you can easily import menu templates to the database and edit them directly in the Admin Panel. Then you simply omit the .tpl extension in the template parameter.</p><p><em>Read more</em> about the Menu Manager module in Extensions &raquo; Modules in the Admin Panel.</p></div><div class="templatecode"><h3>News</h3><pre>{ldelim}news number=\'3\' detailpage=\'news\'}</pre><p>This tag will display the last three news articles. When clicking a news article to read the details, it is opened on the page with the page alias \'news\'. That\'s what the detailpage parameter is doing.</p><p>Like all core modules there is a wrapper tag for the News module, to make it easier to use.</p><p><em>Read more</em> about the News module tag in Extensions &raquo; News in the Admin Panel.</p></div><div class="templatecode"><h3>Print button</h3><pre>{ldelim}print showbutton=true script=true}</pre><p>The <code>{ldelim}print}</code> tag is used to insert a print link. With the showbutton parameter set to true we have told the tag to output a button instead of text. The script parameter set to true means the print dialog window opens when clicking the button, for immediate printing.</p><p>The <code>{ldelim}print}</code> tag prints everything that is in your <code>{ldelim}content}</code> tag, that is only the content for a page.</p><p><em>Read more</em> about the <code>{ldelim}print}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Page content</h3><pre>&lt;h2&gt;{ldelim}title}&lt;/h2&gt;{ldelim}content}</pre><p>Maybe the most important tag in your template. Where you put the <code>{ldelim}content}</code> is where the content for your page will appear.</p><p>We have also chosen to put the page title on every page (the <code>{ldelim}title}</code> tag), so that you don\'t have to put that in the content for every page.</p><p>The default <code>{ldelim}content}</code> tag is <strong>required</strong> for all templates.</p><p><em>Read more</em> about the <code>{ldelim}content}</code> and <code>{ldelim}title}</code> tags in Extensions &raquo; Tags in the Admin Panel.</p></div><div class="templatecode"><h3>Previous/next links</h3><pre>{ldelim}anchor anchor=\'main\' text=\'^ Top\'}{ldelim}cms_selflink dir="previous"}{ldelim}cms_selflink dir="next"}</pre><p>Some more internal links. These are using the dir parameter to link to the previous and next pages in the page hierarchy (separators and section headers will be omitted as they are no pages).</p></div><div class="templatecode"><h3>Page footer</h3><pre>{ldelim}global_content name=\'footer\'}</pre><p>Instead of bloating your template with lots of code you can put some code in a Global Content Block. Then call that Global Content Block with the <code>{ldelim}global_content}</code> tag. It\'s also useful for content or HTML code that is reused on several pages or templates.</p><p>In the default templates we have put the footer text in a Global Content Block with the name \'footer\'. You find the Global Content Blocks in the Content menu in the Admin Panel.</p><p><em>Read more</em> about the <code>{ldelim}global_content}</code> tag in Extensions &raquo; Tags in the Admin Panel.</p></div>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('13', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('13', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('13', 'string', 'content_en', NULL, NULL, NULL, '<p>This template has the menu in left sidebar. The menu is using the <strong>Simple Navigation</strong> menu template. It is styled in the stylesheet called <strong>Navigation Simple - Vertical</strong>.</p><p>You can easily float the sidebar with the menu to the right instead. Look in the <strong>Layout Left sidebar + 1 column</strong> style sheet for the <code>float:left;</code> property in the <code>div#sidebar</code> element. Change that to <code>float:right;</code> and the sidebar with the menu will instead be on the right side of the content, of course you will also have to adjust the margins for the sidebar and the div#main, basically just swap the left and right margins.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('14', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('14', 'string', 'design_id', NULL, NULL, NULL, '9', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('14', 'string', 'content_en', NULL, NULL, NULL, '<p>With the Menu Manager you can easily split the navigation in two parts. On this page the top level in the page hierarchy is displayed horizontally and depending on what page is displayed a localized sub-menu is displayed vertically to the left. In this case the sub-menu to the left displays the sub-levels (children) to <strong>Default Templates Explained</strong>.</p><h3>The {ldelim}menu} tag</h3><p>The <code>{ldelim}menu}</code> tag is inserted twice in the page template. First where the main navigation is, which should only show the top level. It looks like this: <code>{ldelim}menu template=\'Simple Navigation\' number_of_levels=\'1\'}</code>.</p><p>The sub navigation should only contain the second level and down, depending on what is selected on the first level. Also, the third level links should only display when its parent on the second level is clicked, otherwise they are hidden. That is, the second level is collapsed unless the current page has sub pages.</p><p>The tag for the sub navigation looks like this: <code>{ldelim}menu template=\'simple_navigation.tpl\' start_level=\'2\' collapse=\'1\'}</code>.</p><h3>Attached style sheets for the menu</h3><p>As the main navigation and the sub navigation need to be styled differently (one horizontal, the other vertical), two navigation style sheets are attached to this page template. <strong>Navigation Simple - Horizontal</strong> is for styling the horizontal main menu. <strong>Navigation Simple - Vertical</strong> on the other hand, contains the style for the sub navigation to the left.</p><h3>Both using the same Menu Manager template</h3><p>However, as you could see, both parts of the navigation are using the same menu manager template. That is because the output code is the same. It is only through CSS that the two parts get styled differently.</p><h3>Floating the sidebar to the right</h3><p>You can easily float the sidebar with the sub navigation to the right instead. Look in the <strong>Layout Top menu + 2 columns</strong> style sheet for the <code>float:left;</code> property in the <code>div#sidebar</code> element. Change that to <code>float:right;</code> and the sidebar with the menu will instead be on the right side of the content, of course you will also have to adjust the margins for the sidebar and the div#main, basically just swap the left and right margins.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('15', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('15', 'string', 'design_id', NULL, NULL, NULL, '4', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('15', 'string', 'content_en', NULL, NULL, NULL, '<p>This is a drop-down menu that is using only CSS (although some Javascript is required for Internet Explorer 6, note: IE6 will not let you use 2 of these menu types in a template at the same time as the second one will fail to open). It can be either vertical or horizontal.</p><p>The code we have inserted in the template that this page is using is simply <code>{ldelim}menu template=\'cssmenu.tpl\'}</code>.  You style the menu in the stylesheet <strong>Navigation CSSMenu - Horizontal</strong> or <strong>Navigation CSSMenu - Vertical</strong> for the vertical CSSMenu.</p><p>But to be on the safe side, copy this style sheet and attach your new style sheet to the template instead (and make your changes in your new style sheet). Then you can always revert to the default style sheet if something goes wrong.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('15', 'string', 'Sidebar', NULL, NULL, NULL, '<p>Just some test content goes here as an example of a very long sentence that probably should have been divided into several smaller sentences, were it not for this just being a test sentence on one of the default pages of CMS Made Simple, an excellent Content Management System for easily creating web sites, this sentence is added when adding/editing a page in the Sidebar: text area, this comes from the template place holder {ldelim}content block=\'Sidebar\'}.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('16', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('16', 'string', 'design_id', NULL, NULL, NULL, '3', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('16', 'string', 'content_en', NULL, NULL, NULL, '<p>This is basically the same as the last one, CSSMenu top + 2 column, with the menu on the left instead of across the top there isn\'t a whole lot to say about it.</p><h3>Filler Text</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut ac leo in lorem ultricies sollicitudin. Vivamus molestie elit nec nulla. Suspendisse potenti. Suspendisse at lorem. Donec pulvinar, magna eget molestie pretium, justo sem iaculis urna, eget condimentum nibh augue pellentesque arcu. Integer tristique tempor mauris. Sed justo orci, commodo volutpat, sagittis vitae, varius vitae, massa. Maecenas pede ligula, iaculis sit amet, pharetra eu, adipiscing consectetuer, eros. Duis ullamcorper nisl ac magna. Nunc neque dolor, posuere dapibus, convallis non, tristique sed, nibh. Suspendisse quis leo. Phasellus pretium erat ut purus. Duis facilisis consectetuer sapien. Nulla eget pede ut nisl faucibus consequat. Quisque erat lectus, luctus in, pellentesque ac, adipiscing eu, enim. Donec ultrices laoreet urna.</p><h3>Subheading</h3><p>Vestibulum vitae tellus. Fusce quis ligula. Cras mi. Mauris congue, lacus eget rhoncus venenatis, mi nunc volutpat nisl, ut ornare erat augue quis mauris. Nulla in sem. Donec semper odio ac ante. Cras a libero in risus mattis commodo. Phasellus pellentesque lectus. Donec a mi. Integer euismod neque at arcu. Morbi ligula nulla, dapibus nec, fermentum ut, tristique vel, pede. Morbi at diam. Vestibulum quam. Cras consectetuer wisi id neque. Etiam dictum vulputate ligula. Aliquam erat volutpat. Proin vitae lorem in justo imperdiet nonummy. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse leo. Sed in eros ut lectus lacinia condimentum.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('17', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('17', 'string', 'design_id', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('17', 'string', 'content_en', NULL, NULL, NULL, '<p>This is an example of the very minimal that needs to be in a CMSMS template. No stylesheet is attached to the template, which is why it doesn\'t look very nice...</p><p>However, to make it slightly more appealing, some inline styling was used, for floating the content to the right of the menu.</p><p>The menu in this page template is using the <strong>Minimal Navigation</strong> template for Menu Manager. No accessibility stuff is in there, so it\'s recommended that the <strong>Simple Navigation</strong> menu template is rather used.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('18', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('18', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('18', 'string', 'content_en', NULL, NULL, NULL, '<p>These are more complex then some of the other templates, especially the menus, they all 3 use the same menu template. Which shows you the power of CSS.</p><p>Be forewarned, if you use IE6 you won\'t see the best effects in any of the shadow menus that you see using a more standards compliant browser. I mean it\'s still nice grant you but... just upgrade your browser if you can.</p><h3>The Differences</h3><p>Starting with NCleanBlue you get a really nice, subtle Tabbed menu, then it goes on to have a real nice drop down effect.</p><p>You get a real nice 2.0 header and footer, great color scheme and the search is way cool, it\'s just a great theme, what can I say, thanks Nuno.</p><p>Then the next 2 submenus have another version of the shadowed drop, the first step will point up for the top sub menu and to the right for the left sub menus.</p><p>These 2 are the same layout as CSSMenu top + 2 columns and CSSMenu left + 1 column,  respectively, except for the menu template and some CSS.</p><p>We hope you enjoy these, for any changes you want to make it\'s always best to copy the original style sheet for safe keeping, you never know when you may need it.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('19', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('19', 'string', 'design_id', NULL, NULL, NULL, '6', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('19', 'string', 'content_en', NULL, NULL, NULL, '<p>Nuno has graciously supplied us with another of his great looking designs.</p><p>This one is using a new menu template so we can style the drop down for the children pages, using an image for the second ul going from the top down, it has an extra li at the bottom of the child pages ul &lt;li class="separator once" style="list-style-type: none;"&gt;&amp;nbsp; &lt;/li&gt; this is used to hold the bottom image.</p><h3>Filler Text</h3><p>Maecenas tristique, tortor nec eleifend luctus, nibh leo imperdiet wisi, et accumsan est lectus in orci. Proin facilisis, odio auctor feugiat accumsan, sapien purus iaculis dui, a volutpat augue pede ut sem. Nulla facilisi. Aliquam suscipit elementum ipsum. Morbi urna. Nam eros justo, varius sit amet, euismod eu, dictum nec, neque. Nullam id mi eu odio tempor adipiscing. Quisque hendrerit euismod nunc. Ut erat nulla, pellentesque nec, luctus eu, dictum nec, augue. Aliquam tincidunt sodales arcu. Nam porta sagittis quam. Vivamus eget purus egestas velit congue consectetuer.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('20', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('20', 'string', 'design_id', NULL, NULL, NULL, '8', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('20', 'string', 'content_en', NULL, NULL, NULL, '<p>Using the same menu template as the previous theme. We changed the child ul CSS to use a different top image. This involves changing some of the margin and padding as the images are a different shape. Note the difference in the second level and third level ul images, one has an arrow up and the other has an arrow left.</p><h3>Filler Text</h3><p>Curabitur ornare velit molestie nulla. Fusce fermentum facilisis mi. Maecenas volutpat, eros ac pellentesque mollis, urna elit rutrum turpis, congue convallis nibh erat nec purus. Sed malesuada consectetuer turpis. Nulla sollicitudin placerat augue. Vestibulum ut sem eget turpis laoreet cursus. Vestibulum ante urna, mollis eget, cursus eget, viverra non, lectus. Aliquam erat volutpat. Aenean gravida tempor nulla. Sed sem lorem, pulvinar non, placerat non, vestibulum sed, tellus. Phasellus fermentum velit id dui. Praesent vulputate. Nam in dui.</p><p>Maecenas tristique, tortor nec eleifend luctus, nibh leo imperdiet wisi, et accumsan est lectus in orci. Proin facilisis, odio auctor feugiat accumsan, sapien purus iaculis dui, a volutpat augue pede ut sem. Nulla facilisi. Aliquam suscipit elementum ipsum. Morbi urna. Nam eros justo, varius sit amet, euismod eu, dictum nec, neque. Nullam id mi eu odio tempor adipiscing. Quisque hendrerit euismod nunc. Ut erat nulla, pellentesque nec, luctus eu, dictum nec, augue. Aliquam tincidunt sodales arcu. Nam porta sagittis quam. Vivamus eget purus egestas velit congue consectetuer.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('20', 'string', 'Sidebar', NULL, NULL, NULL, '<h4>Filler Text</h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras sodales gravida est. Nullam enim ipsum, convallis quis, iaculis quis, facilisis eu, felis. Proin euismod hendrerit tortor. Aliquam erat volutpat. Morbi tempus diam sit amet neque. Sed sem metus, sagittis vel, lobortis ac, tempus sit amet, wisi. Phasellus in diam. Maecenas ultrices rutrum mauris. Vestibulum dolor justo, blandit a, posuere quis, varius at, tellus. Vestibulum convallis. Nulla ut leo sed elit eleifend varius. Aenean eget est id lorem posuere laoreet.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('21', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('21', 'string', 'design_id', NULL, NULL, NULL, '2', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('21', 'string', 'content_en', NULL, NULL, NULL, '<p>Simplex Theme has been created to demonstrate HTML5 and CSS3 functionality within CMS Made Simple&trade;.<br />It is shipped with a CSS Framework making it possible for you to create Responsive and Mobile capabale layouts with ease.</p><h2>What is included?</h2><p>With this Template you will find four Stylesheets attached to it.</p><ul><li>Simplex Core</li><li>Simplex Layout</li><li>Simplex Mobile</li><li>Simplex Print</li></ul><p>Main Functionality of this Template is included in Core Stylesheet. It contains a simple Fluid Grid Framework based on <a class="external" href="http://960.gs/" title="960 Grid System" target="_blank">960 Grid System</a>.<br />In this same Stylesheet CSS <a class="external" href="http://www.w3.org/TR/css3-mediaqueries/" title="W3C Media Queries" target="_blank">Media Queries</a> are being used that make it possible for a flexible layout based on Screen width.<br /><br />With Simplex Theme it is very easy to quickly change appearance of complete Site at once. If you look at Page Template code you will find "boxed" id in the <code>&lt;body&gt;</code> tag.<br />When this id is removed the Layout of the Site is changed and you would face a simple layout with White background.<br />You can also quickly change allignement of the complete Site. If you change the class of "wrapper" div to leftaligned or rightaligned, whole Page will be aligned to left or right.</p><h2>Support for Mobile Devices</h2><p>As mentioned above this Theme is shipped with Stylesheet Framework that gives you a starting point for easy developement of Responsive Layout.<br />Mobile world is very versatile and Framework itself is by no means perfect, it is only a starting point but as a Developer you should decide which technique you should use for your current Project.<br />Responsive Template is only one small step towards Mobile support.</p><p>This Theme requires <a class="external" href="http://jquery.org/" title="jQuery" target="_blank">jQuery</a> which is included with <code>{ldelim}cms_jquery{rdelim}</code> tag.</p><p><cite>Note: {ldelim}cms_jquery{rdelim} tag is included at the bottom of the Template. You should be carefull with it when you are using Modules that include jQuery in &lt;head&gt; section.</cite></p><p>In file functions.js a section is included that makes it possible of Navigating through site with some Mobile Devices. This part of the code, covers only few devices and it is only meant as an example and a starting point for Developer.</p><h2>This and that</h2><p>As an example of <a class="external" href="http://www.smarty.net/" title="Smarty" target="_blank">Smarty</a> power within CMS Made Simple&trade; Templates a very simple Slider has been included, which demonstartes how easy it is to quickly create a Slideshow without a single Module.</p><pre><code>{ldelim}assign var=\'teaser\' value=\'uploads/simplex/teaser/*.jpg\'|glob{rdelim}<br />{ldelim}foreach from=$teaser item=\'one\'{rdelim}<br /> &lt;div&gt;&lt;img src=\'{ldelim}root_url{rdelim}/{ldelim}$one{rdelim}\' width=\'852\' height=\'275\' alt=\'\' /&gt;&lt;/div&gt;<br />{ldelim}/foreach{rdelim}<br /> {/strip}</code></pre><p><cite>If you would like to make this Slider responsive you should include a additional jQuery Plugin like for example <a class="external" href="http://swipejs.com" target="_blank" title="SwipeJS">SwipeJS</a></cite></p><p>In included Stylesheets, Smarty has been used as well. This should make it possible for you, to quickly change Color scheme of the theme by simply changing HEX code within assign Tags.</p><pre><code>[[assign var=\'boxed_bg\' value="#d1d1d1 url(`$path`/boxed-bg.gif)"]][[assign var=\'light_grey\' value=\'#f1f1f1\']]<br />[[assign var=\'grey\' value=\'#e9e9e9\']]<br />[[assign var=\'dark_grey\' value=\'#555\']]<br />[[assign var=\'white\' value=\'#fff\']]<br />[[assign var=\'orange\' value=\'#f39c2c\']]<br />[[assign var=\'dark_orange\' value=\'#e6870e\']]<br />[[assign var=\'yellow\' value=\'#fdbd34\']]</code></pre><p>If you are using a modern Browser, you will notice that the Theme is using some of <a class="external" href="http://www.w3.org/TR/CSS/#css3" title="CSS3" target="_blank">CSS3</a> techniques. There are no Internet Explorer fallbacks included but this doesn\'t mean that it does not work in Internet Explorer.<br />A Visitor that is using Internet Explorer will simply see a Layout with gracefull fallback, meaning animations will not animate, rounded corners will be edges...</p><p><em>Note from Theme Develper Goran Ilic (uniqu3e):</em></p><blockquote><cite>The Simplex Theme was kept simplistic which should make it possible for a Developer to easily read code used in Theme and either create a new Layout from it or editing this Theme.<br /><br />A full Internet Explorer or Mobile support was intentionally not included, as each Developer should decide how far a old Browser like Internet Explorer (7,8) or which Mobile devices he wants to support and which Technique he will use.<br />Each Project is different and with each Project there is a need for different techniques.</cite></blockquote>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('22', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('22', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('22', 'string', 'content_en', NULL, NULL, NULL, '<p>With the default installation of CMS Made Simple come six modules and a number of tags. The features of these are described and displayed on the following pages.</p><p>To find out more about the core modules, click {cms_selflink page=\'modules\' text=\'Modules\'}. For an explanation the core tags, simply click {cms_selflink page=\'tags\' text=\'Tags\'}.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('23', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('23', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('23', 'string', 'content_en', NULL, NULL, NULL, '<p>There are six modules that come with the default installation of CMS Made Simple. On the following pages we explain how these are used. Click on each module name in the menu to the left or in the list below.</p><p>To insert a module in a template or a page you normally use the <code>{ldelim}cms_module}</code> tag with the module name as one of the parameters. But to simplify things, all core modules also have a tag wrapper, so that they are called simple by their name, like <code>{ldelim}news}</code>.</p><ul><li>{cms_selflink page=\'news\' text=\'News\'}</li><li>{cms_selflink page=\'menu-manager-2\' text=\'Menu Manager\'}</li><li>{cms_selflink page=\'theme-manager\' text=\'Theme Manager\'}</li><li>{cms_selflink page=\'microtiny\' text=\'MicroTiny\'}</li><li>{cms_selflink page=\'search\' text=\'Search\'}</li><li>{cms_selflink page=\'module-manager\' text=\'Module Manager\'}</li></ul>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('24', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('24', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('24', 'string', 'content_en', NULL, NULL, NULL, '<p>Most web sites have a section for the latest news. In CMS Made Simple the best way to accomplish that is by using the News module.</p><p>To display a list of news items you insert the tag <code>{ldelim}news number=\'5\' category=\'General\'}</code>. On this page the tag is inserted in the template. But it can also be inserted on a page. You can see the News module in use in the sidebar to the left.</p><p>There are a number of parameters that can be used in conjunction with this tag. To read about how a module is used, navigate to Extensions &raquo; Modules in the Admin Panel and click on "Help" for the module you want to read about.</p>', NULL, '2017-03-24 14:33:37') ; 
INSERT INTO `cms_content_props` VALUES ('25', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('25', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('25', 'string', 'content_en', NULL, NULL, NULL, '<p>The Menu Manager has already been explained on the How CMSMS Works » {cms_selflink page=\'menu-manager\' text=\'Menu Manager\'} page. It is a very powerful module that can be used for any kind of navigation system on your web site.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('26', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('26', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('26', 'string', 'content_en', NULL, NULL, NULL, '<p>The Theme Manager module allows you to import and export templates and their attached stylesheets, including any images they use, as "themes". This allows you to share your look and feel with other CMSMS users.</p><p>It is very easy to convert any kind of template to be used with CMS Made Simple. Many templates like this have already been converted and can be installed using the Theme Manager, the CMSMS community also shares themes for anyone to download and use at the <a class="external" target="_blank" href="http://themes.cmsmadesimple.org">CMSMS Themes site</a>.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('27', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('27', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('27', 'string', 'content_en', NULL, NULL, NULL, '<p>MicroTiny is a so called WYSIWYG editor for editing pages. WYSIWYG stands for What You See Is What You Get. It works similar to a word processor, where you can select the style for the content and see how it is going to look on the page.</p><p>Among available WYSIWYG editors CMS Made Simple has decided to use MicroTiny (the stripped down version of TinyMCE). TinyMCE is among the most developed WYSIWYG editors, with regular updates, a large following and customizable features.</p><p>However, it is very difficult to create a cross-browser online editor that works in all different kinds of environments. If you are familiar with HTML you can select no WYSIWYG in My Preferences &raquo; User Preferences in the Admin Panel. That gives you more control over the code that will be on the page.</p><p>There are also other WYSIWYG editor modules available for download.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('28', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('28', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('28', 'string', 'content_en', NULL, NULL, NULL, '<p>Search is a module for searching "core" content along with certain registered modules. You put in a word or two and it gives you back matching, relevant results.</p><p>You can see the search module in use in the default templates, like on this page. Simply put <code>{ldelim}search}</code> in your template, where you want the search form to appear. If you want the results of a search to appear on a different page, you can specify this with the parameter <code>resultpage=\'page alias\'</code>.</p><p>For more information, see the Search module in the Admin Panel, in the Extensions menu.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('29', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('29', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('29', 'string', 'content_en', NULL, NULL, NULL, '<p>A client for the ModuleRepository, this module allows you to see what modules are available, the version number, size, and Status/Action (whether it is already installed or not), read the Help and About for each module, letting you install modules from remote sites without the need for FTP\'ing, or unzipping archives. Module XML files are downloaded using SOAP, integrity verified, and then expanded automatically.</p><p>ModuleManager now checks dependencies. When dependencies are set, the module wont install until dependencies are met. Also a new tab is available, that shows newer versions of installed modules.</p><p>In short, this means that you can download and install modules directly from the Admin Panel. Any module that has been released as an XML file can be downloaded and installed. Go to Extensions &raquo; Module Manager in the Admin Panel to see the list of modules from the official CMSMS repository in the CMSMS Development Forge.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('30', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('30', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('30', 'string', 'content_en', NULL, NULL, NULL, '<p>There are a number of custom tags included with the default CMS Made Simple installation. They are all described and demonstrated in the following page, and user defined tags are in the next one.</p><p>To use a tag, simply put it in the template or page like this: {ldelim}nameoftag}. Some tags can also take parameters, which are described in the Help that is accessible for each tag in Extensions &raquo; Tags in the Admin Panel.</p>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('31', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('31', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('31', 'string', 'content_en', NULL, NULL, NULL, '<p>There are plenty of tags included with the CMSMS core. Some of them are demonstrated here, for any questions as to the parameters they can take or anything else please see the Tags Help.</p><h3>{ldelim}anchor}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}anchor anchor=\'here\' text=\'Scroll Down\' class=\'myclass\' title=\'mytitle\' tabindex=\'1\' accesskey=\'s\'}</code></dd> <dt>Display</dt> <dd>Creates a link to an anchor on the same page. Used for example for the ^Top link at the bottom of this page.</dd> </dl><h3>{ldelim}cms_breadcrumbs{rdelim}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_breadcrumbs root=\'Home\'{rdelim}</code></dd> <dt>Display</dt> <dd>Breadcrumbs are a navigational technique displaying all visited pages leading from the home page to the currently viewed page. You find it under the header on this page.</dd></dl><h3>{ldelim}cms_module}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_module module=\'somemodulename\' param1=\'something\' param2=true}</code></dd> <dt>Display</dt> <dd>This tag is used to insert modules into your templates and pages.  Used for any module that you download. In the default templates, wrapper tags are used for inserting modules though. That is, a tag is made to insert a cms_module tag.</dd> </dl><h3>{ldelim}cms_selflink}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_selflink page="1"}</code> or <code>{ldelim}cms_selflink page="alias"}</code></dd> <dt>Display</dt> <dd>Creates a link to another CMSMS content page inside your template or content. Can also be used for external links with the ext parameter. </dd> <dt>Example</dt> <dd>{cms_selflink page=\'modules\' text=\'Link to the modules page\'} </dd> <dd><a class="external" href="http://www.cmsmadesimple.org">This is an external link to the CMS Made Simple website</a></dd> </dl><h3>{ldelim}cms_version}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_version}</code></dd> <dt>Display</dt> <dd>Displays current version number of CMS Made Simple. </dd> <dt>Example</dt> <dd>See the footer on this page.</dd> </dl><h3>{ldelim}cms_versionname}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}cms_versionname}</code></dd> <dt>Display</dt> <dd>Displays current version name of CMS Made Simple. </dd> <dt>Example</dt> <dd>See the footer on this page.</dd> </dl><h3>{ldelim}current_date}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}current_date format="%A %d-%b-%y %T %Z"}</code></dd> <dt>Display</dt> <dd>Prints the current date and time.</dd> <dt>Example</dt> <dd>{current_date format="%A %d-%b-%y %T %Z"}</dd> </dl><h3>{ldelim}embed}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}embed url="http://www.cmsmadesimple.org"}</code></dd> <dt>Display</dt> <dd>Enable inclusion (embeding) of any other application into the CMS. The most usual use could be a forum. </dd> </dl><h3>{ldelim}global_content}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}global_content name=\'footer\'}</code></dd> <dt>Display</dt> <dd>Inserts a Global Content Block (previously known as HTML blob) into your template or page. The code for the footer of this page is in a Global Content Block. </dd> </dl><h3>{ldelim}menu_text}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}menu_text}</code></dd> <dt>Display</dt> <dd>Prints the menu text of the page.</dd> <dt>Example</dt> <dd>{menu_text}</dd> </dl><h3>{ldelim}modified_date}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}modified_date format="%A %d-%b-%y %T %Z"}</code></dd> <dt>Display</dt> <dd>Prints the date and time the page was last modified. </dd> <dt>Example</dt> <dd>{modified_date format="%A %d-%b-%y %T %Z"}</dd> </dl><h3>{ldelim}print}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}CMSPrinting}</code></dd> <dt>Display</dt> <dd>Creates a link to only the content of the page.</dd> <dt>Example</dt> <dd>{ldelim}CMSPrinting}</dd> </dl><h3>{ldelim}site_mapper}</h3><dl> <dt>Syntax used</dt> <dd><code>{ldelim}site_mapper}</code></dd> <dt>Display</dt> <dd>Prints out a sitemap.</dd> <dt>Example</dt> <dd>{site_mapper}</dd> </dl>', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('32', 'string', 'searchable', NULL, NULL, NULL, '1', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('32', 'string', 'design_id', NULL, NULL, NULL, '5', NULL, '2017-03-24 14:33:38') ; 
INSERT INTO `cms_content_props` VALUES ('32', 'string', 'content_en', NULL, NULL, NULL, '<p>One of the little known features of CMS Made Simple is the User Defined tag.  Basically, this allows you to write PHP code inside the Admin Panel.  Use the \'Add User Defined Tag\' button in Extension &raquo; User Defined Tags in the Admin Panel, write some code, and then insert into a template or page with {literal}{newpluginname}{/literal}.  Simple!</p><p>As an example, I\'ve put together a one line plugin/tag that will show your current User Agent information (which browser you\'re using).  The output is right here: <strong>{user_agent}</strong>.</p><p>If you\'re not looking at the source, all that is in the page is {literal}{user_agent}{/literal}.  To see how this code works, edit the user_agent tag in the Extensions &raquo; User Defined Tags page of the admin.</p><p>This is a VERY powerful feature if used right.  Remember, user defined tags do not get cached, therefore, scripts to rotate ad banners and such will work just fine. Note also that tag code has to be written <em>without</em> opening &lt; ? php  and ending  ? &gt; tags.</p>', NULL, '2017-03-24 14:33:38') ;
#
# End of data contents of table `cms_content_props`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_layout_stylesheets`
# --------------------------------------------------------


#
# Delete any existing table `cms_layout_stylesheets`
#

DROP TABLE IF EXISTS `cms_layout_stylesheets`;


#
# Table structure of table `cms_layout_stylesheets`
#

CREATE TABLE `cms_layout_stylesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` longtext,
  `description` text,
  `media_type` varchar(255) DEFAULT NULL,
  `media_query` text,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_idx_layout_css_1` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_layout_stylesheets` (20 records)
#
 
INSERT INTO `cms_layout_stylesheets` VALUES ('1', 'Handheld', '/*********************************************\nSample stylesheet for mobile and small screen handheld devices\n\nJust a simple layout suitable for smaller screens with less \nstyling cabapilities and minimal css\n\nNote: If you dont want to support mobile devices you can\nsafely remove this stylesheet.\n*********************************************/\n/* remove all padding and margins and set width to 100%. This should be default for handheld devices but its good to set these explicitly */\nbody {\nmargin:0;\npadding:0;\nwidth:100%;\n}\n\n/* hide accessibility noprint and definition */\n.accessibility,\n.noprint,\ndfn {\ndisplay:none;\n}\n\n/* dont want to download image for header so just set bg color */\ndiv#header,\ndiv#footer {\nbackground-color: #385C72;  \ncolor: #fff;\ntext-align:center;\n}\n\n/* text colors for header and footer */\ndiv#header a,\ndiv#footer a {\ncolor: #fff;\n}\n\n/* this doesnt look as nice, but takes less space */\ndiv#menu_vert ul li,\ndiv#menu_horiz ul li {\ndisplay:inline;\n}\n\n/* small border at the bottom to have some indicator */\ndiv#menu_vert ul,\ndiv#menu_horiz ul {\nborder-bottom:1px solid #fff;\n}\n\n/* save some space */\ndiv.breadcrumbs {\ndisplay:none;\n}', 'Stylesheet for older mobile devices', 'handheld', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('2', 'Print', '/*\nSections that are hidden when printing the page. We only want the content printed.\n*/\n\n\nbody {\ncolor: #000 !important; /* we want everything in black */\nbackground-color:#fff !important; /* on white background */\nfont-family:arial; /* arial is nice to read ;) */\nborder:0 !important; /* no borders thanks */\n}\n\n/* This affects every tag */\n* {\nborder:0 !important; /* again no borders on printouts */\n}\n\n/* \nno need for accessibility on printout. \nMark all your elements in content you \ndont want to get printed with class="noprint"\n*/\n.accessibility,\n.noprint\n {\ndisplay:none !important; \n}\n\n/* \nremove all width constraints from content area\n*/\ndiv#content,\ndiv#main {\ndisplay:block !important;\nwidth:100% !important;\nborder:0 !important;\npadding:1em !important;\n}\n\n/* hide everything else! */\ndiv#header,\ndiv#header h1 a,\ndiv.breadcrumbs,\ndiv#search,\ndiv#footer,\ndiv#menu_vert,\ndiv#news,\ndiv.noprint,\ndiv.right49,\ndiv.left49,\ndiv#sidebar  {\n   display: none !important;\n}\n\nimg {\nfloat:none; /* this makes images cause a pagebreak if it doesnt fit on the page */\n}', 'Default stylesheet for print devices', 'print', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('3', 'Accessibility and cross-browser tools', '/* accessibility */\n/* menu links accesskeys */\nspan.accesskey {\n	text-decoration: none;\n}\n/* accessibility divs are hidden by default, text, screenreaders and such will show these */\n.accessibility, hr {\n/* position set so the rest can be set out side of visual browser viewport */\n	position: absolute;\n/* takes it out top side */\n	top: -999em;\n/* takes it out left side */\n	left: -999em;\n}\n/* definition tags are also hidden, these are also used for accessibility menu links */\ndfn {\n	position: absolute;\n	left: -1000px;\n	top: -1000px;\n	width: 0;\n	height: 0;\n	overflow: hidden;\n	display: inline;\n}\n/* end accessibility */\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #18507C;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* clearing */\n/* clearfix is a hack for divs that hold floated elements. it will force the holding div to span all the way down to last floated item. We strongly recommend against using this as it is a hack and might not render correctly but it is included here for convenience. Do not edit if you dont know what you are doing*/\n.clearfix:after {\n	content: ".";\n	display: block;\n	height: 0;\n	clear: both;\n	visibility: hidden;\n}\n.clear {\n	height: 0;\n	clear: both;\n	width: 90%;\n	visibility: hidden;\n}\n#main .clear {\n	height: 0;\n	clear: right;\n	width: 90%;\n	visibility: hidden;\n}\n* html>body .clearfix {\n	display: inline-block;\n	width: 100%;\n}\n* html .clear {\n/* Hides from IE-mac \\*/\n	height: 1%;\n	clear: right;\n	width: 90%;\n/* End hide from IE-mac */\n}\n/* end clearing */', 'Accessibility and cross-browser CSS rules attached to multiple Themes', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('4', 'Layout Left sidebar + 1 column', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\n* {\n	margin: 0;\n	padding: 0;\n}\n/*Set initial font styles*/\nbody {\n	text-align: left;\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\n	font-size: 75.01%;\n	line-height: 1em;\n}\n/*set font size for all divs, this overrides some body rules*/\ndiv {\n	font-size: 1em;\n}\n/*if img is inside "a" it would have borders, we don\'t want that*/\nimg {\n	border: 0;\n}\n/*default link styles*/\na, a:link a:active {\n/* set all links to have underline */\n	text-decoration: underline;\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\n	background-color: inherit;\n/* this is a bluish color, you change this for all default link colors */\n	color: #18507C;\n}\na:visited {\n/* keeps the underline */\n	text-decoration: underline;\n	background-color: inherit;\n/* a different color is used for visited links */\n	color: #18507C;\n}\na:hover {\n/* remove underline on hover */\n	text-decoration: none;\n	background-color: inherit;\n/* using a different color makes the hover obvious */\n	color: #385C72;\n}\n/*****************basic layout *****************/\nbody {\n	margin: 0;\n	padding: 0;\n/* default text color for entire site*/\n	color: #333;\n/* you can set your own image and background color here */\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\n}\ndiv#pagewrapper {\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\n	max-width: 99em;\n	min-width: 60em;\n/* now that width is set this centers wrapper */\n	margin: 0 auto;\n	background-color: #fefefe;\n	color: black;\n}\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\ndiv#header {\n/* adjust according your image size */\n	height: 100px;\n	margin: 0;\n	padding: 0;\n/* you can set your own image here, will go behind h1 a image */\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\n/* border just the bottom */\n	border-bottom: 1px solid #D9E2E6;\n}\ndiv#header h1 a {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\n/* this will make the "a" link a solid shape */\n	display: block;\n/* adjust according your image size */\n	height: 100px;\n/* this hides the text */\n	text-indent: -999em;\n/* old firefox would have shown underline for the link, this explicitly hides it */\n	text-decoration: none;\n}\ndiv#header h1 {\n	margin: 0;\n	padding: 0;\n/*these keep IE6 from pushing the header to more than the set size*/\n	line-height: 0;\n	font-size: 0;\n/* this will keep IE6 from flickering on hover */\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\n}\ndiv#header h2 {\n/* this is where the site name is */\n	float: right;\n	line-height: 1.2em;\n/* this keeps IE6 from not showing the whole text */\n	font-size: 1.5em;\n/* keeps the size uniform */\n	margin: 35px 65px 0px 0px;\n/* adjust according your text size */\n	color: #f4f4f4;\n}\ndiv.crbk {\n/* sets all to 0 */\n	margin: 0;\n	padding: 0;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv.breadcrumbs {\n/* CSS short hand rule first value is top then right, bottom and left */\n	padding: 1em 0em 1em 1em;\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\n	font-size: 90%;\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\n	margin: 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\ndiv#search {\n/* position for the search box */\n	float: right;\n/* enough width for the search input box */\n	width: 27em;\n	text-align: right;\n	padding: 0.5em 0 0.2em 0;\n	margin: 0 1em;\n}\n/* a class for Submit button for the search input box */\ninput.search-button {\n	border: none;\n	height: 22px;\n	width: 53px;\n	margin-left: 5px;\n	padding: 0px 2px 2px 0px;\n/* makes the hover cursor show, you can set your own cursor here */\n	cursor: pointer;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\n}\ndiv#content {\n/* some air above and under menu and content */\n	margin: 1.5em auto 2em 0;\n	padding: 0px;\n}\n/* this gets all the outside calls that were used on the div#main before  */\ndiv.back1 {\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\n	margin-left: 29%;\n/* and some air on the right */\n	margin-right: 2%;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\n}\n/* this is an IE6 hack, you may see these through out the CSS */\n* html div.back1 {\n/* unlike other browser IE6 needs float:right and a width */\n	float: right;\n	width: 69%;\n/* and we take this out or it will stop at the bottom  */\n	margin-left: 0%;\n/* and some air on the right */\n	margin-right: 10px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\n}\ndiv.back2 {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\n}\ndiv.back3 {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\n}\ndiv#main {\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\n	padding: 10px 15px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\n}\ndiv.back #main {\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\n	padding: 10px 30px 1px 15px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\n}\ndiv.back {\n/* this will give room for sidebar to be on the left side, make sure this space is bigger than sidebar width */\n	margin-left: 29%;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\n}\ndiv#sidebar {\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\n	float: left;\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\n	width: 26%;\n/* FIX IE double margin bug */\n	display: inline;\n/* the 20px is on the bottom, insures space above footer if longer than content */\n	margin: 0px 0px 20px;\n	padding: 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\n}\ndiv#sidebara {\n	padding: 13px 15px 3px 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv#sidebarb {\n	padding: 10px 10px 1px 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv.footback {\n/* keep footer below content and menu */\n	clear: both;\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\n	padding: 0px 10px 0px 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\n}\ndiv#footer {\n/* this sets 10px on left to balance 10px right on last div */\n	padding: 0px 0px 0px 10px;\n/* color of text, the link color is set below */\n	color: #595959;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\n}\ndiv.leftfoot {\n	float: left;\n	width: 30%;\n	margin-left: 20px\n}\ndiv#footer p {\n/* sets different font size from default */\n	font-size: 0.8em;\n/* some air for footer */\n	padding: 1.5em;\n/* centered text */\n	text-align: center;\n	margin: 0;\n}\ndiv#footer p a {\n/* footer link would be same color as default we want it same as footer text */\n	color: #595959;\n}\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\ndiv.hr {\n	height: 1px;\n	padding: 1em;\n	border-bottom: 1px dotted black;\n	margin: 1em;\n}\n/* relational links under content */\ndiv.left49 {\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\n	width: 70%;\n}\ndiv.right49 {\n	float: right;\n	width: 29%;\n/* set right to keep text on right */\n	text-align: right;\n}\n/********************CONTENT STYLING*********************/\n/* HEADINGS */\ndiv#content h1 {\n/* font size for h1 */\n	font-size: 2em;\n	line-height: 1em;\n	margin: 0;\n}\ndiv#content h2 {\n	color: #294B5F;\n/* font size for h2 the higher the h number the smaller the font size, most times */\n	font-size: 1.5em;\n	text-align: left;\n/* some air around the text */\n	padding-left: 0.5em;\n	padding-bottom: 1px;\n/* set borders around header */\n	border-bottom: 1px solid #899092;\n	border-left: 1.1em solid #899092;\n/* a larder than h1 line height */\n	line-height: 1.5em;\n/* and some air under the border */\n	margin: 0 0 0.5em 0;\n}\ndiv#content h3 {\n	color: #294B5F;\n	font-size: 1.3em;\n	line-height: 1.3em;\n	margin: 0 0 0.5em 0;\n}\ndiv#content h4 {\n	color: #294B5F;\n	font-size: 1.2em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\ndiv#content h5 {\n	color: #294B5F;\n	font-size: 1.1em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\nh6 {\n	color: #294B5F;\n	font-size: 1em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\n/* END HEADINGS */\n/* TEXT */\np {\n/* default p font size, this is set different in some other divs */\n	font-size: 1em;\n/* some air around p elements */\n	margin: 0 0 1.5em 0;\n	line-height: 1.4em;\n	padding: 0;\n}\nblockquote {\n	border-left: 10px solid #ddd;\n	margin-left: 10px;\n}\nstrong, b {\n/* explicit setting for these */\n	font-weight: bold;\n}\nem, i {\n/* explicit setting for these */\n	font-style: italic;\n}\n/* Wrapping text in <code> tags. Makes CSS not validate */\ncode, pre {\n/* css-3 */\n	white-space: pre-wrap;\n/* Mozilla, since 1999 */\n	white-space: -moz-pre-wrap;\n/* Opera 4-6 */\n	white-space: -pre-wrap;\n/* Opera 7 */\n	white-space: -o-pre-wrap;\n/* Internet Explorer 5.5+ */\n	word-wrap: break-word;\n	font-family: "Courier New", Courier, monospace;\n	font-size: 1em;\n}\npre {\n/* black border for pre blocks */\n	border: 1px solid #000;\n/* set different from surroundings to stand out */\n	background-color: #ddd;\n	margin: 0 1em 1em 1em;\n	padding: 0.5em;\n	line-height: 1.5em;\n	font-size: 90%;\n}\n/* Separating the divs on the template explanation page */\ndiv.templatecode {\n	margin: 0 0 2.5em;\n}\n/* END TEXT */\n/* LISTS */\n/* lists in content need some margins to look nice */\ndiv#main ul,\ndiv#main ol,\ndiv#main dl {\n	font-size: 1.0em;\n	line-height: 1.4em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul li,\ndiv#main ol li {\n	margin: 0 0 0.25em 3em;\n}\n/* definition lists topics on bold */\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\n/* END LISTS */', 'CSS rules used for Layout Left sidebar + 1 column Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('5', 'Navigation CSSMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\r\n/* by Alexander Endresen and mark and Nuno */\r\n/* The wrapper determines the width of the menu elements */\r\n#menuwrapper {\r\n/* just smaller than it\\\'s containing div */\r\n	width: 95%;\r\n	margin-left: 0px;\r\n/* room at bottom */\r\n	margin-bottom: 10px;\r\n}\r\n/* Unless you know what you do, do not touch this */\r\n#primary-nav, #primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style: none;\r\n	margin: 0px;\r\n	padding: 0px;\r\n/* make sure it fills out */\r\n	width: 100%;\r\n/* just a little bump */\r\n	margin-left: 1px;\r\n}\r\n#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* just a little bump down for second level ul */\r\n	top: 5px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n}\r\n#primary-nav ul ul {\r\n/* no bump down for third level ul */\r\n	top: 0px;\r\n}\r\n#primary-nav li {\r\n/* negative bottom margin pulls them together, images look like one border between */\r\n	margin-bottom: -1px;\r\n/* keeps within it\\\'s container */\r\n	position: relative;\r\n/* bottom padding pushes \\"a\\" up enough to show our image */\r\n	padding: 0px 0px 4px 0px;\r\n/* you can set your own image here */\r\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\r\n}\r\n#primary-nav li li {\r\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\r\n	width: 220px;\r\n	padding: 0px;\r\n/* removes first level li image */\r\n	background-image: none;\r\n}\r\n/* Styling the basic apperance of the menu \\"a\\" elements */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #595959;\r\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 0.8em 0.5em 0.5em 0.5em;\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* removes underline from default link setting */\r\n	text-decoration: none;\r\n/* you can set your own image here this is tall enough to cover text heavy links */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n}\r\nul#primary-nav a span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* pushes text to right */\r\n	padding-left: 1.5em;\r\n}\r\nul#primary-nav li a:hover {\r\n/* stops image flicker in some browsers */\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n/* changes text color on hover */\r\n	color: #899092;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* you can set your own image here, second level \\"a\\" */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n/* contrast color to image behind it */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n/* black and bold to set it off from non active */\r\n	color: #000;\r\n	font-weight: bold;\r\n}\r\nul#primary-nav li li a.menuactive {\r\n/* contrast color to image behind it, set below */\r\n	color: #FFF;\r\n/* not bold as text color and image behind it set it off from non active */\r\n	font-weight: normal;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* relative to it\\\'s container */\r\n	position: relative;\r\n/* more padding to left than default */\r\n	padding: 6px 3px 6px 15px;\r\n	font-weight: normal;\r\n/* darker than first level \\"a\\" */\r\n	color: #000;\r\n/* removes any borders that may have been set in first level */\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n/* removes image set in first level \\"a\\" */\r\n	background: none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n	/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\n/* Fixes IE7 bug */\r\n#primary-nav li, #primary-nav li.menuparent {\r\n	min-height: 1em;\r\n}\r\n/* Styling the basic apperance of the second level active page elements (shows what page in the menu is being displayed) */\r\n#primary-nav li li.menuactive, #primary-nav li.menuactive.menuparenth li.menuactive {\r\n/* set your image here, dark grey image with white text set above*/\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n}\r\n#primary-nav li.menuparent span {\r\n/* padding on left for image */\r\n	padding-left: 1.5em;\r\n/* down arrow to note it has children, left side of text */\r\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\r\n}\r\n#primary-nav li.menuparent:hover li.menuparent span {\r\n/* remove left padding as image is on right side of text */\r\n	padding-left: 0;\r\n/* right arrow to note it has children, right side of text */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth li.menuparent span,\r\n#primary-nav li.menuparenth li.menuparenth span {\r\n/* same as above but this is for IE6, gif image as it can\\\'t handle transparent png */\r\n	padding-left: 0;\r\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\r\n}\r\n#primary-nav li.menuparenth span,\r\n#primary-nav li.menuparent:hover span,\r\n#primary-nav li.menuparent.menuactive span,\r\n#primary-nav li.menuparent.menuactiveh span, {\r\n/* right arrow to note hover */\r\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\r\n}\r\n#primary-nav li li span,\r\n#primary-nav li.menuparent li span,\r\n#primary-nav li.menuparent:hover li span,\r\n#primary-nav li.menuparenth li span,\r\n#primary-nav li.menuparenth li.menuparenth li span,\r\n#primary-nav li.menuparent li.menuparent li span,\r\n#primary-nav li.menuparent li.menuparent:hover li span  {\r\n/* removes any images set above unless it\\\'s a parent or active parent */\r\n	background:  none;\r\n/* removes padding that is used for arrows */\r\n	padding-left: 0px;\r\n}\r\n/* IE6 flicker fix */\r\n#primary-nav li.menuh,\r\n#primary-nav li.mnuparenth,\r\n#primary-nav li.mnuactiveh {\r\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\r\n	color: #899092;\r\n}\r\n#primary-nav li:hover li a {\r\n/* removes any images set above unless it\\\'s a parent or active parent */\r\n	background:  none;\r\n	color: #000;\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE Hack, will cause the css to not validate */\r\n#primary-nav li,\r\n#primary-nav li.menuparenth {\r\n	_float: left;\r\n	_height: 1%;\r\n}\r\n#primary-nav li a {\r\n	_height: 1%;\r\n}\r\n/* BIG NOTE: I didn\\\'t do anything to these 2, never tested */\r\n#primary-nav li.sectionheader {\r\n	border-left: 1px solid #006699;\r\n	border-top: 1px solid #006699;\r\n	font-size: 130%;\r\n	font-weight: bold;\r\n	padding: 1.5em 0 0.8em 0.5em;\r\n	background-color: #fff;\r\n	margin: 0;\r\n	width: 100%;\r\n}\r\n/* separator */\r\n#primary-nav li hr.separator {\r\n	display: block;\r\n	height: 0.5em;\r\n	color: #abb0b6;\r\n	background-color: #abb0b6;\r\n	width: 100%;\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n	border-top: 1px solid #006699;\r\n	border-right: 1px solid #006699;\r\n}', 'Navigation CSS rules used in CSSMenu left + 1 column Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('6', 'Navigation CSSMenu - Horizontal', '/* by Alexander Endresen and mark and Nuno */\r\n#menu_vert {\r\n/* no margin/padding so it fills the whole div */\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n.clearb {\r\n/* needed for some browsers */\r\n	clear: both;\r\n}\r\n#menuwrapper {\r\n/* set the background color for the menu here */\r\n	background-color: #243135;\r\n/* IE6 Hack */\r\n	height: 1%;\r\n	width: auto;\r\n/* one border at the top */\r\n	border-top: 1px solid #3F565C;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav, ul#primary-nav ul {\r\n/* remove any default bullets */\r\n	list-style-type: none;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\nul#primary-nav {\r\n/* pushes the menu div up to give room above for background color to show */\r\n	padding-top: 10px;\r\n/* keeps the first menu item off the left side */\r\n	padding-left: 10px;\r\n}\r\nul#primary-nav ul {\r\n/* make the ul stay in place so when we hover it lets the drops go over the content below else it will push everything below out of the way */\r\n	position: absolute;\r\n/* top being the bottom of the li it comes out of */\r\n	top: auto;\r\n/* keeps it hidden till hover event */\r\n	display: none;\r\n/* same size but different color for each border */\r\n	border-top: 1px solid #C8D3D7;\r\n	border-right: 1px solid #C8D3D7;\r\n	border-bottom: 1px solid #ADC0C7;\r\n	border-left: 1px solid #A5B9C0;\r\n}\r\nul#primary-nav ul ul {\r\n/* now we move the next level ul down from the top a little for distinction */\r\n	margin-top: 1px;\r\n/* pull it in on the left, helps us not lose the hover effect when going to next level */\r\n	margin-left: -1px;\r\n/* keeps the left side of this ul on the right side of the one it came out of */\r\n	left: 100%;\r\n/* sets the top of it inline with the li it came out of */\r\n	top: 0px;\r\n}\r\nul#primary-nav li {\r\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\r\n	float: left;\r\n/* no margin/padding keeps them next to each other, the padding will be in the \\"a\\" */\r\n	margin: 0px;\r\n	padding: 0px;\r\n}\r\n#primary-nav li li {\r\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\r\n	width: 220px;\r\n/* removes any left margin it may have picked up from the first li */\r\n	margin-left: 0px;\r\n/* keeps them tight to the one above, no missed hovers */\r\n	margin-top: -1px;\r\n/* removes the left float set in first li so these will stack from top down */\r\n	float: none;\r\n/* relative to the ul they are in */\r\n	position: relative;\r\n}\r\n/* set the \\"a\\" link look here */\r\nul#primary-nav li a {\r\n/* specific font size, this could be larger or smaller than default font size */\r\n	font-size: 1em;\r\n/* make sure we keep the font normal */\r\n	font-weight: normal;\r\n/* set default link colors */\r\n	color: #fff;\r\n/* pushes out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\r\n	padding: 12px 15px 15px;\r\n	display: block;\r\n/* sets no underline on links */\r\n	text-decoration: none;\r\n}\r\nul#primary-nav li a:hover {\r\n/* kind of obvious */\r\n	background-color: transparent;\r\n}\r\nul#primary-nav li li a:hover {\r\n/* this is set to #000, black, below so hover will be white text */\r\n	color: #FFF;\r\n}\r\nul#primary-nav li a.menuactive {\r\n	color: #000;\r\n/* bold to set it off from non active */\r\n	font-weight: bold;\r\n/* set your image here */\r\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\r\n}\r\nul#primary-nav li a.menuactive:hover {\r\n	color: #000;\r\n/* keep it the same */\r\n	font-weight: bold;\r\n}\r\n#primary-nav li li a.menuparent span {\r\n/* makes it hold a shape */\r\n	display: block;\r\n/* set your image here, right arrow, 98% over from the left, 100% or \\\'right\\\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.png) no-repeat 98% center;\r\n}\r\n/* gif for IE6, as it can\\\'t handle transparent png */\r\n* html #primary-nav li li a.menuparent span {\r\n/* set your image here, right arrow, 98% over from the left, 100% or \\\'right\\\' puts it to far */\r\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 98% center;\r\n}\r\nul#primary-nav li ul a {\r\n/* insures alignment */\r\n	text-align: left;\r\n	margin: 0px;\r\n/* keeps it relative to it\\\'s container */\r\n	position: relative;\r\n/* less padding than first level no need for large links here */\r\n	padding: 6px 3px 6px 15px;\r\n/* if first level is set to bold this will reset this level */\r\n	font-weight: normal;\r\n/* first level is #FFF/white, we need black to contrast with light background */\r\n	color: #000;\r\n	border-top: 0 none;\r\n	border-right: 0 none;\r\n	border-left: 0 none;\r\n}\r\nul#primary-nav li ul {\r\n/* very lite grey color, by now you should know what the rest mean */\r\n	background: #F3F5F5;\r\n	margin: 0px;\r\n	padding: 0px;\r\n	position: absolute;\r\n	width: auto;\r\n	height: auto;\r\n	display: none;\r\n	position: absolute;\r\n	z-index: 999;\r\n	border-top: 1px solid #FFFFFF;\r\n	border-bottom: 1px solid #374B51;\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 0.95;\r\n/* CSS 3 */\r\n}\r\nul#primary-nav li ul ul {\r\n/*Info: The opacity property is  CSS3, however, will be valid just in CSS 3.1) http://jigsaw.w3.org/css-validator2) More Options chose CSS3 3) is full validate;)*/\r\n	opacity: 95;\r\n/* CSS 3 */\r\n}\r\n/* Styling the appearance of menu items on hover */\r\n#primary-nav li:hover,\r\n#primary-nav li.menuh,\r\n#primary-nav li.menuparenth,\r\n#primary-nav li.menuactiveh {\r\n/* set your image here, dark grey image */\r\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\r\n	color: #000\r\n}\r\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\r\n#primary-nav li:hover ul ul ul,\r\n#primary-nav li.menuparenth ul ul ul,\r\n*/\r\n#primary-nav ul,\r\n#primary-nav li:hover ul,\r\n#primary-nav li:hover ul ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav li.menuparenth ul ul {\r\n	display: none;\r\n}\r\n/* for fourth level add\r\n#primary-nav ul ul ul li:hover ul,\r\n#primary-nav ul ul ul li.menuparenth ul,\r\n*/\r\n#primary-nav li:hover ul,\r\n#primary-nav ul li:hover ul,\r\n#primary-nav ul ul li:hover ul,\r\n#primary-nav li.menuparenth ul,\r\n#primary-nav ul li.menuparenth ul,\r\n#primary-nav ul ul li.menuparenth ul {\r\n	display: block;\r\n}\r\n/* IE6 Hacks */\r\n#primary-nav li li {\r\n	float: left;\r\n	clear: both;\r\n}\r\n#primary-nav li li a {\r\n	height: 1%;\r\n}', 'Navigation CSS rules used in CSSMenu top + 2 columns Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('7', 'Module News', 'div#news {\n/* margin for the entire div surrounding the news items */\n	margin: 2em 0 1em 1em;\n/* border set here */\n	border: 1px solid #909799;\n/* sets it off from surroundings */\n	background: #f5f5f5;\n}\ndiv#news h2 {\n	line-height: 2em;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\n	color: #f5f5f5;\n	border: none\n}\n.NewsSummary {\n/* padding for the news article summary */\n	padding: 0.5em 0.5em 1em;\n/* margin to the bottom of the news article summary */\n	margin: 0 0.5em 1em 0.5em;\n	border-bottom: 1px solid #ccc;\n}\n.NewsSummaryPostdate {\n/* smaller than default text size */\n	font-size: 90%;\n/* bold to set it off from text */\n	font-weight: bold;\n}\n.NewsSummaryLink {\n/* bold to set it off from text */\n	font-weight: bold;\n/* little more room at top */\n	padding-top: 0.2em;\n}\n.NewsSummaryCategory {\n/* italic to set it off from text */\n	font-style: italic;\n	margin: 5px 0;\n}\n.NewsSummaryAuthor {\n/* italic to set it off from text */\n	font-style: italic;\n	padding-bottom: 0.5em;\n}\n.NewsSummarySummary, .NewsSummaryContent {\n/* larger than default text */\n	line-height: 140%;\n}\n.NewsSummaryMorelink {\n	padding-top: 0.5em;\n}\n#NewsPostDetailDate {\n/* smaller text */\n	font-size: 90%;\n	margin-bottom: 5px;\n/* bold to set it off from text */\n	font-weight: bold;\n}\n#NewsPostDetailSummary {\n/* larger than default text */\n	line-height: 150%;\n}\n#NewsPostDetailCategory {\n/* italic to set it off from text */\n	font-style: italic;\n	border-top: 1px solid #ccc;\n	margin-top: 0.5em;\n	padding: 0.2em 0;\n}\n#NewsPostDetailContent {\n	margin-bottom: 15px;\n/* larger than default text */\n	line-height: 150%;\n}\n#NewsPostDetailAuthor {\n	padding-bottom: 1.5em;\n/* italic to set it off from text */\n	font-style: italic;\n}\n/* more divs, left unstyled, just so you know the IDs of them */ \n#NewsPostDetailTitle {\n}\n#NewsPostDetailHorizRule {\n}\n#NewsPostDetailPrintLink {\n}\n#NewsPostDetailReturnLink {\n}\ndiv#news ul li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}', 'Default News module CSS rules used in multiple Designs', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('8', 'Navigation Simple - Horizontal', '/********************MENU*********************/\n/* hack for IE6 */\n* html div#menu_horiz {\n/* hide ie/mac \\*/\n	height: 1%;\n/* end hide */\n}\ndiv#menu_horiz {\n/* background color for the entire menu row */\n	background-color: #243135;\n/* insure full width */\n	width: 100%;\n/* set height */\n	height: 49px;\n	margin: 0;\n}\ndiv#menu_horiz ul {\n/* remove any default bullets */\n	list-style-type: none;\n	margin: 0;\n/* pushes the menu div up to give room above for background color to show */\n	padding-top: 10px;\n/* keeps the first menu item off the left side */\n	padding-left: 10px;\n}\n/* menu list items */\ndiv#menu_horiz li {\n/* makes the list horizontal */\n	float: left;\n/* remove any default bullets */\n	list-style: none;\n/* still no margin */\n	margin: 0;\n}\n/* the links, that is each list item */\ndiv#menu_horiz a, div#menu_horiz h3 span, div#menu_horiz .sectionheader span {\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\n	padding: 12px 15px 15px 0px;\n/* still no margin */\n	margin: 0;\n/* removes default underline */\n	text-decoration: none;\n/* default link color */\n	color: #FFF;\n/* makes it hold a shape, IE has problems with this, fixed above */\n	display: block;\n}\n/* hover state for links */\ndiv#menu_horiz li a:hover {;\n/* set your image here, dark grey image with white text set above*/\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left -50px;\n}\ndiv#menu_horiz a span {\n/* compensates for no left padding on the "a" */\n	padding-left: 15px;\n}\ndiv#menu_horiz li.parent a span {\n/* no left padding on the "a" we can set it here, it lets us use the span for an image */\n	padding-left: 20px;\n/* set your image here, down arrow to note it has children, left side of text */\n	background: url([[root_url]]/uploads/ngrey/active.gif) no-repeat 0.3em center;\n}\ndiv#menu_horiz li.parent a:hover span {\n	padding-left: 20px;\n/* hover replaces default with right arrow image */\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.3em center;\n}\ndiv#menu_horiz li.menuactive a span {\n	padding-left: 20px;\n/* menuactive replaces default with right arrow image */\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat 0.5em center;\n	color: #000;\n}\ndiv#menu_horiz li.currentpage h3 span {\n	padding-left: 12px;\n/* menuactive replaces default with right arrow image */\n	background: url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\n	color: #000;\n}\ndiv#menu_horiz .sectionheader span {\n/* compensates for no left padding on the "sectionheader" */\n	padding-left: 15px;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_horiz li.menuactive, div#menu_horiz li.menuactive a:hover {\n/* set your image here, light image with #000/black text set below*/\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\n	color: #000;\n}', 'Navigation CSS rules used in Top simple navigation + left subnavigation + 1 column and Left simple navigation + 1 column Designs', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('9', 'Layout Top menu + 2 columns', '/* browsers interpret margin and padding a little differently, we\'ll remove all default padding and margins and set them later on */\n* {\n	margin: 0;\n	padding: 0;\n}\n/*Set initial font styles*/\nbody {\n	text-align: left;\n	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;\n	font-size: 75.01%;\n	line-height: 1em;\n}\n/*set font size for all divs, this overrides some body rules*/\ndiv {\n	font-size: 1em;\n}\n/*if img is inside "a" it would have borders, we don\'t want that*/\nimg {\n	border: 0;\n}\n/*default link styles*/\n/* set all links to have underline and bluish color */\na, a:link a:active {\n	text-decoration: underline;\n/* css validation will give a warning if color is set without background color. this will explicitly tell this element to inherit bg colour from parent element */\n	background-color: inherit;\n	color: #18507C;\n}\na:visited {\n	text-decoration: underline;\n	background-color: inherit;\n	color: #18507C;\n/* a different color can be used for visited links */\n}\n/* remove underline on hover and change color */\na:hover {\n	text-decoration: none;\n	background-color: inherit;\n	color: #385C72;\n}\n/*****************basic layout *****************/\nbody {\n	margin: 0;\n	padding: 0;\n/* default text color for entire site*/\n	color: #333;\n/* you can set your own image and background color here */\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/body.png) repeat-x left top;\n}\ndiv#pagewrapper {\n/* min max width, IE wont understand these, so we will use java script magic in the <head> */\n	max-width: 99em;\n	min-width: 60em;\n/* now that width is set this centers wrapper */\n	margin: 0 auto;\n	background-color: #fefefe;\n	color: black;\n}\n/* header, we will hide h1 a text and replace it with an image, we assign a height for it so the image wont cut off */\ndiv#header {\n/* adjust according your image size */\n	height: 100px;\n	margin: 0;\n	padding: 0;\n	/* you can set your own image here, will go behind h1 a image */\n	background: #f4f4f4 url([[root_url]]/uploads/ngrey/bg_banner.png) repeat-x left top;\n/* border just the bottom */\n	border-bottom: 1px solid #D9E2E6;\n}\ndiv#header h1 a {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\n/* this will make the "a" link a solid shape */\n	display: block;\n/* adjust according your image size */\n	height: 100px;\n/* this hides the text */\n	text-indent: -999em;\n/* old firefox would have shown underline for the link, this explicitly hides it */\n	text-decoration: none;\n}\ndiv#header h1 {\n	margin: 0;\n	padding: 0;\n/*these keep IE6 from pushing the header to more than the set size*/\n	line-height: 0;\n	font-size: 0;\n/* this will keep IE6 from flickering on hover */\n	background: url([[root_url]]/uploads/ngrey/logoCMS.png) no-repeat left top;\n}\ndiv#header h2 {\n/* this is where the site name is */\n	float: right;\n	line-height: 1.2em;\n/* this keeps IE6 from not showing the whole text */\n	font-size: 1.5em;\n/* keeps the size uniform */\n	margin: 35px 65px 0px 0px;\n/* adjust according your text size */\n	color: #f4f4f4;\n}\ndiv.crbk {\n/* sets all to 0 */\n	margin: 0;\n	padding: 0;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv.breadcrumbs {\n/* CSS short hand rule first value is top then right, bottom and left */\n	padding: 1em 0em 1em 1em;\n/* its good to set font sizes to be relative, this way viewer can change his/her font size */\n	font-size: 90%;\n/* css shorthand rule will be opened to be "0px 0px 0px 0px" */\n	margin: 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainleftup.gif) no-repeat left bottom;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\ndiv#search {\n/* position for the search box */\n	float: right;\n/* enough width for the search input box */\n	width: 27em;\n	text-align: right;\n	padding: 0.5em 0 0.2em 0;\n	margin: 0 1em;\n}\n/* a class for Submit button for the search input box */\ninput.search-button {\n	border: none;\n	height: 22px;\n	width: 53px;\n	margin-left: 5px;\n	padding: 0px 2px 2px 0px;\n/* makes the hover cursor show, you can set your own cursor here */\n	cursor: pointer;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/search.gif) no-repeat center center;\n}\ndiv#content {\n/* some air above and under menu and content */\n	margin: 1.5em auto 2em 0;\n	padding: 0px;\n}\n/* this gets all the outside calls that were used on the div#main before  */\ndiv.back1 {\n/* this will give room for sidebar to be on the left side, make sure this number is bigger than sidebar width */\n	margin-left: 29%;\n/* and some air on the right */\n	margin-right: 2%;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\n}\n/* this is an IE6 hack, you may see these through out the CSS */\n* html div.back1 {\n/* unlike other browser IE6 needs float:right and a width */\n	float: right;\n	width: 69%;\n/* and we take this out or it will stop at the bottom  */\n	margin-left: 0%;\n/* and some air on the right */\n	margin-right: 10px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt1.gif) no-repeat right top;\n}\ndiv.back2 {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainleft1.gif) no-repeat left top;\n}\ndiv.back3 {\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wbtmleft.gif) no-repeat left bottom;\n}\ndiv#main {\n/* this is the last inside div so we set the space inside it to keep all content away from the edges of images/box */\n	padding: 10px 15px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/rtup.gif) no-repeat right bottom;\n}\ndiv#sidebar {\n/* set sidebar left. Change to right, float: right; instead, but you will need to change the margins. */\n	float: left;\n/* sidebar width, if you change this change div.back and/or div.back1 margins */\n	width: 26%;\n/* FIX IE double margin bug */\n	display: inline;\n/* the 20px is on the bottom, insures space above footer if longer than content */\n	margin: 0px 0px 20px;\n	padding: 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/mainrt.gif) no-repeat right top;\n}\ndiv#sidebarb {\n	padding: 10px 15px 10px 20px;\n/* this one is for sidebar with content and no menu */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv#sidebarb div#news {\n/* less margin surrounding the news, sidebarb has enough */\n	margin: 2em 0 1em 0em;\n}\ndiv#sidebara {\n	padding: 10px 15px 15px 0px;\n/* this one is for sidebar with menu and no content */\n	background: url([[root_url]]/uploads/ngrey/mainrtup.gif) no-repeat right bottom;\n}\ndiv.footback {\n/* keep footer below content and menu */\n	clear: both;\n/* this sets 10px on right to let the right image show, the balance 10px left on next div */\n	padding: 0px 10px 0px 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wfootrt.gif) no-repeat right top;\n}\ndiv#footer {\n/* this sets 10px on left to balance 10px right on last div */\n	padding: 0px 0px 0px 10px;\n/* color of text, the link color is set below */\n	color: #595959;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/wtopleft.gif) no-repeat left top;\n}\ndiv.leftfoot {\n	float: left;\n	width: 30%;\n	margin-left: 20px\n}\ndiv#footer p {\n/* sets different font size from default */\n	font-size: 0.8em;\n/* some air for footer */\n	padding: 1.5em;\n/* centered text */\n	text-align: center;\n	margin: 0;\n}\ndiv#footer p a {\n/* footer link would be same color as default we want it same as footer text */\n	color: #595959;\n}\n/* as we hid all hr for accessibility we create new hr with div class="hr" element */\ndiv.hr {\n	height: 1px;\n	padding: 1em;\n	border-bottom: 1px dotted black;\n	margin: 1em;\n}\n/* relational links under content */\ndiv.left49 {\n/* combined percentages of left+right equaling 100%  might lead to rounding error on some browser */\n	width: 70%;\n}\ndiv.right49 {\n	float: right;\n	width: 29%;\n/* set right to keep text on right */\n	text-align: right;\n}\n/********************CONTENT STYLING*********************/\n/* HEADINGS */\ndiv#content h1 {\n/* font size for h1 */\n	font-size: 2em;\n	line-height: 1em;\n	margin: 0;\n}\ndiv#content h2 {\n	color: #294B5F;\n/* font size for h2 the higher the h number the smaller the font size, most times */\n	font-size: 1.5em;\n	text-align: left;\n/* some air around the text */\n	padding-left: 0.5em;\n	padding-bottom: 1px;\n/* set borders around header */\n	border-bottom: 1px solid #899092;\n	border-left: 1.1em solid #899092;\n/* a larder than h1 line height */\n	line-height: 1.5em;\n/* and some air under the border */\n	margin: 0 0 0.5em 0;\n}\ndiv#content h3 {\n	color: #294B5F;\n	font-size: 1.3em;\n	line-height: 1.3em;\n	margin: 0 0 0.5em 0;\n}\ndiv#content h4 {\n	color: #294B5F;\n	font-size: 1.2em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\ndiv#content h5 {\n	color: #294B5F;\n	font-size: 1.1em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\nh6 {\n	color: #294B5F;\n	font-size: 1em;\n	line-height: 1.3em;\n	margin: 0 0 0.25em 0;\n}\n/* END HEADINGS */\n/* TEXT */\np {\n/* default p font size, this is set different in some other divs */\n	font-size: 1em;\n/* some air around p elements */\n	margin: 0 0 1.5em 0;\n	line-height: 1.4em;\n	padding: 0;\n}\nblockquote {\n	border-left: 10px solid #ddd;\n	margin-left: 10px;\n}\nstrong, b {\n/* explicit setting for these */\n	font-weight: bold;\n}\nem, i {\n/* explicit setting for these */\n	font-style: italic;\n}\n/* Wrapping text in <code> tags. Makes CSS not validate */\ncode, pre {\n/* css-3 */\n	white-space: pre-wrap;\n/* Mozilla, since 1999 */\n	white-space: -moz-pre-wrap;\n/* Opera 4-6 */\n	white-space: -pre-wrap;\n/* Opera 7 */\n	white-space: -o-pre-wrap;\n/* Internet Explorer 5.5+ */\n	word-wrap: break-word;\n	font-family: "Courier New", Courier, monospace;\n	font-size: 1em;\n}\npre {\n/* black border for pre blocks */\n	border: 1px solid #000;\n/* set different from surroundings to stand out */\n	background-color: #ddd;\n	margin: 0 1em 1em 1em;\n	padding: 0.5em;\n	line-height: 1.5em;\n	font-size: 90%;\n}\n/* Separating the divs on the template explanation page */\ndiv.templatecode {\n	margin: 0 0 2.5em;\n}\n/* END TEXT */\n/* LISTS */\n/* lists in content need some margins to look nice */\ndiv#main ul,\ndiv#main ol,\ndiv#main dl {\n	font-size: 1.0em;\n	line-height: 1.4em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul li,\ndiv#main ol li {\n	margin: 0 0 0.25em 3em;\n}\n/* definition lists topics on bold */\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\n/* END LISTS */', 'Navigation CSS rules used in CSSMenu top + 2 columns, ShadowMenu Tab + 2 columns and Top simple navigation + left subnavigation + 1 column Designs', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('10', 'Navigation Simple - Vertical', '/******************** MENU *********************/\n#menu_vert {\n	margin: 0;\n	padding: 0;\n}\n#menu_vert ul {\n/* remove any bullets */\n	list-style: none;\n/* margin/padding set in li */\n	margin: 0px;\n	padding: 0px;\n}\n#menu_vert ul ul {\n	margin: 0;\n/* padding right sets second level li in on right from first li */\n	padding: 0px 5px 0px 0px;\n/* replaces bottom of li.menuactive menuparent, looks like li below it, set in 5px more, is sitting on top of it */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -4px;\n}\n#menu_vert li {\n/* remove any bullets */\n	list-style: none;\n/* negative bottom margin pulls them together, images look like one border between */\n	margin: 0px 0px -1px;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#menu_vert li.currentpage {\n	padding: 0px 0px 3px 0px;\n}\n#menu_vert li.menuactive {\n	margin: 0;\n	padding: 0px;\n/* replaced by image in ul ul */\n	background: none;\n}\n#menu_vert li.menuactive ul {\n	margin: 0;\n}\n#menu_vert li.activeparent {\n	margin: 0;\n	padding: 0px;\n}\n/* fix stupid IE6 bug with display:block; */\n* html #menu_vert li {\n	height: 1%;\n}\n* html #menu_vert li a {\n	height: 1%;\n}\n* html #menu_vert li hr {\n	height: 1%;\n}\n/** end fix **/\n/* first level links */\ndiv#menu_vert a {\n/* IE6 has problems with this, fixed above */\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.3em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #18507C;\n/* Fixes IE7 whitespace bug */\n	min-height: 1em;\n/* no underline for links */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level links, more padding and smaller font */\ndiv#menu_vert ul ul a {\n	font-size: 90%;\n	padding: 0.8em 0.3em 0.5em 2.8em;\n}\n/* third level links, more padding */\ndiv#menu_vert ul ul ul a {\n	padding: 0.5em 0.3em 0.3em 3em;\n}\n/* hover state for all links */\ndiv#menu_vert a:hover {\n	background-color: transparent;\n	color: #595959;\n	text-decoration: underline;\n}\ndiv#menu_vert a.activeparent:hover {\n	color: #595959;\n}\n/* active parent, that is the first level parent of a child page that is the current page */\ndiv#menu_vert li.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right -65px;\n/* white to contrast with background image */\n	color: #fff;\n}\ndiv#menu_vert li.activeparent a.activeparent {\n/* you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* to contrast with background image */\n	color: #000;\n}\ndiv#menu_vert li a.parent {\n/* takes left padding out so span image has room on left */\n	padding-left: 0em;\n}\ndiv#menu_vert ul ul li a.parent {\n/* increased padding on left offsets it from one above */\n	padding-left: 0.9em;\n}\ndiv#menu_vert li a.parent span {\n	display: block;\n	margin: 0;\n/* adds left padding taken out of "a.parent" */\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points down, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/active.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.parent:hover {\n/* removes underline hover effect */\n	text-decoration: none;\n}\ndiv#menu_vert li a.parent:hover span {\n	display: block;\n	margin: 0;\n	padding-left: 1.5em;\n/* arrow on left for pages with children, points right for hover, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent {\n/* sets it in a little more than a.parent */\n	padding-left: 0.35em;\n}\ndiv#menu_vert ul ul li a.menuactive.menuparent {\n/* sets it in a little more on next level */\n	padding-left: 0.99em;\n}\ndiv#menu_vert li a.menuactive.menuparent span {\n	display: block;\n	margin: 0;\n/* to contrast with non active pages */\n	font-weight: bold;\n	padding-left: 1.5em;\n/* arrow on left for active pages with children, points right, you can set your own image here */\n	background: transparent url([[root_url]]/uploads/ngrey/parent.png) no-repeat 2px center;\n}\ndiv#menu_vert li a.menuactive.menuparent:hover {\n	text-decoration: none;\n	color: #18507C;\n}\ndiv#menu_vert ul ul li a.activeparent {\n	color: #fff;\n}\n/* current pages in the default Menu Manager template are unclickable. This is for current page on first level */\ndiv#menu_vert ul h3 {\n	display: block;\n/* some air for it */\n	padding: 0.8em 0.5em 0.5em 1.5em;\n/* this will be link color for all levels */\n	color: #000;\n/* instead of the normal font size for <h3> */\n	font-size: 1em;\n/* as <h3> normally has some margin by default */\n	margin: 0;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\n/* next level current pages, more padding, smaller font and no background color or bottom border */\ndiv#menu_vert ul ul h3 {\n	font-size: 90%;\n	padding: 0.8em 0.5em 0.5em 2.8em;\n/* you can set your own image here, same as "a" */\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	color: #000;\n}\n/* current page on third level, more padding */\ndiv#menu_vert ul ul ul h3 {\n	padding: 0.6em 0.5em 0.2em 3em;\n}\n/* BIG NOTE: I didn\'\'t do anything to these, never tested */\n/* section header */\ndiv#menu_vert li.sectionheader {\n	border-right: none;\n	padding: 0.8em 0.5em 0.5em 1.5em;\n	background: transparent url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n	line-height: 1em;\n	margin: 0;\n        color: #18507C;\n        cursor:text;\n}\n/* separator */\ndiv#menu_vert .separator {\n	height: 1px !important;\n	margin-top: -1px;\n	margin-bottom: 0;\n	-padding: 2px 0 2px 0;\n	background-color: #000;\n	overflow: hidden !important;\n	line-height: 1px !important;\n	font-size: 1px;\n/* for ie */\n}\ndiv#menu_vert li.separator hr {\n	display: none;\n/* this is for accessibility */\n}', 'Navigation CSS rules used in Left simple navigation + 1 column and Top simple navigation + left subnavigation + 1 column Designs', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('11', 'Navigation ShadowMenu - Horizontal', '/* by Alexander Endresen and mark */\n#menu_vert {\n/* no margin/padding so it fills the whole div */\n	margin: 0;\n	padding: 0;\n}\n.clearb {\n/* needed for some browsers */\n	clear: both;\n}\n#menuwrapper {\n/* set the background color for the menu here */\n	background-color: #243135;\n/* IE6 Hack */\n	height: 1%;\n	width: auto;\n/* one border at the top */\n	border-top: 1px solid #3F565C;\n	margin: 0;\n	padding: 0;\n}\nul#primary-nav {\n	list-style-type: none;\n	margin: 0px;\n	padding-top: 10px;\n	padding-left: 10px;\n}\n#primary-nav ul {\n/* remove any default bullets */\n	list-style-type: none;\n/* sets width of second level ul to background image */\n	width: 210px;\n	margin: 0px;\n	padding: 0px;\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\n	position: absolute;\n/* top being the bottom of the li it comes out of */\n	top: auto;\n/* keeps it hidden till hover event */\n	display: none;\n/* room at top for li so image top shows correct */\n	padding-top: 9px;\n/* set your image here, tall enough for the ul */\n	background: url([[root_url]]/uploads/ngrey/ultopup.png) no-repeat left top;\n}\n/* IE6 hacks on the above code */\n* html #primary-nav ul {\n	padding-top: 13px;\n	background: url([[root_url]]/uploads/ngrey/ultopup.gif) no-repeat left top;\n}\n#primary-nav ul ul {\n/* insures no top margins */\n	margin-top: 0px;\n/* pulls the last ul back over the preceding ul */\n	margin-left: -1px;\n/* keeps the left side of this ul on the right side of the preceding ul */\n	left: 100%;\n/* negative margin pulls the left centered in li next to it */\n	top: -3px;\n/* set your image here, tall enough for the ul, this is the left arrow for third level ul */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\n}\n/* IE6 hacks on the above code */\n* html #primary-nav ul ul {\n	margin-top: 0px;\n	padding-left: 5px;\n	left: 100%;\n	top: -7px;\n/* IE6 gets gif as it can\'\'t handle transparent png */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat right top;\n}\n#primary-nav li {\n/* a little space to the left of each top level menu item */\n	margin-left: 5px;\n/* floating left will set menu items to line up left to right else they will stack top to bottom */\n	float: left;\n}\n#primary-nav li li {\n/* a little more space to the left of each menu item */\n	margin-left: 8px;\n/* keeps them tight to the one above, no missed hovers */\n	margin-top: -1px;\n/* removes the left float set in first li so these will stack from top down */\n	float: none;\n/* relative to the ul they are in */\n	position: relative;\n}\n/* IE6 hacks on the above code */\n* html #primary-nav li li {\n	margin-left: 6px;\n/* helps hold it inside the ul */\n	width: 171px;\n}\nul#primary-nav li a {\n/* specific font size, this could be larger or smaller than default font size */\n	font-size: 1em;\n/* make sure we keep the font normal */\n	font-weight: normal;\n/* set default link colors */\n	color: #fff;\n/* doing tab menus require a bit different padding, this will give room on right for image to show, adjust to width of your image */\n	padding: 0px 11px 0px 0px;\n/* makes it hold a shape */\n	display: block;\n/* remove default "a" underline */\n	text-decoration: none;\n}\nul#primary-nav li a span {\n/* takes normal "a" padding minus some for right image */\n	padding: 12px 4px 12px 15px;\n/* makes it hold a shape */\n	display: block;\n}\nul#primary-nav li a:hover {\n/* kind of obvious */\n	background-color: transparent;\n}\nul#primary-nav li {\n/* set your image here */\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right -51px;\n}\nul#primary-nav li span {\n/* set your image here */\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left -51px;\n/* set text color here also to insure color */\n	color: #fff;\n/* just to be sure */\n	font-weight: normal;\n}\nul#primary-nav li li {\n/* remove any image set in first level li */\n	background:  none;\n}\nul#primary-nav li li span {\n/* remove any image set in first level li span */\n	background:  none;\n/* set text color here also to insure color */\n	color: #fff;\n/* just to be sure */\n	font-weight: normal;\n}\nul#primary-nav li:hover,\nul#primary-nav li.menuh,\nul#primary-nav li.menuparenth {\n/* set hover image, right side */\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\n}\nul#primary-nav li:hover span,\nul#primary-nav li.menuh span,\nul#primary-nav li.menuparenth span {\n/* set hover image, left side */\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\n/* change text color on hover */\n	color: #000;\n	font-weight: normal;\n}\n/* IE6 hacks, the JS used for hover effect in IE6 puts class menuh on li, unless they have a class then just an "h" as seen above and below */\nul#primary-nav li li.menuh {\n	background:  none;\n	font-weight: normal;\n}\n/* IE6 hacks */\nul#primary-nav li.menuparenth li span {\n	background:  none;\n	color: #000;\n	font-weight: normal;\n}\n/* IE6 hacks */\nul#primary-nav li.menuparenth li.menuparent span {\n/* gif for IE6, as it can\'\'t handle transparent png */\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\n	color: #000\n}\n/* IE6 hacks */\nul#primary-nav li.menuparenth li.menuh span {\n	background:  none;\n	color: #FFF;\n	font-weight: normal;\n}\n/* IE6 hacks */\nul#primary-nav li.menuparenth li.menuparenth {\n	background:  none;\n	color: #FFF;\n	font-weight: normal;\n}\nul#primary-nav li.menuactive a {\n/* set your image here for active tab right */\n	background:  url([[root_url]]/uploads/ngrey/navrttest.gif) no-repeat right 0px;\n}\nul#primary-nav li a.menuactive span {\n/* set your image here for active tab left */\n	background:  url([[root_url]]/uploads/ngrey/navlefttest.gif) repeat-x left 0px;\n/* non active is #FFF/white, we need #000/black to contrast with light background */\n	color: #000;\n/* bold to set it off from non active */\n	font-weight: bold;\n}\n#primary-nav li li a {\n/* second level padding, no image and not as big */\n	padding: 5px 10px;\n/* to keep it within li */\n	width: 165px;\n/* space between them */\n	margin: 5px;\n	background: none;\n}\n/* IE6 hacks to above code */\n* html #primary-nav li li a {\n	padding: 5px 10px;\n	width: 165px;\n	margin: 0px;\n	color: #000;\n}\n#primary-nav li li:hover {\n/* remove image set in first level */\n	background: none;\n}\n#primary-nav li li a:hover {\n/* set different image than first level */\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\n/* we need #FFF/white to contrast with dark background */\n	color: #FFF;\n}\n#primary-nav li.menuparent li a:hover span {\n/* insures text color */\n	color: #FFF;\n}\nul#primary-nav li:hover li a span {\n/* first level is #FFF/white, we need #000/black to contrast with light background */\n	color: #000;\n/* just to insure normal */\n	font-weight: normal;\n}\n#primary-nav li li.menuactive a.menuactive, #primary-nav li li.menuactive a.menuactive:hover {\n/* set your image here, lighter than hover */\n	background:  url([[root_url]]/uploads/ngrey/nav.png) repeat-x left 0px;\n/* non active is #FFF/white, we need #000/black to contrast with light background */\n	color: #000;\n}\n#primary-nav li li.menuactive a.menuactive span {\n/* insures text color */\n	color: #000\n}\n#primary-nav li li.menuactive a.menuactive:hover span {\n/* insures text color */\n	color: #000;\n}\n/* IE6 hacks to above code */\n#primary-nav li li.menuparenth a.menuparent span {\n/* right arrow for menu parent, IE6 gif */\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\n	color: #000\n}\n/* IE6 hacks to above code */\n#primary-nav li li.menuparenth a.menuparent:hover span {\n	color: #FFF\n}\n#primary-nav li li.menuparent a.menuparent span {\n/* right arrow for parent item */\n	background:  url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\n}\n#primary-nav li.menuactive li a:hover span {\n/* black text */\n	color: #000\n}\nul#primary-nav li li a.menuactive  span {\n/* remove image set in first level */\n	background:  none;\n	font-weight: normal;\n}\n#primary-nav li.menuactive li a {\n/* second level active link color */\n	color: #0587A9;\n	text-decoration: none;\n	background: none;\n}\n#primary-nav li.menuactive li a:hover {\n/* dark image for hover */\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\n}\n#primary-nav li.menuactive li a:hover span {\n/* white text to contrast with dark background image on hover */\n	color: #FFF;\n}\nul#primary-nav li:hover li a span, ul#primary-nav li.menuparenth li a span {\n	padding: 0px;\n	background:  none;\n}\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\n#primary-nav ul li.separator, #primary-nav .separator:hover {\n/* set same as ul */\n	width: 210px;\n/* height of image */\n	height: 9px;\n/* negative margin pulls it down to cover ul image */\n	margin: 0px 0px -8px;\n/* set your image here */\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\n}\n/* same as above for next level to insure it shows correct */\n#primary-nav ul ul li.separator, #primary-nav ul ul li.separator:hover {\n	height: 9px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\n}\n/* IE6 hacks */\n* html #primary-nav ul li.separator {\n	height: 2px;\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\n}\n/* IE6 hacks */\n* html #primary-nav ul li.separatorh {\n	margin: 0px 0px -8px;\n	height: 2px;\n	background: url([[root_url]]/uploads/ngrey/ultop.gif) no-repeat left top;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul ul ul,\n*/\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul {\n	display: none;\n}\n/* for fourth level add\n#primary-nav ul ul ul li:hover ul,\n#primary-nav ul ul ul li.menuparenth ul,\n*/\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}', NULL, 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('12', 'Navigation ShadowMenu - Vertical', '/* Vertical menu for the CMS CSS Menu Module */\n/* by Alexander Endresen and mark */\n#menuwrapper {\n/* just smaller than it\'s containing div */\n	width: 95%;\n	margin-left: 0px;\n/* room at bottom */\n	margin-bottom: 10px;\n}\n/* Unless you know what you do, do not touch this */\n#primary-nav, #primary-nav ul {\n/* remove any default bullets */\n	list-style: none;\n	margin: 0px;\n	padding: 0px;\n/* make sure it fills out */\n	width: 100%;\n/* just a little bump */\n	margin-left: 1px;\n}\n#primary-nav li {\n/* negative bottom margin pulls them together, images look like one border between */\n	margin-bottom: -1px;\n/* keeps within it\'s container */\n	position: relative;\n/* bottom padding pushes "a" up enough to show our image */\n	padding: 0px 0px 4px 0px;\n/* you can set your own image here */\n	background: url([[root_url]]/uploads/ngrey/liup.gif) no-repeat right bottom;\n}\n#primary-nav li li {\n/* you can set your width here, if no width or set auto it will only be as wide as the text in it  */\n	width: 190px;\n/* changes padding inherited from first level */\n	padding: 0px 10px;\n/* removes first level li image */\n	background-image: none;\n}\n/* Styling the basic appearance of the menu "a" elements */\nul#primary-nav li a {\n/* specific font size, this could be larger or smaller than default font size */\n	font-size: 1em;\n/* make sure we keep the font normal */\n	font-weight: normal;\n/* set default link colors */\n	color: #595959;\n/* pushes li out from the text, sort of like making links a certain size, if you give them a set width and/or height you may limit you ability to have as much text as you need */\n	padding: 0.8em 0.5em 0.5em 0.5em;\n/* makes it hold a shape */\n	display: block;\n/* removes underline from default link setting */\n	text-decoration: none;\n/* you can set your own image here this is tall enough to cover text heavy links */\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n}\nul#primary-nav a span {\n/* makes it hold a shape */\n	display: block;\n/* pushes text to right */\n	padding-left: 1.5em;\n}\nul#primary-nav li a:hover {\n/* stops image flicker in some browsers */\n	background: url([[root_url]]/uploads/ngrey/libk.gif) no-repeat right top;\n/* changes text color on hover */\n	color: #899092\n}\nul#primary-nav li li a:hover {\n/* you can set your own image here, second level "a" */\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\n/* contrast color to image behind it */\n	color: #FFF\n}\nul#primary-nav li a.menuactive {\n/* black and bold to set it off from non active */\n	color: #000;\n	font-weight: bold;\n}\nul#primary-nav li ul a {\n/* insure alignment */\n	text-align: left;\n	margin: 0px;\n/* relative to it\'s container */\n	position: relative;\n/* even padding all 4 sides */\n	padding: 6px;\n/* make sure we keep the font normal */\n	font-weight: normal;\n/* set default link colors from here on */\n	color: #000;\n/* remove any background that may have been set in level above */\n	background: none;\n}\nul#primary-nav li ul {\n/* remove any default bullets */\n	list-style-type: none;\n/* sets width of second level ul to background image */\n	width: 209px;\n	height: auto;\n/* negative margin pulls it over the parent ul */\n	margin: 0px 0px 0px -2px;\n/* top padding gives room for image shadow and pushes li down into image */\n	padding: 10px 0px 0px;\n/* make the ul stay in place so when we hover it lets the drops go over the content instead of displacing it */\n	position: absolute;\n/* keeps the left side of this ul on the right side of the preceding ul */\n	left: 100%;\n/* negative top pulls up so left arrow centered in li next to it */\n	top: -2px;\n	display: none;\n/* set your image here, tall enough for the ul, this is the left arrow for second ul and on */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\n}\n/* a lot of the same as above, minor changes */\nul#primary-nav li ul ul {\n	list-style-type: none;\n/* bit more negative left margin */\n	margin: 0px 0px 0px -8px;\n/* you can call a property twice but not a property:\'value\', this flat lines it */\n	padding: 0px;\n/* now we just change one with \'property\'-top:value */\n	padding-top: 10px;\n	position: absolute;\n	width: 209px;\n	height: auto;\n/* negative top pulls up so left arrow centered in li next to it, more on 3rd ul covers default drop increase */\n	top: -5px;\n	left: 100%;\n	display: none;\n/* set your image here */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.png) no-repeat left top;\n}\n* html ul#primary-nav li ul {\n/* gif for IE6, as it can\'t handle transparent png */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\n}\n* html ul#primary-nav li ul ul {\n/* gif for IE6, as it can\'t handle transparent png */\n	background: url([[root_url]]/uploads/ngrey/ultoprt.gif) no-repeat left top;\n}\n/* this is a special li type from the menu template, used to hold the bottom image for ul set above */\n#primary-nav ul li.separator, #primary-nav .separator:hover {\n/* set same as ul */\n	width: 209px;\n	padding: 0px;\n/* height of image */\n	height: 9px;\n/* negative margin pulls it down to cover ul image */\n	margin: 0px 0px -9px;\n/* set your image here */\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.png) no-repeat left bottom;\n}\n/* IE6 \'star html\' Hack */\n* html #primary-nav  li ul li.separator {\n	height: 2px;\n/* set your image here */\n	background: url([[root_url]]/uploads/ngrey/ulbtmrt.gif) no-repeat left bottom;\n}\n/* Fixes IE7 bug*/\n#primary-nav li, #primary-nav li.menuparent {\n	min-height: 1em;\n}\n/* Styling the basic apperance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li li.menuactive a.menuactive {\n/* contrast color to image behind it */\n	color: #FFF;\n/* not bold as text color and image behind it set it off from non active */\n	font-weight: normal;\n/* set your image here, dark grey image with white text set above*/\n	background:  url([[root_url]]/uploads/ngrey/darknav.png) repeat-x left center;\n}\n#primary-nav li.menuparent span {\n/* padding on left for image */\n	padding-left: 1.5em;\n/* down arrow to note it has children, left side of text */\n	background: url([[root_url]]/uploads/ngrey/active.png) no-repeat left center;\n}\n#primary-nav li.menuparent:hover li.menuparent span {\n/* remove left padding as image is on right side of text */\n	padding-left: 0;\n/* right arrow to note it has children, right side of text */\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat right center;\n}\n#primary-nav li.menuparenth li.menuparent span,\n#primary-nav li.menuparenth li.menuparenth span {\n/* same as above but this is for IE6, gif image as it can\'t handle transparent png */\n	padding-left: 0;\n	background: url([[root_url]]/uploads/ngrey/parent.gif) no-repeat right center;\n}\n#primary-nav li.menuparent:hover span,\n#primary-nav li.menuparent.menuactive span,\n#primary-nav li.menuparent.menuactiveh span,\n#primary-nav li.menuparenth span {\n/* right arrow on hover */\n	background: url([[root_url]]/uploads/ngrey/parent.png) no-repeat left center;\n}\n#primary-nav li li span,\n#primary-nav li.menuparent li span,\n#primary-nav li.menuparent:hover li span,\n#primary-nav li.menuparenth li span,\n#primary-nav li.menuparenth li.menuparenth li span,\n#primary-nav li.menuparent li.menuparent li span,\n#primary-nav li.menuparent li.menuparent:hover li span {\n/* removes any images set above unless it\'s a parent or active parent */\n	background:  none;\n	padding-left: 0px;\n}\n/* Styling the appearance of menu items on hover */\n#primary-nav li:hover li a,\n#primary-nav li.menuh li a,\n#primary-nav li.menuparenth li a,\n#primary-nav li.menuactiveh li a {\n/* removes any images set above unless it\'s a parent or active parent */\n	background:  none;\n	color: #000;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited, for fourth level add\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul ul ul,\n*/\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul {\n	display: none;\n}\n/* for fourth level add\n#primary-nav ul ul ul li:hover ul,\n#primary-nav ul ul ul li.menuparenth ul,\n*/\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hack, will cause the css to not validate */\n#primary-nav li, #primary-nav li.menuparenth {\n	_float: left;\n	_height: 1%;\n}\n#primary-nav li a {\n	_height: 1%;\n}\n/* BIG NOTE: I didn\'t do anything to these 2, never tested */\n#primary-nav li.sectionheader {\n	border-left: 1px solid #006699;\n	border-top: 1px solid #006699;\n	font-size: 130%;\n	font-weight: bold;\n	padding: 1.5em 0 0.8em 0.5em;\n	background-color: #fff;\n	margin: 0;\n	width: 100%;\n}\n/* separator */\n#primary-nav li hr.separator {\n	display: block;\n	height: 0.5em;\n	color: #abb0b6;\n	background-color: #abb0b6;\n	width: 100%;\n	border: 0;\n	margin: 0;\n	padding: 0;\n	border-top: 1px solid #006699;\n	border-right: 1px solid #006699;\n}', 'Navigation CSS rules used in ShadowMenu left + 1 column Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('13', 'Navigation FatFootMenu', '#footer ul {\n/* some margin is set in the footer padding */\n   margin: 0px;\n/* calling a specific side, left in this case */\n   margin-left: 5px;\n   padding: 0px;\n/* remove any default bullets, image used in li call */\n   list-style: none;\n}\n#footer ul li {\n/* remove any default bullets, image used for consistency */\n   list-style: none;\n/* float left to set first level li items across the top */\n   float:left;\n/* a little margin at top */\n   margin: 5px 0px 0px;\n/* padding all the way around */\n   padding: 5px;\n/* you can set your own image here, used for consistency */\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 10px;\n}\n#footer ul li a {\n/* this will make the "a" link a solid shape */\n   display:block;\n   margin: 2px 0px 4px;\n   padding: 0px 5px 5px 5px;\n}\n/* set h3 to look like "a" */\n#footer li h3 {\n   font-weight:normal;\n   font-size:100%;\n   margin: 2px 0px 2px 0px;\n   padding: 0px 5px 5px 5px;\n}\n/* set h3 to look like "a", less margin at this level */\n#footer li li h3 {\n   font-weight:normal;\n   font-size:100%;\n   margin: 0px;\n   padding: 0px 5px 5px 5px;\n}\n#footer ul li li {\n/* remove any default bullets, image used for consistency */\n   list-style: none;\n/* remove float so they line up under top li */\n   float:none;\n/* less margin/padding */\n   margin: 0px;\n   padding: 0px 0px 0px 5px;\n/* you can set your own image here, used for consistency */\n   background: url([[root_url]]/uploads/ngrey/dot.gif) no-repeat left 3px;\n}\n/* fix for IE6 */\n* html #footer ul li a {\n   margin: 2px 0px 0px;\n   padding: 0px 5px 5px 5px;\n}\n* html #footer ul li li a {\n   margin: 0px 0px 0px;\n   padding: 0px 5px 0px 5px;\n}\n/* End fix for IE6 */\n#footer ul ul {\n/* remove float so they line up under top li */\n   float:none;\n/* a little margin to offset it */\n   margin: 0px 0px 0px 8px;\n   padding: 0;\n}\n#footer ul ul ul {\n/* remove float so they line up under li above it */\n   float:none;\n/* a little margin to offset it */\n   margin: 0px 0px 0px 8px;\n   padding: 0;\n}', 'Footer navigation CSS rules used in CSSMenu left + 1 column, CSSMenu top + 2 columns, Left simple navigation + 1 column, ShadowMenu left + 1 column, ShadowMenu Tab + 2 columns and Top simple navigation + left subnavigation + 1 column', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('14', 'ncleanbluecore', '/*\n  @Nuno Costa [criacaoweb.net] Core CSS.\n  @Licensed under GPL and MIT.\n  @Status: Stable\n  @Version: 0.1-20090418\n  \n  @Contributors:\n  \n  --------------------------------------------------------------- \n*/\n/*----------- Global Containers ----------- */\n/* \n.core-wrap-100   =  width - 100% of Browser Fluid\n.core-wrap-960   =  width - 960px  - fixed\n.core-wrap-780   =  width - 780px  - fixed\n.custom-wrap-x   =  width -  custom   - declared in another css (your site css)\n*/\n.core-wrap-100 {\n	width: 100%;\n}\n.core-wrap-960 {\n	width: 960px;\n}\n.core-wrap-780 {\n	width: 780px;\n}\n.core-wrap-100,\n.core-wrap-960,\n.core-wrap-780,\n.custom-wrap-x {\n	margin-left: auto;\n	margin-right: auto;\n}\n/*----------- Global Float ----------- */\n.core-wrap-100  .core-float-left,\n.core-wrap-960  .core-float-left,\n.core-wrap-780  .core-float-left,\n.custom-wrap-x  .core-float-left {\n	float: left;\n	display: inline;\n}\n.core-wrap-100  .core-float-right,\n.core-wrap-960  .core-float-right,\n.core-wrap-780  .core-float-right,\n.custom-wrap-x  .core-float-right {\n	float: right;\n	display: inline;\n}\n/*----------- Global Center ----------- */\n.core-wrap-100   .core-center,\n.core-wrap-960   .core-center,\n.core-wrap-780   .core-center,\n.custom-wrap-x   .core-center {\n	margin-left: auto;\n	margin-right: auto;\n}', 'Grid CSS rules used in NCleanBlue Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('15', 'ncleanblueutils', '/*\n  @Nuno Costa [criacaoweb.net] Utils CSS.\n  @Licensed under GPL2 and MIT.\n  @Status: Stable\n  @Version: 0.1-20090418\n  \n  @Contributors:\n        -  http://meyerweb.com/eric/tools/css/reset/index.html \n  \n  --------------------------------------------------------------- \n*/\n/* From: http://meyerweb.com/eric/tools/css/reset/index.html  (Original) */\n/* v1.0 | 20080212 */\nhtml, body, div, span, applet, object, iframe,\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\na, abbr, acronym, address, big, cite, code,\ndel, dfn, em, font, img, ins, kbd, q, s, samp,\nsmall, strike, strong, sub, sup, tt, var,\nb, u, i, center,\ndl, dt, dd, ol, ul, li,\nfieldset, form, label, legend,\ntable, caption, tbody, tfoot, thead, tr, th, td {\n	margin: 0;\n	padding: 0;\n	border: 0;\n	outline: 0;\n	font-size: 100%;\n	vertical-align: baseline;\n	background: transparent;\n}\n/*\nStantby for nowbody {\n	line-height: 1;\n}\n*/\nol, ul {\n	list-style: none;\n}\nblockquote, q {\n	quotes: none;\n}\nblockquote:before,\nblockquote:after,\nq:before, q:after {\n	content: \'\';\n	content: none;\n}\n/* remember to define focus styles! */\n:focus {\n	outline: 0;\n}\n/* remember to highlight inserts somehow! */\nins {\n	text-decoration: none;\n}\ndel {\n	text-decoration: line-through;\n}\n/* tables still need \'cellspacing="0"\' in the markup */\ntable {\n	border-collapse: collapse;\n	border-spacing: 0;\n}\n/* ------- @Nuno Costa [criacaoweb.net] Utils CSS. ---------- */\n* {\n	font-weight: inherit;\n	font-style: inherit;\n	font-family: inherit;\n}\ndfn {\n	display: none;\n	overflow: hidden;\n}\n/* ----------- Clear Floated Elements ----------- */\nhtml body .util-clearb {\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	position: static;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n}\n/* ----------- Fix to Clear Floated Elements ----------- */\n.util-clearfix:after {\n	clear: both;\n	content: \'.\';\n	display: block;\n	visibility: hidden;\n	height: 0;\n}\n.util-clearfix {\n	display: inline-block;\n}\n* html .util-clearfix {\n	height: 1%;\n}\n.util-clearfix {\n	display: block;\n}', 'Reset and browser helper CSS style rules used in NCleanBlue Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('16', 'Layout NCleanBlue', '/*  \n@Nuno Costa [criacaoweb.net]\n@Since [cmsms 1.6]\n@Contributors: Mark and Dev-Team\n*/\nbody {\n/* default text for entire site */\n	font: normal 0.8em Tahoma, Verdana, Arial, Helvetica, sans-serif;\n/* default text color for entire site */\n	color: #3A3A36;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* Mask helper  for browsers ZOOM, Rezise and Decrease */\n#ncleanblue {\n/* set to width of viewport */\n	width: auto;\n/* you can set your own image and background color here */\n	background: #fff url([[root_url]]/uploads/NCleanBlue/bg__full.png) repeat-x scroll left top;\n}\n/* wiki style external links */\n/* external links will have "(external link)" text added, lets hide it */\na.external span {\n	position: absolute;\n	left: -5000px;\n	width: 4000px;\n}\na.external {\n/* make some room for the image, css shorthand rules, read: first top padding 0 then right padding 12px then bottom then right */\n	padding: 0 12px 0 0;\n}\n/* colors for external links */\na.external:link {\n	color: #679EBC;\n/* background image for the link to show wiki style arrow */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:visited {\n	color: #18507C;\n/* a different color can be used for visited external links */\n/* Set the last 0 to -100px to use that part of the external.gif image for different color for active links external.gif is actually 300px tall, we can use different positions of the image to simulate rollover image changes.*/\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% -100px;\n}\na.external:hover {\n	color: #18507C;\n/* Set the last 0 to -200px to use that part of the external.gif image for different color on hover */\n	background: url([[root_url]]/uploads/NCleanBlue/external.gif) no-repeat 100% 0;\n	background-color: inherit;\n}\n/* end wiki style external links */\n/* hr and anything with the class of accessibility is hidden with CSS from visual browsers */\n.accessibility, hr {\n/* absolute lets us put it outside the viewport with the indents, the rest is to clear all defaults */\n	position: absolute;\n	top: -9999em;\n	left: -9999em;\n	background: none;\n	border: 0;\n	clear: both;\n	display: block;\n	float: none;\n	font-size: 0;\n	margin: 0;\n	padding: 0;\n	overflow: hidden;\n	visibility: hidden;\n	width: 0;\n	height: 0;\n	border: none;\n}\n/* ------------ Standard  HTML elements and their default settings ------------ */\nb, strong{font-weight: bold;}i, em{	font-style: italic;}\np {\n	padding: 0;\n	margin-top: 0.5em;\n    margin-bottom: 1em;\n   text-align:left;\n}\nh1, h2, h3, h4, h5 {\n	line-height: 1.6em;\n	font-weight: normal;\n	width: auto;\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n}\n/*default link styles*/\na {\n	color: #679EBC;\n	text-decoration: none;\n	text-align: left;\n}\na:hover {\n	color: #3A6B85;\n}\na:active {\n	color: #3A6B85;\n}\na:visited {\n	color: #679EBC;\n}\ninput, textarea, select {\n	font-size: 0.95em;\n}\n/* ------------ Wrapper ------------ */\ndiv#pagewrapper {\n	font-size: 95%;\n	position: relative;\n	z-index: 1;\n}\n/* ------------ Header ------------ */\n#header {\n	height: 111px;\n	width: 960px;\n}\n#logo a {\n/* adjust according your image size */\n	height: 75px;\n	width: 215px;\n/* forces full link size */\n	display: block;\n/* this hides the text */\n	text-indent: -9999em;\n	margin-top: 0;\n	margin-left: 0;\n/* you can set your own image here, note size adjustments */\n	background: url([[root_url]]/uploads/NCleanBlue/logo.png) no-repeat left top;\n}\n/* ------------ Header - Search ------------ */\ndiv#search {\n	width: 190px;\n	height: 28px;\n	margin-top: 31px;\n	margin-right: 20px;\n}\ndiv#search label {\n	text-indent: -9999em;\n	height: 0pt;\n	width: 0pt;\n	display: none;\n}\ndiv#search input.search-input {\n/* specific size for image, your image may need these adjusted */\n	width: 143px;\n	height: 17px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* text color */\n	color: #999;\n/* padding of text */\n	padding: 7px 0px 4px 10px;\n	float: left;\n/* set all font properties at once, weight, size, family */\n	font: bold 0.9em Arial, Helvetica, sans-serif;\n/* left input image, set your own here */\n	background: url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat left top;\n}\ndiv#search input.search-button {\n/* specific size for image, your image may need these adjusted */\n	width: 37px;\n	height: 28px;\n/* removes default borders, allows use of image */\n	border-style: none;\n/* hides text, image has text */\n	text-indent: -9999em;\n	float: left;\n	margin: 0;\n/* provides positive hover effect */\n	cursor: pointer;\n/* removes default size/height */\n	font-size: 0px;\n	line-height: 0px;\n/* submit button image, set your own here */\n	background: transparent url([[root_url]]/uploads/NCleanBlue/search.png) no-repeat right top;\n}\n/* ------------ Content ------------ */\n#content {\n	width: auto;\n/* all text in #content will default align left, changed in other calls */\n	text-align: left;\n}\n#bar {\n	width: auto;\n	height: 40px;\n	padding-right: 1em;\n	padding-left: 1em;\n}\n.print {\n	margin-right: 75px;\n	margin-top: 10px;\n}\n#version {\n	width: 50px;\n	height: 31px;\n	position: absolute;\n	z-index: 5;\n	top: 130px;\n	right: -16px;\n	font-size: 1.6em;\n	font-weight: bold;\n	padding: 28px 15px;\n	color: #FFF;\n	text-align: center;\n	vertical-align: middle;\n	background:  url([[root_url]]/uploads/NCleanBlue/version.png) no-repeat left top;\n}\n/* IE6 fixes */\n* html div#version {\n	top: 150px;\n}\n/* End IE6 fixes */\n/* Site Title */\nh1.title {\n	font-size: 1.8em;\n	color: #666666;\n	margin-bottom: 0.5em;\n}\n/* Breadcrumbs */\ndiv.breadcrumbs {\n	padding: 0.5em 0;\n	font-size: 80%;\n	margin: 0 1em;\n}\ndiv.breadcrumbs span.lastitem {\n	font-weight: bold;\n}\n/* ------------ Side Bar (Left) ------------ */\n#left {\n	width: 250px;\n}\n/* Image that Represents the new CMS design */\n#left .screen {\n	margin: 10px 50px;\n}\n/* End  */\n.sbar-title {\n	font: bold 1.2em Arial, Helvetica, sans-serif;\n	color: #252523;\n}\n.sbar-top {\n	height: 20px;\n	width: auto;\n	padding: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left top;\n}\n.sbar-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n}\nspan.sbar-bottom {\n	width: auto;\n	display: block;\n	height: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat left bottom;\n}\n/* ------------ Main (Right) ------------ */\n#main {\n	width: 690px;\n}\n.main-top {\n	height: 15px;\n	width: auto;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right top;\n}\n.main-main {\n	width: auto;\n	border-right: 1px solid #E2E2E2;\n	border-left: 1px solid #E2E2E2;\n	background: #F0F0F0;\n	padding: 20px;\n	padding-top: 0px;\n}\n.main-bottom {\n	width: auto;\n	height: 41px;\n	background: url([[root_url]]/uploads/NCleanBlue/bg__content.png) no-repeat right bottom;\n}\n.right49, .left49 {\n	font-size: 0.85em;\n	margin: 7px 5px 5px 10px;\n	font-weight: bold;\n}\n.left49 span {\n	display: block;\n	padding-top: 1px;\n}\n.left49 a {\n	font-weight: normal;\n}\n.right49 {\n	height: 28px;\n	width: 50px;\n	padding-right: 10px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat right top;\n}\n.right49 a, .right49 a:visited {\n	padding: 7px 4px;\n	display: block;\n	color: #000;\n	height: 15px;\n	background: url([[root_url]]/uploads/NCleanBlue/bull.png) no-repeat  left top;\n}\n#main h2,\n#main h3,\n#main h4,\n#main h5,\n#main h6 {\n	font-size: 1.4em;\n	color: #301E12;\n}\ndiv#main ul,\ndiv#main ol,\ndiv#main dl,\n#footer ul,\n#footer ol {\n	line-height: 1em;\n	margin: 0 0 1.5em 0;\n}\ndiv#main ul,\n#footer ul {\n	list-style: circle;\n}\ndiv#main ul li,\ndiv#main ol li,\n#footer ul li,\n#footer ol li {\n	padding: 2px 2px 2px 5px;\n	margin-left: 20px;\n}\n/* definition lists topics on bold */\ndiv#main dl dt {\n	font-weight: bold;\n	margin: 0 0 0 1em;\n}\ndiv#main dl dd {\n	margin: 0 0 1em 1em;\n}\ndiv#main dl {\n	margin-bottom: 2em;\n	padding-bottom: 1em;\n	border-bottom: 1px solid #c0c0c0;\n}\n/* ------------ Footer ------------ */\n#footer-wrapper {\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	width: auto;\n	margin-top: 5px;\n	text-align: center;\n	margin-right: 00px;\n	margin-left: 0px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer {\n	color: #FFF;\n	font-size: 0.8em;\n	min-height: 235px;\n	height: auto!important;\n	height: 235px;\n	background: #7CA3B5 url([[root_url]]/uploads/NCleanBlue/bg__footer.png) repeat-x left top;\n}\n#footer .block {\n	width: 300px;\n	margin: 20px 10px 10px;\n}\n#footer .cms {\n	text-align: right;\n}\n/* ------------ Footer Links ------------ */\n#footer ul {\n	width: auto;\n	text-align: left;\n	margin-left: 50px;\n}\n#footer ul ul {\n	margin-left: 0px;\n}\n#footer ul li a {\n	color: #FFF;\n	display: block;\n	font-weight: normal;\n	margin-bottom: 0.5em;\n	text-decoration: none;\n}\n#footer a {\n	color: #DCEDF1;\n	text-decoration: underline;\n	font-weight: bold;\n}\n/* ------------ END LAYOUT ---------------*/\n/* ------------  Menu  ROOT  ------------ */\n.page-menu {\n	width: auto;\n	height: 35px;\n	margin: 3px 0 0 20px;\n}\n.menuwrapper {}\n\nul#primary-nav li hr.menu_separator{\n        position: relative;\n        visibility: hidden;\n        display:block;\n        width:5px;\n       	height: 32px;\n       	margin: 0px 5px 0px;\n}\n.page-menu ul#primary-nav {\n	height: 1%;\n	float: left;\n	list-style: none;\n	padding: 0;\n	margin: 0;\n}\n.page-menu ul#primary-nav li {\n	float: left;\n}\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a span {\n	display: block;\n	padding: 0 10px;\n	background-repeat: no-repeat;\n	background-image: url([[root_url]]/uploads/NCleanBlue/tabs.gif);\n}\n.page-menu ul#primary-nav li a {\n	padding-left: 0;\n	color: #000;\n	font-weight: bold;\n	line-height: 2.15em;\n	text-decoration: none;\n	margin-left: 1px;\n	font-size: 0.85em;\n}\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:active {\n	color: #000;\n}\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover span {\n	color: #000;\n}\n.page-menu ul#primary-nav li a span {\n	padding-top: 6px;\n	padding-right: 0;\n	padding-bottom: 5px;\n}\n.page-menu ul#primary-nav li a.menuparenth,\n.page-menu ul#primary-nav li a.menuactive,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n	background-position: 100% -120px;\n}\n.page-menu ul#primary-nav li a {\n	background-position: 100% -80px;\n}\n.page-menu ul#primary-nav li a.menuactive span,\n.page-menu ul#primary-nav li a:hover span,\n.page-menu ul#primary-nav li a:focus span,\n.page-menu ul#primary-nav li a:active span {\n	background-position: 0 -40px;\n}\n.page-menu ul#primary-nav li a span {\n	background-position: 0 0;\n}\n.page-menu ul#primary-nav .sectionheader,\n.page-menu ul#primary-nav li a:link.menuactive,\n.page-menu ul#primary-nav li a:visited.menuactive {\n/* @ Opera, use pseudo classes otherwise it confuses cursor... */\n	cursor: text;\n}\n.page-menu ul#primary-nav li span,\n.page-menu ul#primary-nav li a,\n.page-menu ul#primary-nav li a:hover,\n.page-menu ul#primary-nav li a:focus,\n.page-menu ul#primary-nav li a:active {\n/* @ Opera, we need to be explicit again here now... */\n	cursor: pointer;\n}\n/* Additional IE specific bug fixes... */\n* html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n*:first-child+html .page-menu ul#primary-nav {\n	display: inline-block;\n}\n/* --------------------  menu dropdow  -------------------------\n/* Unless you know what you do, do not touch this */\n/* Reset all ROOT menu styles. */\nul#primary-nav ul.unli li li a span,\nul#primary-nav ul.unli li a span,\nul#primary-nav .menuparent .unli .menuparent .unli li a span {\n	font-weight: normal;\n	background-image: none;\n	display: block;\n	padding-top: 0px;\n	padding-left: 0px;\n	padding-right: 0px;\n	padding-bottom: 0px;\n}\n#primary-nav {\n	margin: 0px;\n	padding: 0px;\n}\n#primary-nav ul {\n	list-style: none;\n	margin: -6px 0px 0px;\n	padding: 0px;\n/* Set the width of the menu elements at second level. Leaving first level flexible. */\n	width: 209px;\n}\n#primary-nav ul {\n	position: absolute;\n	z-index: 1001;\n	top: auto;\n	display: none;\n	padding-top: 9px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.png) no-repeat left top;\n}\n* html #primary-nav ul.unli {\n	padding-top: 12px;\n	background: url([[root_url]]/uploads/NCleanBlue/ultop.gif) no-repeat left top;\n}\n#primary-nav ul.unli ul {\n	margin-left: -7px;\n	left: 100%;\n	top: 3px;\n}\n* html #primary-nav ul.unli ul {\n	margin-left: -0px;\n}\n#primary-nav li {\n	margin: 0px;\n	float: left;\n}\n#primary-nav li li {\n	margin-left: 7px;\n	margin-top: -1px;\n	float: none;\n	position: relative;\n}\n/* Styling the basic appearance of the menu elements */\nul#primary-nav ul hr.menu_separator{\n        position: relative;\n        visibility: visible;\n        display:block;\n        width:130px;\n       	height: 1px;\n       	margin: 2px 30px 2px;\n	padding: 0em;\n	border-bottom: 1px solid #ccc;\n	border-top-width: 0px;\n	border-right-width: 0px;\n	border-left-width: 0px;\n	border-top-style: none;\n	border-right-style: none;\n	border-left-style: none;\n}\n#primary-nav .separator,\n#primary-nav .separatorh {\n	height: 9px;\n	width: 209px;\n	margin: 0px 0px -8px;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.png) no-repeat left bottom;\n}\n* html #primary-nav .separator {\n       z-index:-1;\n	background: url([[root_url]]/uploads/NCleanBlue/ulbtm.gif) no-repeat left bottom;\n}\n*:first-child+html #primary-nav .separator {\n       z-index:-1;\n}\n#primary-nav ul.unli li a {\n	padding: 0px 10px;\n	width: 165px;\n	margin: 5px;\n	background-image: none;\n}\n* html #primary-nav ul.unli li a {\n	padding: 0px 10px 0px 5px;\n	width: 165px;\n	margin: 5px 0px;\n}\n#primary-nav li li a:hover {\n	background-color: #DBE7F2;\n}\n/* Styling the basic appearance of the active page elements (shows what page in the menu is being displayed) */\n#primary-nav li.menuactive li a {\n	text-decoration: none;\n	background: none;\n}\n#primary-nav ul.unli li.menuparenth,\n#primary-nav ul.unli a:hover,\n#primary-nav ul.unli a.menuactive {\n	background-color: #DBE7F2;\n}\n/* Styling the basic apperance of the menuparents - here styled the same on hover (fixes IE bug) */\n#primary-nav ul.unli li .menuparent,\n#primary-nav ul.unli li .menuparent:hover,\n#primary-nav ul.unli li .menuparent,\n#primary-nav .menuactive.menuparent .unli .menuactive.menuparent .menuactive.menuparent {\n	background-image: url([[root_url]]/uploads/NCleanBlue/arrow.gif);\n	background-position: center right;\n	background-repeat: no-repeat;\n}\n/* The magic - set to work for up to a 3 level menu, but can be increased unlimited */\n#primary-nav ul,\n#primary-nav li:hover ul,\n#primary-nav li:hover ul ul,\n#primary-nav li:hover ul ul ul,\n#primary-nav li.menuparenth ul,\n#primary-nav li.menuparenth ul ul,\n#primary-nav li.menuparenth ul ul ul {\n	display: none;\n}\n#primary-nav li:hover ul,\n#primary-nav ul li:hover ul,\n#primary-nav ul ul li:hover ul,\n#primary-nav ul ul ul li:hover ul,\n#primary-nav li.menuparenth ul,\n#primary-nav ul li.menuparenth ul,\n#primary-nav ul ul li.menuparenth ul,\n#primary-nav ul ul ul li.menuparenth ul {\n	display: block;\n}\n/* IE Hacks */\n#primary-nav li li {\n	float: left;\n	clear: both;\n}\n#primary-nav li li a {\n	height: 1%;\n}\n/*************** End Menu *****************/\n/* ------------ News Module ------------ */\n#news {\n	padding: 10px;\n}\n.NewsSummary {\n}\n.NewsSummaryPostdate,\n.NewsSummaryCategory,\n.NewsSummaryAuthor {\n	font-style: italic;\n	font-size: 0.8em;\n}\n.NewsSummaryLink {\n	margin: 2px 0;\n}\n.NewsSummaryContent {\n	margin: 10px 0;\n}\n.NewsSummaryMorelink {\n	margin: 5px 0 15px;\n}\n/* ------------ End News Module ------------ */', 'Main layout rules used in NCleanBlue Design', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('17', 'Simplex Core', '[[strip]]\r\n\r\n[[* /*! normalize.css v2.1.3 | MIT License | git.io/normalize */ *]]\r\n\r\n[[* /* ==========================================================================\r\n HTML5 display definitions\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Correct `block` display not defined in IE 8/9.\r\n */ *]]\r\n\r\narticle, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {\r\n	display: block;\r\n}\r\n\r\n[[* /**\r\n * Correct `inline-block` display not defined in IE 8/9.\r\n */ *]]\r\n\r\naudio, canvas, video {\r\n	display: inline-block;\r\n}\r\n\r\n[[* /**\r\n * Prevent modern browsers from displaying `audio` without controls.\r\n * Remove excess height in iOS 5 devices.\r\n */ *]]\r\n\r\naudio:not([controls]) {\r\n	display: none;\r\n	height: 0;\r\n}\r\n\r\n[[* /**\r\n * Address `[hidden]` styling not present in IE 8/9.\r\n * Hide the `template` element in IE, Safari, and Firefox < 22.\r\n */ *]]\r\n\r\n[hidden], template {\r\n	display: none;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Base\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * 1. Set default font family to sans-serif.\r\n * 2. Prevent iOS text size adjust after orientation change, without disabling\r\n *    user zoom.\r\n */ *]]\r\n\r\nhtml {\r\n	font-family: sans-serif; [[* /* 1 */ *]]\r\n	-ms-text-size-adjust: 100%; [[* /* 2 */ *]]\r\n	-webkit-text-size-adjust: 100%; [[* /* 2 */ *]]\r\n}\r\n\r\n[[* /**\r\n * Remove default margin.\r\n */ *]]\r\n\r\nbody {\r\n	margin: 0;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Links\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Remove the gray background color from active links in IE 10.\r\n */ *]]\r\n\r\na {\r\n	background: transparent;\r\n}\r\n\r\n[[* /**\r\n * Address `outline` inconsistency between Chrome and other browsers.\r\n */ *]]\r\n\r\na:focus {\r\n	outline: thin dotted;\r\n}\r\n\r\n[[* /**\r\n * Improve readability when focused and also mouse hovered in all browsers.\r\n */ *]]\r\n\r\na:active, a:hover {\r\n	outline: 0;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Typography\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Address variable `h1` font-size and margin within `section` and `article`\r\n * contexts in Firefox 4+, Safari 5, and Chrome.\r\n */ *]]\r\n\r\nh1 {\r\n	font-size: 2em;\r\n	margin: 0.67em 0;\r\n}\r\n\r\n[[* /**\r\n * Address styling not present in IE 8/9, Safari 5, and Chrome.\r\n */ *]]\r\n\r\nabbr[title] {\r\n	border-bottom: 1px dotted;\r\n}\r\n\r\n[[* /**\r\n * Address style set to `bolder` in Firefox 4+, Safari 5, and Chrome.\r\n */ *]]\r\n\r\nb, strong {\r\n	font-weight: bold;\r\n}\r\n\r\n[[* /**\r\n * Address styling not present in Safari 5 and Chrome.\r\n */ *]]\r\n\r\ndfn {\r\n	font-style: italic;\r\n}\r\n\r\n[[* /**\r\n * Address differences between Firefox and other browsers.\r\n */ *]]\r\n\r\nhr {\r\n	-moz-box-sizing: content-box;\r\n	box-sizing: content-box;\r\n	height: 0;\r\n}\r\n\r\n[[* /**\r\n * Address styling not present in IE 8/9.\r\n */ *]]\r\n\r\nmark {\r\n	background: #ff0;\r\n	color: #000;\r\n}\r\n\r\n[[* /**\r\n * Correct font family set oddly in Safari 5 and Chrome.\r\n */ *]]\r\n\r\ncode, kbd, pre, samp {\r\n	font-family: monospace, serif;\r\n	font-size: 1em;\r\n}\r\n\r\n[[* /**\r\n * Improve readability of pre-formatted text in all browsers.\r\n */ *]]\r\n\r\npre {\r\n	white-space: pre-wrap;\r\n}\r\n\r\n[[* /**\r\n * Set consistent quote types.\r\n */ *]]\r\n\r\nq {\r\n	quotes: "\\201C" "\\201D" "\\2018" "\\2019";\r\n}\r\n\r\n[[* /**\r\n * Address inconsistent and variable font size in all browsers.\r\n */ *]]\r\n\r\nsmall {\r\n	font-size: 80%;\r\n}\r\n\r\n[[* /**\r\n * Prevent `sub` and `sup` affecting `line-height` in all browsers.\r\n */ *]]\r\n\r\nsub, sup {\r\n	font-size: 75%;\r\n	line-height: 0;\r\n	position: relative;\r\n	vertical-align: baseline;\r\n}\r\n\r\nsup {\r\n	top: -0.5em;\r\n}\r\n\r\nsub {\r\n	bottom: -0.25em;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Embedded content\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Remove border when inside `a` element in IE 8/9.\r\n */ *]]\r\n\r\nimg {\r\n	border: 0;\r\n}\r\n\r\n[[* /**\r\n * Correct overflow displayed oddly in IE 9.\r\n */ *]]\r\n\r\nsvg:not(:root) {\r\n	overflow: hidden;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Figures\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Address margin not present in IE 8/9 and Safari 5.\r\n */ *]]\r\n\r\nfigure {\r\n	margin: 0;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Forms\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Define consistent border, margin, and padding.\r\n */ *]]\r\n\r\nfieldset {\r\n	border: 1px solid #c0c0c0;\r\n	margin: 0 2px;\r\n	padding: 0.35em 0.625em 0.75em;\r\n}\r\n\r\n[[* /**\r\n * 1. Correct `color` not being inherited in IE 8/9.\r\n * 2. Remove padding so people aren\'\'t caught out if they zero out fieldsets.\r\n */ *]]\r\n\r\nlegend {\r\n	border: 0; [[* /* 1 */ *]]\r\n	padding: 0; [[* /* 2 */ *]]\r\n}\r\n\r\n[[* /**\r\n * 1. Correct font family not being inherited in all browsers.\r\n * 2. Correct font size not being inherited in all browsers.\r\n * 3. Address margins set differently in Firefox 4+, Safari 5, and Chrome.\r\n */ *]]\r\n\r\nbutton, input, select, textarea {\r\n	font-family: inherit; [[* /* 1 */ *]]\r\n	font-size: 100%; [[* /* 2 */ *]]\r\n	margin: 0; [[* /* 3 */ *]]\r\n}\r\n\r\n[[* /**\r\n * Address Firefox 4+ setting `line-height` on `input` using `!important` in\r\n * the UA stylesheet.\r\n */ *]]\r\n\r\nbutton, input {\r\n	line-height: normal;\r\n}\r\n\r\n[[* /**\r\n * Address inconsistent `text-transform` inheritance for `button` and `select`.\r\n * All other form control elements do not inherit `text-transform` values.\r\n * Correct `button` style inheritance in Chrome, Safari 5+, and IE 8+.\r\n * Correct `select` style inheritance in Firefox 4+ and Opera.\r\n */ *]]\r\n\r\nbutton, select {\r\n	text-transform: none;\r\n}\r\n\r\n[[* /**\r\n * 1. Avoid the WebKit bug in Android 4.0.* where (2) destroys native `audio`\r\n *    and `video` controls.\r\n * 2. Correct inability to style clickable `input` types in iOS.\r\n * 3. Improve usability and consistency of cursor style between image-type\r\n *    `input` and others.\r\n */ *]]\r\n\r\nbutton, html input[type="button"], [[* /* 1 */ *]]\r\ninput[type="reset"], input[type="submit"] {\r\n	-webkit-appearance: button; [[* /* 2 */ *]]\r\n	cursor: pointer; [[* /* 3 */ *]]\r\n}\r\n\r\n[[* /**\r\n * Re-set default cursor for disabled elements.\r\n */ *]]\r\n\r\nbutton[disabled], html input[disabled] {\r\n	cursor: default;\r\n}\r\n\r\n[[* /**\r\n * 1. Address box sizing set to `content-box` in IE 8/9/10.\r\n * 2. Remove excess padding in IE 8/9/10.\r\n */ *]]\r\n\r\ninput[type="checkbox"], input[type="radio"] {\r\n	box-sizing: border-box; [[* /* 1 */ *]]\r\n	padding: 0; [[* /* 2 */ *]]\r\n}\r\n\r\n[[* /**\r\n * 1. Address `appearance` set to `searchfield` in Safari 5 and Chrome.\r\n * 2. Address `box-sizing` set to `border-box` in Safari 5 and Chrome\r\n *    (include `-moz` to future-proof).\r\n */ *]]\r\n\r\ninput[type="search"] {\r\n	-webkit-appearance: textfield; [[* /* 1 */ *]]\r\n	-moz-box-sizing: content-box;\r\n	-webkit-box-sizing: content-box; [[* /* 2 */ *]]\r\n	box-sizing: content-box;\r\n}\r\n\r\n[[* /**\r\n * Remove inner padding and search cancel button in Safari 5 and Chrome\r\n * on OS X.\r\n */ *]]\r\n\r\ninput[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration {\r\n	-webkit-appearance: none;\r\n}\r\n\r\n[[* /**\r\n * Remove inner padding and border in Firefox 4+.\r\n */ *]]\r\n\r\nbutton::-moz-focus-inner, input::-moz-focus-inner {\r\n	border: 0;\r\n	padding: 0;\r\n}\r\n\r\n[[* /**\r\n * 1. Remove default vertical scrollbar in IE 8/9.\r\n * 2. Improve readability and alignment in all browsers.\r\n */ *]]\r\n\r\ntextarea {\r\n	overflow: auto; [[* /* 1 */ *]]\r\n	vertical-align: top; [[* /* 2 */ *]]\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Tables\r\n ========================================================================== */ *]]\r\n\r\n[[* /**\r\n * Remove most spacing between table cells.\r\n */ *]]\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n	border-spacing: 0;\r\n}\r\n\r\n[[* /*! HTML5 Boilerplate v4.3.0 | MIT License | http://h5bp.com/ */ *]]\r\n\r\n[[* /*\r\n * What follows is the result of much research on cross-browser styling.\r\n * Credit left inline and big thanks to Nicolas Gallagher, Jonathan Neal,\r\n * Kroc Camen, and the H5BP dev community and team.\r\n */ *]]\r\n\r\n[[* /* ==========================================================================\r\n Base styles: opinionated defaults\r\n ========================================================================== */ *]]\r\n\r\nhtml {\r\n	color: #222;\r\n	font-size: 1em;\r\n	line-height: 1.4;\r\n}\r\n\r\n[[* /*\r\n * A better looking default horizontal rule\r\n */ *]]\r\n\r\nhr {\r\n	display: block;\r\n	height: 1px;\r\n	border: 0;\r\n	border-top: 1px solid #ccc;\r\n	margin: 1em 0;\r\n	padding: 0;\r\n}\r\n\r\n[[* /*\r\n * Remove the gap between images, videos, audio and canvas and the bottom of\r\n * their containers: h5bp.com/i/440\r\n */ *]]\r\n\r\naudio, canvas, img, svg, video {\r\n	vertical-align: middle;\r\n}\r\n\r\n[[* /*\r\n * Remove default fieldset styles.\r\n */ *]]\r\n\r\nfieldset {\r\n	border: 0;\r\n	margin: 0;\r\n	padding: 0;\r\n}\r\n\r\n[[* /*\r\n * Allow only vertical resizing of textareas.\r\n */ *]]\r\n\r\ntextarea {\r\n	resize: vertical;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Helper classes\r\n ========================================================================== */ *]]\r\n\r\n[[* /*\r\n * Hide from both screenreaders and browsers: h5bp.com/u\r\n */ *]]\r\n\r\n.hidden {\r\n	display: none !important;\r\n	visibility: hidden;\r\n}\r\n\r\n[[* /*\r\n * Hide only visually, but have it available for screenreaders: h5bp.com/v\r\n */ *]]\r\n\r\n.visuallyhidden {\r\n	border: 0;\r\n	clip: rect(0 0 0 0);\r\n	height: 1px;\r\n	margin: -1px;\r\n	overflow: hidden;\r\n	padding: 0;\r\n	position: absolute;\r\n	width: 1px;\r\n}\r\n\r\n[[* /*\r\n * Extends the .visuallyhidden class to allow the element to be focusable\r\n * when navigated to via the keyboard: h5bp.com/p\r\n */ *]]\r\n\r\n.visuallyhidden.focusable:active, .visuallyhidden.focusable:focus {\r\n	clip: auto;\r\n	height: auto;\r\n	margin: 0;\r\n	overflow: visible;\r\n	position: static;\r\n	width: auto;\r\n}\r\n\r\n[[* /*\r\n * Hide visually and from screenreaders, but maintain layout\r\n */ *]]\r\n\r\n.invisible {\r\n	visibility: hidden;\r\n}\r\n\r\n[[* /*\r\n * Clearfix: contain floats\r\n *\r\n * For modern browsers\r\n * 1. The space content is one way to avoid an Opera bug when the\r\n *    `contenteditable` attribute is included anywhere else in the document.\r\n *    Otherwise it causes space to appear at the top and bottom of elements\r\n *    that receive the `clearfix` class.\r\n * 2. The use of `table` rather than `block` is only necessary if using\r\n *    `:before` to contain the top-margins of child elements.\r\n */ *]]\r\n\r\n.cf:before, .cf:after {\r\n	content: " "; [[* /* 1 */ *]]\r\n	display: table; [[* /* 2 */ *]]\r\n}\r\n\r\n.cf:after {\r\n	clear: both;\r\n}\r\n\r\n[[* /* =====================================\r\n BASE STYLES\r\n ===================================== */ *]]\r\n\r\n[[* /*\r\n * 1. Remove default vertical scrollbar in IE6/7/8/9\r\n * 2. Allow only vertical resizing\r\n */ *]]\r\ntextarea {\r\n	overflow: auto;\r\n	vertical-align: top;\r\n	resize: vertical\r\n}\r\n\r\nul, ol {\r\n	margin: 1em 0;\r\n	padding: 0 0 0 40px\r\n}\r\n\r\ndd {\r\n	margin: 0 0 0 40px\r\n}\r\n\r\nnav ul, nav ol {\r\n	list-style: none;\r\n	list-style-image: none;\r\n	margin: 0;\r\n	padding: 0\r\n}\r\n\r\n[[* /* Redeclare monospace font family */ *]]\r\npre, code, kbd, samp {\r\n	font-family: monospace, serif;\r\n	_font-family: courier new, monospace;\r\n	font-size: 1em\r\n}\r\n\r\n[[* /* Improve readability of pre-formatted text in all browsers */ *]]\r\npre {\r\n	white-space: pre;\r\n	white-space: pre-wrap;\r\n	word-wrap: break-word\r\n}\r\n\r\nq {\r\n	quotes: none\r\n}\r\n\r\nq:before, q:after {\r\n	content: "";\r\n	content: none\r\n}\r\n\r\nsmall {\r\n	font-size: 85%\r\n}\r\n\r\n[[* /* correct text resizing */ *]]\r\nhtml {\r\n	font-size: 100%;\r\n	-webkit-text-size-adjust: 100%;\r\n	-ms-text-size-adjust: 100%\r\n}\r\n\r\nbody {\r\n	margin: 0;\r\n	font-size: 1em;\r\n	-webkit-font-smoothing: antialiased;\r\n}\r\n\r\n[[* /* =====================================\r\n 12 COLUMN GRID\r\n ===================================== */ *]]\r\n\r\n[[* /* ==========================================================================\r\n 12 Column Grid System based on the 1140px Grid V2\r\n by Andy Taylor http://cssgrid.net\r\n\r\n Extended by Goran Ilic http://www.ich-mach-das.at\r\n https://github.com/Stikki/Yetti/blob/master/static/css/yetti-grid.css\r\n ========================================================================== */ *]]\r\n\r\n.container {\r\n	padding-left: 10px;\r\n	padding-right: 10px;\r\n}\r\n\r\n.row {\r\n	width: 100%;\r\n	max-width: 1440px;\r\n	margin: 0 auto;\r\n	position: relative;\r\n}\r\n\r\n.row:before, .row:after, .form-row:before, .form-row:after {\r\n	content: " ";\r\n	display: table;\r\n}\r\n\r\n.row:after, .form-row:after {\r\n	clear: both;\r\n}\r\n\r\n[[* /* ==========================================================================\r\n Base 12 Column Grid\r\n ========================================================================== */ *]]\r\n\r\n.full {\r\n	width: 100%;\r\n	display: block;\r\n}\r\n\r\n.half, .third, .two-third, .quarter, .three-quarter, .fifth, .two-fifth, .three-fifth, .four-fifth {\r\n	float: left;\r\n}\r\n\r\n.half {\r\n	width: 50%;\r\n}\r\n\r\n.third {\r\n	width: 33.33%;\r\n}\r\n\r\n.two-third {\r\n	width: 66.66%;\r\n}\r\n\r\n.quarter {\r\n	width: 25%;\r\n}\r\n\r\n.three-quarter {\r\n	width: 75%;\r\n}\r\n\r\n.fifth {\r\n	width: 20%;\r\n}\r\n\r\n.two-fifth {\r\n	width: 40%;\r\n}\r\n\r\n.three-fifth {\r\n	width: 60%;\r\n}\r\n\r\n.four-fifth {\r\n	width: 80%\r\n}\r\n\r\n[[* /* Animate position of columns */ *]]\r\n.row [class*="-col"] {\r\n	-webkit-transition:all .4s ease;\r\n	-moz-transition:all .4s ease;\r\n	-o-transition:all .4s ease;\r\n	-ms-transition:all .4s ease;\r\n	transition:all .4s ease;\r\n}\r\n\r\n@media only screen and (min-width: 768px) {\r\n	\r\n	.container {\r\n		padding-left: 20px;\r\n		padding-right: 20px;\r\n	}\r\n\r\n	[[* /* ==========================================================================\r\n	 Base 12 Column Grid\r\n	 ========================================================================== */ *]]\r\n\r\n	.col, .one-col, .two-col, .three-col, .four-col, .five-col, .six-col, .seven-col, .eight-col, .nine-col, .ten-col, .eleven-col {\r\n		margin-left: 3.8%;\r\n		float: left;\r\n		min-height: 1px;\r\n		position: relative;\r\n	}\r\n	.row .one-col {\r\n		width: 4.85%;\r\n	}\r\n	.row .two-col {\r\n		width: 13.45%;\r\n	}\r\n	.row .three-col {\r\n		width: 22.05%;\r\n	}\r\n	.row .four-col {\r\n		width: 30.75%;\r\n	}\r\n	.row .five-col {\r\n		width: 39.45%;\r\n	}\r\n	.row .six-col {\r\n		width: 48.1%;\r\n	}\r\n	.row .seven-col {\r\n		width: 56.75%;\r\n	}\r\n	.row .eight-col {\r\n		width: 65.4%;\r\n	}\r\n	.row .nine-col {\r\n		width: 74.05%;\r\n	}\r\n	.row .ten-col {\r\n		width: 82.7%;\r\n	}\r\n	.row .eleven-col {\r\n		width: 91.35%;\r\n	}\r\n	.row .twelve-col {\r\n		width: 100%;\r\n		margin-left: 0;\r\n	}\r\n	.row [class*="-col"]:first-child, .row [class*="-col"].first {\r\n		margin-left: 0;\r\n	}\r\n\r\n	[[* /* ==========================================================================\r\n	 Offset Space\r\n	 ========================================================================== */ *]]\r\n\r\n	.row .offset-one {\r\n		margin-left: 8.65% !important;\r\n	}\r\n	.row .offset-two {\r\n		margin-left: 17.25% !important;\r\n	}\r\n	.row .offset-three {\r\n		margin-left: 25.85% !important;\r\n	}\r\n	.row .offset-four {\r\n		margin-left: 34.55% !important;\r\n	}\r\n	.row .offset-five {\r\n		margin-left: 43.25% !important;\r\n	}\r\n	.row .offset-six {\r\n		margin-left: 51.8% !important;\r\n	}\r\n	.row .offset-seven {\r\n		margin-left: 60.55% !important;\r\n	}\r\n	.row .offset-eight {\r\n		margin-left: 69.2% !important;\r\n	}\r\n	.row .offset-nine {\r\n		margin-left: 77.85% !important;\r\n	}\r\n	.row .offset-ten {\r\n		margin-left: 86.5% !important;\r\n	}\r\n	.row .offset-eleven {\r\n		margin-left: 95.15% !important;\r\n	}\r\n\r\n	[[* /* ==========================================================================\r\n	 Push & Pull Space\r\n	 ========================================================================== */ *]]\r\n\r\n	.row .push-one, .row .push-two, .row .push-three, .row .push-four, .row .push-five, .row .push-six, .row .push-seven, .row .push-eight,\r\n	.row .push-nine, .row .push-ten, .row .push-eleven, .row .pull-one, .row .pull-two, .row .pull-three, .row .pull-four, .row .pull-five,\r\n	.row .pull-six, .row .pull-seven, .row .pull-eight, .row .pull-nine, .row .pull-ten, .row .pull-eleven {\r\n		position: relative;\r\n		margin-left: 0;\r\n	}\r\n\r\n	.row .push-one {\r\n		left: 8.65%;\r\n	}\r\n	.row .push-two {\r\n		left: 17.25%;\r\n	}\r\n	.row .push-three {\r\n		left: 25.85%;\r\n	}\r\n	.row .push-four {\r\n		left: 34.55%;\r\n	}\r\n	.row .push-five {\r\n		left: 43.25%;\r\n	}\r\n	.row .push-six {\r\n		left: 51.8%;\r\n	}\r\n	.row .push-seven {\r\n		left: 60.55%;\r\n	}\r\n	.row .push-eight {\r\n		left: 69.2%;\r\n	}\r\n	.row .push-nine {\r\n		left: 77.85%;\r\n	}\r\n	.row .push-ten {\r\n		left: 86.5%;\r\n	}\r\n	.row .push-eleven {\r\n		left: 95.15%;\r\n	}\r\n\r\n	.row .pull-one {\r\n		right: 4.85%;\r\n	}\r\n	.row .pull-two {\r\n		right: 13.45%;\r\n	}\r\n	.row .pull-three {\r\n		right: 22.05%;\r\n	}\r\n	.row .pull-four {\r\n		right: 30.75%;\r\n	}\r\n	.row .pull-five {\r\n		right: 39.45%;\r\n	}\r\n	.row .pull-six {\r\n		right: 48%;\r\n	}\r\n	.row .pull-seven {\r\n		right: 56.75%;\r\n	}\r\n	.row .pull-eight {\r\n		right: 65.4%;\r\n	}\r\n	.row .pull-nine {\r\n		right: 74.05%;\r\n	}\r\n	.row .pull-ten {\r\n		right: 82.7%;\r\n	}\r\n	.row .pull-eleven {\r\n		right: 91.35%;\r\n	}\r\n\r\n}\r\n\r\n[[/strip]]', 'Simplex Theme core Stylesheet, containing 12 column grid system and HTML5 resets (normalize.css)', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('18', 'Simplex Layout', '[[strip]]\r\n\r\n[[* APPEARANCE *]]\r\n[[* \r\n	/**\r\n	 * @copyright CMS Made Simple 2014\r\n	 * @author Goran Ilic (uniqu3e@gmail.com)\r\n	 * @version 1.1 (CMSMS 2.0 Package)\r\n	 * \r\n	 * Simplex Theme comes with 2 predefined Style variations, one is a "boxed" style as seen in\r\n	 * default installation which is controle with "boxed" ID that is set in Simplex Theme <body> tag.\r\n	 * If you remove this ID, a grey background on page body will be removed and layout will no longer \r\n	 * be wrapped inside a "box" but appear in a single background color which is by default white.\r\n	 * \r\n	 * Besides there are also predefined class names and styles that you can use on <body> tag to\r\n	 * change alignment of complete layout/page.\r\n	 * If you rightaligned class to body (example: <body class=\'rightaligned and other classes\'>) \r\n	 * then whole page layout will be positioned to right window side instead of centered position\r\n	 * and with class leftaligned the page layout will be positioned to left.\r\n	 * \r\n	 * Maximum width of page layout is preset to 1440px in Simplex Core stylesheet, you can change this \r\n	 * by adding a new rule in this stylesheet with a class .row (Example: .row { max-width: 1080px; }).\r\n	 * If you prefer a full width layout simply add fullwidth class to body tag of Simplex Template.  \r\n	 * This class will reset max-width limitation and force the page layout to full window width with\r\n	 * spacing on left and right of 30px.\r\n	 * \r\n	 * Browser Support: \r\n	 * Simplex Theme was tested in common modern Browser and IE8 (with gracefull fallback).\r\n	 * \r\n	 * Grid usage:\r\n	 * Simplex is using a custom Yetti Framework 12 column grid (https://github.com/Stikki/Yetti/tree/master)\r\n	 * based on Andy Taylors (http://cssgrid.net) 1140px Grid.\r\n	 * \r\n	 * Using the grid system is fairly simple. Make sure that grid columns\r\n	 * are wrapped inside a element with .row class.\r\n	 * When grid columns are inside a row element, floats are auto cleared,\r\n	 * therefore you do not need anything like some empty clear element ie. <div class="clear"></div>\r\n	 * Grid columns have a spacing (margin-left) of 3.8% of the layout, whereby first column after\r\n	 * .row opening element will have no spacing (margin-left).\r\n	 * Grid columns are only applied to Browser and Screen size which are greater then 768px;\r\n	 * \r\n	 * Example (three column row):\r\n	 * \r\n	 * <!-- container has a preset padding to left and right with 20px -->\r\n	 * <div class="container">\r\n	 *     <!-- clears floating row of columns, sets maximum width of 1440px -->\r\n	 *     <div class="row some-class-to-apply-styles">\r\n	 *         <!-- \r\n	 *             four-col explanation: a simple math, grid is built out of 12 columns, so we say we want\r\n	 *             a grid column in size of four columns width therefore the name four- and to fill \r\n	 *             our .row it is three times four-col column makes twelve columns (3 x 4 = 12)\r\n	 *         -->\r\n	 *         <div class="four-col my-class">\r\n	 *             Some content\r\n	 *         </div>\r\n	 *         <div class="four-col my-class">\r\n	 *             Some content\r\n	 *         </div>\r\n	 *         <div class="four-col my-class">\r\n	 *             Some content\r\n	 *         </div>\r\n	 *     </div>\r\n	 *     <div class="row">\r\n	 *         <div class="six-col">\r\n	 *             Half width content\r\n	 *         </div>\r\n	 *         <div class="six-col">\r\n	 *             Half width content\r\n	 *         </div>\r\n	 *     </div>\r\n	 * </div>\r\n	 * \r\n	 */ \r\n*]]\r\n\r\n[[* /* assign the images path to a variable */ *]]\r\n[[capture assign=\'path\']][[uploads_url]]/simplex/images[[/capture]]\r\n[[capture assign=\'font\']][[uploads_url]]/simplex/fonts[[/capture]]\r\n\r\n[[* /* --- COLORS --- */ *]]\r\n\r\n[[assign var=\'light_grey\' value=\'#f1f1f1\']]\r\n[[assign var=\'grey\' value=\'#e9e9e9\']]\r\n[[assign var=\'dark_grey\' value=\'#555\' scope=global]]\r\n[[assign var=\'white\' value=\'#fff\']]\r\n[[assign var=\'orange\' value=\'#f39c2c\' scope=global]]\r\n[[assign var=\'dark_orange\' value=\'#e6870e\']]\r\n[[assign var=\'yellow\' value=\'#fdbd34\']]\r\n\r\n[[* /* =====================================\r\n ICON FONT\r\n ===================================== */ *]]\r\n[[* /* Will fail on Windows Phone 7, sorry developer life sucks */ *]]\r\n@font-face {\r\n	font-family: \'simplex\';\r\n	src: url(\'[[$font]]/simplex.eot\');\r\n	src: url(\'[[$font]]/simplex.eot?#iefix\') format(\'embedded-opentype\'),\r\n		url(\'[[$font]]/simplex.woff\') format(\'woff\'), \r\n		url(\'[[$font]]/simplex.ttf\') format(\'truetype\'),\r\n		url(\'[[$font]]/simplex.svg#simplex\') format(\'svg\');\r\n	font-weight: normal;\r\n	font-style: normal;\r\n}\r\n\r\n[class^="icon-"], [class*=" icon-"] {\r\n	font-family: \'simplex\';\r\n	speak: none;\r\n	font-style: normal;\r\n	font-weight: normal;\r\n	font-variant: normal;\r\n	text-transform: none;\r\n	line-height: 1;\r\n	-webkit-font-smoothing: antialiased;\r\n	-moz-osx-font-smoothing: grayscale;\r\n}\r\n\r\n.icon-arrow-up:before {\r\n	content: "\\e600";\r\n}\r\n\r\n.icon-arrow-left:before {\r\n	content: "\\e601";\r\n}\r\n\r\n.icon-search:before {\r\n	content: "\\e603";\r\n}\r\n\r\n.icon-printer:before {\r\n	content: "\\e604";\r\n}\r\n\r\n.icon-linkedin:before {\r\n	content: "\\e605";\r\n}\r\n\r\n.icon-pinterest:before {\r\n	content: "\\e606";\r\n}\r\n\r\n.icon-youtube:before {\r\n	content: "\\e607";\r\n}\r\n\r\n.icon-facebook:before {\r\n	content: "\\e608";\r\n}\r\n\r\n.icon-google:before {\r\n	content: "\\e609";\r\n}\r\n\r\n.icon-twitter:before {\r\n	content: "\\e60a";\r\n}\r\n\r\n.icon-link:before {\r\n	content: "\\e602";\r\n}\r\n\r\n[[* /* =====================================\r\n GENERAL STYLES\r\n ===================================== */ *]]\r\nbody {\r\n	background: [[$white]];\r\n	font-family: \'Noto Sans\', sans-serif;\r\n	font-size: 1em; [[* /* base browser font size: 16px, now do math "XX / 16 = ??" where XX is desired font size */ *]] \r\n	color: [[$dark_grey]];\r\n	line-height: 1.5;\r\n}\r\n\r\n[[* /* add this class to <body> to align the layout to left instead of centered */ *]]\r\n.leftaligned {\r\n	margin-left: 0;\r\n}\r\n\r\n[[* /* add this class to <body> to align the layout to right instead of centered */ *]]\r\n.rightaligned {\r\n	margin-right: 0;\r\n}\r\n\r\n[[* /* you can change appearance of the page by adding or removing #boxed id to <body> tag. \r\n * By removing #boxed ID, page will no longer be wrapped in a wrapper \r\n */ *]]\r\nbody#boxed {\r\n	background: #f2f2f2 url([[$path]]/body-background.png) repeat;\r\n}\r\n\r\n[[* /* add this class to <body> to make this layout full window width */ *]]\r\nbody.fullwidth .row {\r\n	max-width: none;\r\n}\r\n\r\na img {\r\n	border: none;\r\n}\r\n\r\n[[* /* you can use these classes to align images to left or right */ *]]\r\n.right {\r\n	float: right;\r\n}\r\n\r\n.left {\r\n	float: left;\r\n}\r\n\r\n[[* /* if image needs some space add this class to img tag\r\n * so at the end a left floating image would be <img src=\'some.jpg\' class=\'left spacing\' alt=\'foo\' />\r\n */ *]]\r\n.spacing {\r\n	margin: 15px;\r\n}\r\n\r\n.spacing.left {\r\n	margin-right: 0;\r\n}\r\n\r\n.spacing.right {\r\n	margin-left: 0;\r\n}\r\n\r\n[[* /* or add a 2 px border to image or something, change as you need it */ *]]\r\n.border {\r\n	border: 2px solid [[$grey]];\r\n}\r\n\r\n[[* /* some styling for code chunks */ *]]\r\npre, code, kbd, samp {\r\n	font-family: Consolas, \'Andale Mono WT\', \'Andale Mono\', \'Lucida Console\', \'Lucida Sans Typewriter\', monospace;\r\n	color: [[$dark_grey]];\r\n}\r\n\r\npre code {\r\n	line-height: 1.4;\r\n	font-size: .8125em;\r\n}\r\n\r\npre {\r\n	padding: 10px;\r\n	margin: 10px 0;\r\n	overflow: auto;\r\n	width: 93%;\r\n	background: [[$light_grey]];\r\n	border-radius: 6px;\r\n	-webkit-border-radius: 6px;\r\n	-moz-border-radius: 6px;\r\n	-o-border-radius: 6px;\r\n}\r\n\r\n[[* /* target IE7 and IE6 */ *]]\r\n*:first-child+ html pre {\r\n	padding-bottom: 20px;\r\n	overflow-y: hidden;\r\n	overflow: visible;\r\n	overflow-x: auto;\r\n}\r\n\r\n* html pre {\r\n	padding-bottom: 20px;\r\n	overflow: visible;\r\n	overflow-x: auto;\r\n}\r\n\r\n[[* /* horizontal ruler */ *]]\r\nhr {\r\n	border: solid [[$grey]];\r\n	border-width: 1px 0 0 0;\r\n	clear: both;\r\n	margin: 10px 0 30px 0;\r\n	height: 0;\r\n}\r\n\r\n[[* /* =====================================\r\n COMMON TYPOGRAPHY\r\n ===================================== */ *]]\r\n\r\n[[* /* link default styles */ *]]\r\na {\r\n	color: [[$orange]];\r\n}\r\n\r\na.external {\r\n	text-decoration: none;\r\n}\r\n\r\na:visited {\r\n	color: [[$dark_orange]];\r\n}\r\n\r\na:hover {\r\n	color: [[$dark_grey]];\r\n	transition: transform .3s ease-out;\r\n	-webkit-transition: color .3s ease-out;\r\n	-moz-transition: color .3s ease-out;\r\n	-o-transition: color .3s ease-out;\r\n	text-decoration: underline;\r\n}\r\n\r\na:focus {\r\n	outline: thin dotted;\r\n}\r\n\r\na:hover, a:active {\r\n	outline: 0;\r\n}\r\n\r\n[[* /* add icon to links with class external */ *]]\r\na.external:after {\r\n	content: "\\e602";\r\n	padding-left: 4px;\r\n	font-family: \'simplex\';\r\n	text-decoration: none;\r\n}\r\n\r\n[[* /* default heading styles */ *]]\r\nh1, h2 {\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	font-weight: 700;\r\n}\r\n\r\nh3, h4, h5, h6 {\r\n	font-weight: 400;\r\n}\r\n\r\nh1 {\r\n	color: [[$orange]];\r\n	margin: 10px 0;\r\n	font-size: 2em; [[* /* 32px */ *]]\r\n	text-transform: uppercase;\r\n}\r\n\r\nh2 {\r\n	color: [[$dark_grey]];\r\n	font-size: 1.75em; [[* /* 28px */ *]]\r\n}\r\n\r\nh3 {\r\n	color: [[$dark_grey]];\r\n	font-size: 1.5em; [[* /* 24px */ *]]\r\n}\r\n\r\nh4 {\r\n	color: [[$orange]];\r\n	font-size: 1.375em; [[* /* 22px */ *]]\r\n}\r\n\r\nh5 {\r\n	font-size: 1.25em [[* /* 20px */ *]]\r\n}\r\n\r\nh6 {\r\n	font-size: 1.125em; [[* /* 18px */ *]]\r\n}\r\n\r\n[[* /* blockquotes and cites */ *]]\r\nblockquote, blockquote p {\r\n	font-size: 1.0625em;\r\n	line-height: 1.5;\r\n	color: [[$dark_grey]];\r\n	font-style: italic;\r\n	font-family: Georgia, Times New Roman, serif;\r\n}\r\n\r\nblockquote {\r\n	margin: 0 0 20px 0;\r\n	padding: 9px 10px 10px 19px;\r\n	border-left: 5px solid [[$light_grey]];\r\n}\r\n\r\nblockquote cite {\r\n	display: block;\r\n	font-size: .941176em;\r\n	color: [[$dark_grey]];\r\n}\r\n\r\nblockquote cite:before {\r\n	content: "\\2014 \\0020";\r\n}\r\n\r\nblockquote cite a, blockquote cite a:visited, blockquote cite a:visited {\r\n	font-family: Georgia, Times New Roman, serif;\r\n}\r\n\r\n[[* /* =====================================\r\n LAYOUT\r\n ===================================== */ *]]\r\n[[* /* wrapping the page in a box */ *]]\r\n.page-wrapper {\r\n	border-top: 5px solid [[$orange]];\r\n	margin-bottom: 15px;\r\n}\r\n\r\n[[* /* you can switch appearance of the page by adding or removing id #boxed to body tag */ *]]\r\n#boxed #wrapper {\r\n	margin-top: 15px;\r\n	border-top: 5px solid [[$orange]];\r\n	background: [[$white]];\r\n	box-shadow: 0 0 15px 0 #c6c6c6;\r\n}\r\n\r\n#boxed.page-wrapper {\r\n	border-top: none;\r\n}\r\n\r\n[[* /* add some spacing to page wrapper */ *]]\r\n.inner-section {\r\n	padding-left: 20px;\r\n	padding-right: 20px;\r\n}\r\n\r\n[[* /* ------ HEADER SECTION ------ */ *]]\r\n\r\n[[* /* the logo */ *]]\r\n.logo {\r\n	margin-top: 20px;\r\n	text-align: center;\r\n}\r\n\r\n.logo a {\r\n	display: block;\r\n}\r\n\r\n.top .header {\r\n	border-bottom: 1px solid [[$light_grey]];\r\n}\r\n\r\n[[* /* catchphrase */ *]]\r\n.phrase span {\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	text-transform: uppercase;\r\n	color: #ddd;\r\n	font-weight: 700;\r\n	font-size: 1.5em; [[* /* 24px */ *]]\r\n}\r\n\r\n[[* /* search */ *]]\r\n.search {\r\n	text-align: right;\r\n}\r\n\r\n[[* /* webkit browser add icons to input of type search, we dont want it here now */ *]]\r\ninput.search-input::-webkit-search-decoration, input.search-input::-webkit-search-results-button, \r\ninput.search-input::-webkit-search-results-decoration {\r\n	-webkit-appearance: none;\r\n}\r\n\r\n.search .icon-search {\r\n	margin-left: -25px;\r\n	display: inline-block;\r\n	height: 24px;\r\n	line-height: 24px;\r\n	text-align: center;\r\n	width: 24px;\r\n	position: relative;\r\n	z-index: 10;\r\n	color: #ddd;\r\n	top: 3px;\r\n}\r\n\r\n.search ::-webkit-input-placeholder,\r\n.search ::-moz-placeholder,\r\n.search input[placeholder] { \r\n	line-height: normal;\r\n}\r\n\r\n[[* /* styling the search input field */ *]]\r\ninput.search-input {\r\n	border: 1px solid [[$light_grey]];\r\n	line-height: normal;\r\n	outline: 0;\r\n	padding: 6px 0 6px .5%;\r\n	font-size: .6875em; [[* /* 11px */ *]]\r\n	color: [[$dark_grey]];\r\n	transition: all .35s ease-in-out;\r\n	-webkit-transition: all .35s ease-in-out;\r\n	-moz-transition: all .35s ease-in-out;\r\n	-o-transition: all .35s ease-in-out;\r\n	max-width: 99.5%;\r\n}\r\n\r\ninput.search-input:focus {\r\n	border: 1px solid [[$orange]];\r\n	box-shadow: 0 0 3px [[$orange]];\r\n	-webkit-box-shadow: 0 0 3px [[$orange]];\r\n	-moz-box-shadow: 0 0 3px [[$orange]];\r\n	-o-box-shadow: 0 0 3px [[$orange]];\r\n}\r\n\r\n[[* /* ------ NAVIGATION ------ */ *]]\r\n#main-menu {\r\n	margin-top: 25px;\r\n}\r\n\r\n[[* /* --- FIRST LEVEL --- */ *]]\r\n#main-menu > li {\r\n	display: block;\r\n	border-bottom: 1px dotted [[$light_grey]];\r\n	position: relative;\r\n}\r\n\r\n#main-menu > li:last-child {\r\n	border-bottom: none;\r\n}\r\n\r\n#main-menu > li > a,\r\n#main-menu > li.sectionheader > span {\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	text-transform: uppercase;\r\n	color: [[$dark_grey]];\r\n	text-decoration: none;\r\n	font-size: 1.0625em; [[* /* 17px */ *]]\r\n	font-weight: 700;\r\n	cursor: pointer;\r\n	padding: 8px 0;\r\n	display: block;\r\n	position: relative;\r\n}\r\n\r\n#main-menu > li.current > a,\r\n#main-menu > li.current.sectionheader > span,\r\n#main-menu > li:hover > a,\r\n#main-menu > li.sectionheader:hover > span {\r\n	color: [[$dark_orange]];\r\n}\r\n\r\n[[* /* --- SECOND LEVEL --- */ *]]\r\n#main-menu > li > ul,\r\n#main-menu > li > ul > li > ul [[* /* third level */ *]] {\r\n	position: absolute;\r\n	left: -999em;\r\n}\r\n\r\n#main-menu > li:hover > ul,\r\n#main-menu > li.active > ul,\r\n#main-menu > li > ul > li:hover > ul, [[* /* third level */ *]]\r\n#main-menu > li > ul > li.active > ul {\r\n	position: relative;\r\n	left: 0;\r\n}\r\n\r\n#main-menu > li > ul > li > a,\r\n#main-menu > li > ul > li.sectionheader > span,\r\n#main-menu > li > ul > li > ul > li > a, [[* /* third level */ *]]\r\n#main-menu > li > ul > li > ul > li.sectionheader > span {\r\n	text-decoration: none;\r\n	color: [[$dark_grey]];\r\n	text-transform: uppercase;\r\n	display: block;\r\n	padding: 4px 0;\r\n}\r\n\r\n#main-menu > li > ul > li:hover > a,\r\n#main-menu > li > ul > li.sectionheader:hover > span,\r\n#main-menu > li > ul > li > ul > li:hover > a,\r\n#main-menu > li > ul > li > ul > li.sectionheader:hover > span {\r\n	color: #999;\r\n}\r\n\r\n[[* /* --- THIRD LEVEL --- */ *]]\r\n#main-menu > li > ul > li > ul > li > a,\r\n#main-menu > li > ul > li > ul > li.sectionheader > span {\r\n	padding-left: 15px;\r\n	font-size: .875em;\r\n	text-transform: none;\r\n}\r\n\r\n[[* /* --- PARENT INDICATOR --- */ *]]\r\n#main-menu > li > a i,\r\n#main-menu > li > ul > li > a i,\r\n#main-menu > li.sectionheader > span i,\r\n#main-menu > li > ul > li.sectionheader > span i {\r\n	float: right;\r\n	position: relative;\r\n	padding-top: 6px;\r\n	-webkit-transform: rotate(0deg);\r\n	-moz-transform: rotate(0deg);\r\n	-ms-transform: rotate(0deg);\r\n	-o-transform: rotate(0deg);\r\n	transform: rotate(0deg);\r\n	-webkit-transition: -webkit-transform 250ms ease-out 0s;\r\n	-moz-transition: -moz-transform 250ms ease-out 0s;\r\n	-o-transition: -o-transform 250ms ease-out 0s;\r\n	transition: transform 250ms ease-out 0s;\r\n}\r\n\r\n#main-menu > li:hover > a i,\r\n#main-menu > li.active > a i,\r\n#main-menu > li > ul > li:hover > a i,\r\n#main-menu > li > ul > li.active > a i,\r\n#main-menu > li.sectionheader:hover > span i,\r\n#main-menu > li.active.sectionheader > span i,\r\n#main-menu > li > ul > li.sectionheader:hover > span i,\r\n#main-menu > li > ul > li.active.sectionheader > span i {\r\n	-webkit-transform: rotate(-90deg);\r\n	-moz-transform: rotate(-90deg);\r\n	-ms-transform: rotate(-90deg);\r\n	-o-transform: rotate(-90deg);\r\n	transform: rotate(-90deg);\r\n}\r\n\r\n[[* /* ------ CONTENT AREA ------ */ *]]\r\n.content-wrapper {\r\n	padding-top: 20px;\r\n}\r\n\r\n.content-top {\r\n	font-family: Georgia, Times New Roman, serif;\r\n	color: [[$dark_grey]];\r\n	font-style: italic;\r\n	line-height: 20px;\r\n	position: relative;\r\n}\r\n\r\n.content-top .title-border {\r\n	content: \'\';\r\n	height: 1px;\r\n	display: block;\r\n	width: 100%;\r\n	border-bottom: 1px dotted #ddd;\r\n	position: absolute;\r\n	top: 50%;\r\n}\r\n\r\n[[* /* breadcrumbs */ *]]\r\n.breadcrumb {\r\n	display: inline-block;\r\n	background: [[$white]];\r\n	width: auto;\r\n	padding-right: 6px;\r\n	z-index: 1;\r\n	position: relative;\r\n}\r\n\r\n.breadcrumb a {\r\n	color: [[$dark_grey]];\r\n	display: inline-block;\r\n	width: auto;\r\n	background: [[$white]];\r\n}\r\n\r\n[[* /* print button */ *]]\r\na.printbutton {\r\n	display: none;\r\n}\r\n\r\n\r\n[[* /* news module summary -> content */ *]]\r\n.content .news-summary span.heading {\r\n	display: none;\r\n}\r\n\r\n.content .news-article {\r\n	margin-bottom: 15px;\r\n	padding-bottom: 15px;\r\n	border-bottom: 1px dotted [[$grey]];\r\n}\r\n\r\n.content .news-summary ul.category-list {\r\n	margin: 15px 0;\r\n}\r\n\r\n.content .news-summary ul.category-list li a, .news-summary ul.category-list li span {\r\n	border-radius: 4px;\r\n}\r\n\r\n.news-summary ul.category-list li span {\r\n	opacity: .4;\r\n}\r\n\r\n[[* /* news module summary -> sitewide (content + sidebar) */ *]]\r\n[[* /* article heading */ *]]\r\n.news-article h2 {\r\n	margin: 0 0 15px 0;\r\n}\r\n\r\n.news-article h2 a {\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	text-transform: uppercase;\r\n	color: [[$dark_grey]];\r\n	font-size: 16px;\r\n	text-decoration: none;\r\n	font-weight: 700;\r\n}\r\n\r\n[[* /* date circle, well square for IE  */ *]]\r\n.news-article .date {\r\n	background: [[$orange]];\r\n	color: [[$white]];\r\n	display: block;\r\n	float: left;\r\n	width: 40px;\r\n	padding: 6px;\r\n	height: 40px;\r\n	border-radius: 26px;\r\n	text-align: center;\r\n	font-family: Georgia, Times New Roman, serif;\r\n}\r\n\r\n.news-article .day {\r\n	font-size: 20px;\r\n	line-height: 1;\r\n	padding-bottom: 2px;\r\n	font-style: italic;\r\n	display: block;\r\n}\r\n\r\n.news-article.month {\r\n	font-size: 11px;\r\n	display: block\r\n}\r\n\r\n[[* /* author and category */ *]]\r\n.news-article .author, .news-article .category {\r\n	font-family: Georgia, Times New Roman, serif;\r\n	display: block;\r\n	padding-left: 60px;\r\n	font-size: 11px;\r\n	font-style: italic;\r\n}\r\n\r\n[[* /* category list on top of summary */ *]]\r\n.news-summary ul.category-list {\r\n	margin: 15px 0 -1px 0;\r\n	padding: 0;\r\n	list-style: none;\r\n}\r\n\r\n.news-summary ul.category-list li {\r\n	float: left;\r\n	display: block;\r\n	width: auto;\r\n	margin-right: 5px;\r\n}\r\n\r\n.news-summary ul.category-list li a, .news-summary ul.category-list li span {\r\n	display: block;\r\n	color: [[$dark_grey]];\r\n	padding: 4px 8px;\r\n	background: [[$light_grey]];\r\n	border-radius: 4px 4px 0 0;\r\n	text-decoration: none;\r\n	font-size: 11px;\r\n	text-transform: uppercase;\r\n}\r\n\r\n.news-summary ul.category-list li a:hover {\r\n	color: [[$orange]];\r\n}\r\n\r\n.news-summary .paginate {\r\n	font: italic 11px/1.2 Georgia, Times New Roman, serif;\r\n}\r\n\r\n.news-summary .paginate a {\r\n	padding: 0 3px;\r\n}\r\n\r\n.news-meta {\r\n	background: [[$light_grey]];\r\n	padding: 10px;\r\n	margin: 10px 0;\r\n}\r\n\r\n[[* /* more link */ *]]\r\n.more, .more a,\r\n[[* /* back link */ *]]\r\n.back, .back a,\r\n[[* /* previous, next links */ *]]\r\n.previous a, .next a, .previous, .next {\r\n	font: italic 12px/1.3 Georgia, Times New Roman, serif;\r\n	color: [[$dark_grey]];\r\n	text-decoration: none;\r\n}\r\n\r\n[[* /* hover behavior of more, next, previous links */ *]]\r\n.more a:hover, .back a:hover, .previous a:hover, .next a:hover {\r\n	text-decoration: underline;\r\n}\r\n\r\n.previous, .next {\r\n	padding: 6px 0;\r\n}\r\n\r\n[[* /* align next link to right */ *]]\r\n.previous {\r\n	float: left;\r\n}\r\n\r\n.next {\r\n	float: right;\r\n}\r\n\r\n[[* /* ------ SIDEBAR AREA ------ */ *]]\r\n\r\n[[* /* news module summary -> sidebar */ *]]\r\n.sidebar .news-summary span.heading {\r\n	position: relative;\r\n	color: [[$dark_grey]];\r\n	font: normal 1em/1.25 Georgia, Times New Roman, serif;\r\n	margin: 0 0 15px 0;\r\n	display: block;\r\n}\r\n\r\n.sidebar .news-summary span.heading:after {\r\n	content: \'\';\r\n	height: 1px;\r\n	display: block;\r\n	width: 100%;\r\n	border-bottom: 1px dotted #ddd;\r\n	position: absolute;\r\n	top: 50%;\r\n}\r\n\r\n.sidebar .news-summary .heading span {\r\n	display: inline-block;\r\n	width: auto;\r\n	background: [[$white]];\r\n	padding-right: 6px;\r\n	position: relative;\r\n	z-index: 10;\r\n}\r\n\r\n.sidebar .news-article {\r\n	padding: 15px;\r\n	position: relative;\r\n	background: [[$light_grey]];\r\n	margin-bottom: 20px;\r\n	border-radius: 0 0 6px 0;\r\n	font-size: .8125em; [[* /* 13px */ *]]\r\n}\r\n\r\n[[* /* creating a bubble box with css3 */ *]]\r\n.sidebar .news-article:before {\r\n	content: \'\';\r\n	position: absolute;\r\n	bottom: -15px;\r\n	right: 25px;\r\n	width: 10px;\r\n	height: 35px;\r\n	-webkit-transform: rotate(55deg) skewY(55deg);\r\n	-moz-transform: rotate(55deg) skewY(55deg);\r\n	-o-transform: rotate(55deg) skewY(55deg);\r\n	-ms-transform: rotate(55deg) skewY(55deg);\r\n	transform: rotate(55deg) skewY(55deg);\r\n	background: [[$light_grey]];\r\n}\r\n\r\n.lt-ie9 .sidebar .news-article:before {\r\n	display: none;\r\n}\r\n\r\n[[* /* ------ FOOTER AREA ------ */ *]]\r\n[[* /* footer wrapper */ *]]\r\n.footer {\r\n	position: relative;\r\n	border-top: 8px solid [[$light_grey]];\r\n	margin: 25px 0 10px 0;\r\n	padding-top: 20px;\r\n	padding-bottom: 20px;\r\n}\r\n\r\n.footer:before {\r\n	content: \' \';\r\n	border-top: 2px dotted [[$white]];\r\n	border-bottom: 2px dotted [[$white]];\r\n	height: 4px;\r\n	display: block;\r\n	position: absolute;\r\n	width: 100%;\r\n	top: -8px;\r\n	left: 0;\r\n}\r\n\r\n[[* /* copyright text */ *]]\r\n.copyright {\r\n	padding-top: 15px;\r\n}\r\n\r\n.copyright-info {\r\n	color: [[$dark_grey]];\r\n	font-size: .6875em; [[* /* 11px */ *]]\r\n}\r\n\r\n[[* /* social icons */ *]]\r\n.footer ul.social {\r\n	padding: 0;\r\n	margin: 0;\r\n	list-style: none;\r\n	text-align: center;\r\n}\r\n\r\n.footer .social li {\r\n	display: inline;\r\n	margin: 0;\r\n	padding: 0;\r\n	margin-right: 6px;\r\n}\r\n\r\n.footer .social li a {\r\n	display: inline-block;\r\n	text-decoration: none;\r\n	font-size: 2.625em;\r\n	line-height: 1;\r\n	color: [[$dark_grey]];\r\n}\r\n\r\n.footer .social li a:hover {\r\n	color: [[$orange]];\r\n}\r\n\r\n.footer .social li a i {\r\n	display: inline-block;\r\n}\r\n\r\n[[* /* back to top anchor */ *]]\r\n.back-top a {\r\n	display: inline-block;\r\n	width: 16px;\r\n	height: 16px;\r\n	line-height: 16px;\r\n	padding: 8px;\r\n	border: 5px solid [[$white]];\r\n	text-decoration: none;\r\n	color: [[$dark_grey]];\r\n	background-color: [[$light_grey]];\r\n	border-radius: 500px;\r\n	-webkit-border-radius: 500px;\r\n	-moz-border-radius: 500px;\r\n	-o-border-radius: 500px;\r\n	position: absolute;\r\n	top: -24px;\r\n	left: 50%;\r\n	margin-left: -12px;\r\n	-webkit-transition: all 200ms ease-in-out;\r\n	-moz-transition: all 200ms ease-in-out;\r\n	-ms-transition: all 200ms ease-in-out;\r\n	-o-transition: all 200ms ease-in-out;\r\n	transition: all 200ms ease-in-out;\r\n}\r\n\r\n.back-top a:hover {\r\n	background-color: [[$orange]];\r\n	color: [[$white]];\r\n	-webkit-transform: scale(1.1);\r\n	-moz-transform: scale(1.1);\r\n	-ms-transform: scale(1.1);\r\n	-o-transform: scale(1.1);\r\n	transform: scale(1.1);\r\n}\r\n\r\n[[* /* Footer navigation */ *]]\r\n.footer-navigation {\r\n	padding-top: 15px;\r\n	border-bottom: 1px solid [[$light_grey]];\r\n}\r\n\r\n#footer-menu li > a,\r\n#footer-menu li.sectionheader > span {\r\n	color: [[$dark_grey]];\r\n	display: block;\r\n	text-decoration: none;\r\n}\r\n\r\n#footer-menu li > a:hover,\r\n#footer-menu li > a.current,\r\n#footer-menu li.sectionheader > span:hover,\r\n#footer-menu li.sectionheader > span.current {\r\n	color: [[$orange]];\r\n} \r\n\r\n#footer-menu > li > a,\r\n#footer-menu > li.sectionheader > span {\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	display: block;\r\n}\r\n\r\n#footer-menu > li > ul > li > a,\r\n#footer-menu > li > ul > li.sectionheader > span {\r\n	font-size: .875em; [[* /* 14px */ *]]\r\n	padding: 2px 0;\r\n}\r\n\r\n#footer-menu > li > ul {\r\n	margin: 15px 0;\r\n}\r\n\r\n[[* /* =====================================\r\n SCREENS BIGGER THAN 768px\r\n ===================================== */ *]]\r\n\r\n@media screen and (min-width: 768px) {\r\n\r\n	.lt-768 {\r\n		display: none;\r\n	}\r\n\r\n	.logo {\r\n		margin-top: 12px;\r\n		position: relative;\r\n		text-align: left;\r\n	}\r\n\r\n	[[* /* having some fun with palm, rotating with css3, will not work in IE */ *]]\r\n	.logo .palm {\r\n		position: absolute;\r\n		top: 5px;\r\n		left: 45px;\r\n		background: url([[$path]]/palm-circle.png) no-repeat;\r\n		display: block;\r\n		width: 48px;\r\n		height: 48px;\r\n		transition: transform 0.6s ease-out;\r\n		-webkit-transition: -webkit-transform 0.6s ease-out;\r\n		-moz-transition: -moz-transform 0.6s ease-out;\r\n		-o-transition: -o-transform 0.6s ease-out;\r\n		-webkit-perspective: 1000;\r\n		-webkit-backface-visibility: hidden;\r\n	}\r\n\r\n	[[* /* css3 transform rotating palm on hover */ *]]\r\n	.logo a:hover .palm {\r\n		transform: rotate(360deg);\r\n		-webkit-transform: rotate(360deg);\r\n		-moz-transform: rotate(360deg);\r\n		-o-transform: rotate(360deg);\r\n	}\r\n\r\n	[[* /* ------ NAVIGATION ------ */ *]]\r\n\r\n	nav.main-navigation {\r\n		z-index: 990;\r\n		height: 55px;\r\n		line-height: 37px;\r\n		margin-top: 20px;\r\n	}\r\n\r\n	#main-menu {\r\n		float: right;\r\n		margin-top: 0;\r\n	}\r\n	\r\n	[[* /* --- FIRST LEVEL --- */ *]]\r\n	#main-menu > li {\r\n		display: inline-block;\r\n		padding: 0;\r\n		margin: 0 4px;\r\n		border: none;\r\n		position: relative;\r\n	}\r\n	\r\n	[[* /* PARENT INICATOR */ *]]\r\n	#main-menu > li i {\r\n		display: none;\r\n	}\r\n	\r\n	.touch-device #main-menu > li i {\r\n		display: inline-block;\r\n		float: none;\r\n	}\r\n	\r\n	.touch-device #main-menu > li li i {\r\n		float: left;\r\n		display: inline-block;\r\n		margin-right: 8px;\r\n		padding-top: 2px;\r\n		text-align: left;\r\n	}\r\n	\r\n	.touch-device #main-menu > li:first-child li i {\r\n		float: right;\r\n	}\r\n\r\n	#main-menu > li:first-child, #main-menu > li.first {\r\n		margin-left: 0;\r\n	}\r\n\r\n	#main-menu > li:last-child, #main-menu > li.last {\r\n		margin-right: 0;\r\n	}\r\n\r\n	#main-menu > li > a, \r\n	#main-menu > li.sectionheader span {\r\n		padding: 0 6px 0 10px;\r\n		line-height: 37px;\r\n		font-size: 1em;\r\n	}\r\n\r\n	#main-menu > li.parent:hover > a, \r\n	#main-menu > li.sectionheader.parent:hover > span,\r\n	#main-menu > li.parent.active > a, \r\n	#main-menu > li.parent.active > span {\r\n		color: [[$white]];\r\n		background-color: [[$dark_grey]];\r\n		background-color: rgba(85, 85, 85, .95);\r\n	}\r\n\r\n	[[* /* --- SECOND LEVEL --- */ *]]\r\n	#main-menu > li > ul,\r\n	#main-menu > li > ul > li > ul [[* /* third level */ *]] {\r\n		display: block;\r\n		width: 260px;\r\n	}\r\n\r\n	#main-menu > li:hover > ul,\r\n	#main-menu > li.active > ul,\r\n	#main-menu > li > ul > li:hover > ul,\r\n	#main-menu > li > ul > li.active > ul {\r\n		height: auto;\r\n		position: absolute;\r\n		z-index: 9999;\r\n		top: 37px;\r\n		right: 0;\r\n		left: auto;\r\n		display: block;\r\n		border-radius: 3px;\r\n	}\r\n	\r\n	#main-menu > li:first-child:hover > ul,\r\n	#main-menu > li:first-child.active > ul {\r\n		right: auto;\r\n		left: 0;\r\n	}\r\n	\r\n	#main-menu > li > ul > li {\r\n		position: relative;\r\n		line-height: 1;\r\n		margin: 0;\r\n		padding-left: 10px;\r\n	}\r\n	\r\n	#main-menu > li:first-child > ul > li {\r\n		padding-right: 10px;\r\n		padding-left: 0;\r\n	}\r\n	\r\n	#main-menu > li > ul > li > a,\r\n	#main-menu > li > ul > li.sectionheader > span,\r\n	#main-menu > li > ul > li > ul > li > a,\r\n	#main-menu > li > ul > li > ul > li.sectionheader > span {\r\n		color: [[$white]];\r\n		display: block;\r\n		text-transform: none;\r\n		line-height: 1.2;\r\n		border-bottom: 1px dotted #858585;\r\n		background-color: [[$dark_grey]];\r\n		background-color: rgba(90, 90, 90, .98);\r\n		padding: 8px 12px;\r\n		font-size: .875em; [[* /* 14px */ *]]\r\n		text-decoration: none;\r\n	}\r\n	\r\n	#main-menu > li > ul > li.current > a, \r\n	#main-menu > li > ul > li.current.sectionheader > span,\r\n	#main-menu > li > ul > li > ul > li.current > a, \r\n	#main-menu > li > ul > ul > li > li.current.sectionheader > span {\r\n		color: [[$orange]];\r\n	}\r\n\r\n	[[* /* THIRD LEVEL */ *]]\r\n	#main-menu > li > ul > li:hover > ul,\r\n	#main-menu > li > ul > li.active > ul {\r\n		width: 250px;\r\n		height: auto;\r\n		top: 0;\r\n		right: auto;\r\n		left: -250px;\r\n	}\r\n	\r\n	#main-menu > li:first-child > ul > li:hover > ul,\r\n	#main-menu > li:first-child > ul > li.active > ul {\r\n		left: auto;\r\n		right: -250px;\r\n	}\r\n	\r\n	.lt-ie9 #main-menu > li > ul > li:hover > ul,\r\n	.lt-ie9 #main-menu > li > ul > li.active > ul {\r\n		left: -247px;\r\n	}\r\n\r\n	#main-menu > li > ul > li:hover > ul:after,\r\n	#main-menu > li > ul > li.active > ul:after {\r\n		content: \' \';\r\n		width: 0px;\r\n		height: 0px;\r\n		border-style: solid;\r\n		border-width: 7px 0 7px 6px;\r\n		border-color: transparent transparent transparent [[$dark_grey]];\r\n		border-color: transparent transparent transparent rgba(85, 85, 85, .95);\r\n		position: absolute;\r\n		right: -6px;\r\n		top: 12px;\r\n	}\r\n	\r\n	.lt-ie9 #main-menu > li:first-child > ul > li:hover > ul,\r\n	.lt-ie9 #main-menu > li:first-child > ul > li.active > ul {\r\n		left: auto;\r\n		right: -247px;\r\n	}\r\n	\r\n	#main-menu > li:first-child > ul > li:hover > ul:after,\r\n	#main-menu > li:first-child > ul > li.active > ul:after {\r\n		left: -10px;\r\n		right: auto;\r\n	}\r\n\r\n	#main-menu li ul li a:hover, \r\n	#main-menu li ul li span.sectionheader:hover {\r\n		box-shadow: 0 0 5px rgba(85, 85, 85, .9);\r\n		z-index: 2px;\r\n	}\r\n\r\n	#main-menu > ul > li:last-child > a,\r\n	#main-menu > ul > li.sectionheader:last-child > span,\r\n	#main-menu > ul > li > ul > li:last-child > a,\r\n	#main-menu > ul > li > ul > li.sectionheader:last-child > span {\r\n		border-bottom: none;\r\n	}\r\n\r\n	.header-bottom {\r\n		height: 55px;\r\n		line-height: 55px;\r\n		padding: 8px 0;\r\n	}\r\n	\r\n	.phrase-text {\r\n		text-align: left;\r\n	}\r\n\r\n	input.search-input {\r\n		height: 17px;\r\n		line-height: 17px;\r\n		width: 100%;\r\n		max-width: 320px;\r\n	}\r\n	\r\n	input.search-input:focus {\r\n		max-width: 90%;\r\n	}\r\n	\r\n	[[* /* print button */ *]]\r\n	a.printbutton {\r\n		display: block;\r\n		padding-left: 6px;\r\n		width: 16px;\r\n		height: 16px;\r\n		float: right;\r\n		text-decoration: none;\r\n		color: [[$dark_grey]];\r\n		background-color: [[$white]];\r\n		z-index: 1;\r\n		position: relative;\r\n	}\r\n	\r\n	a.printbutton i {\r\n		display: inline-block;\r\n		-webkit-transform: rotateY(0deg);\r\n		-moz-transform: rotateY(0deg);\r\n		-ms-transform: rotateY(0deg);\r\n		-o-transform: rotateY(0deg);\r\n		transform: rotateY(0deg);\r\n		-webkit-transition: -webkit-transform 250ms ease-out 0s;\r\n		-moz-transition: -moz-transform 250ms ease-out 0s;\r\n		-o-transition: -o-transform 250ms ease-out 0s;\r\n		transition: transform 250ms ease-out 0s;\r\n	}\r\n	\r\n	a.printbutton:hover {\r\n		color: [[$orange]];\r\n	}\r\n	\r\n	a.printbutton:hover i {\r\n		-webkit-transform: rotateY(360deg);\r\n		-moz-transform: rotateY(180deg);\r\n		-ms-transform: rotateY(360deg);\r\n		-o-transform: rotateY(360deg);\r\n		transform: rotateY(360deg);\r\n	}\r\n	\r\n	[[* /* --- FOOTER --- */ *]]\r\n	\r\n	.footer ul.social {\r\n		text-align: left;\r\n	}\r\n	\r\n	.footer .social li a i {\r\n		display: inline-block;\r\n		-webkit-transform: rotateY(0deg);\r\n		-moz-transform: rotateY(0deg);\r\n		-ms-transform: rotateY(0deg);\r\n		-o-transform: rotateY(0deg);\r\n		transform: rotateY(0deg);\r\n		-webkit-transition: -webkit-transform 250ms ease-out 0s;\r\n		-moz-transition: -moz-transform 250ms ease-out 0s;\r\n		-ms-transition: -moz-transform 250ms ease-out 0s;\r\n		-o-transition: -o-transform 250ms ease-out 0s;\r\n		transition: transform 250ms ease-out 0s;\r\n	}\r\n	\r\n	.footer .social li a:hover i {\r\n		-webkit-transform: rotateY(360deg);\r\n		-moz-transform: rotateY(180deg);\r\n		-ms-transform: rotateY(360deg);\r\n		-o-transform: rotateY(360deg);\r\n		transform: rotateY(360deg);\r\n	}\r\n	\r\n	[[* /* --- Footer Navigation --- */ *]]\r\n	\r\n	.footer-navigation {\r\n		border-bottom: none;\r\n	}\r\n	\r\n	#footer-menu > li {\r\n		float: left;\r\n		display: block;\r\n		position: relative;\r\n		margin-left: 3.8%;\r\n		width: 30.75%;\r\n	}\r\n	\r\n	#footer-menu > li:first-child {\r\n		margin-left: 0;\r\n	} \r\n}\r\n\r\n[[* /* ================================================\r\n WHEN LAYOUT BREAKS IT\'S TIME FOR NEW MEDIA QUERY\r\n ================================================== */ *]]\r\n@media only screen and (max-width: 780px) {\r\n\r\n	.search {\r\n		margin-top: 15px;\r\n	}\r\n	\r\n	input.search-input {\r\n		width: 100%;\r\n		max-width: 100%;\r\n		float: left;\r\n	}\r\n	\r\n	input.search-input:focus {\r\n		max-width: none;\r\n	}\r\n	\r\n	.header-bottom {\r\n		padding-top: 20px;\r\n		text-align: center;\r\n		line-height: inherit;\r\n		padding: 20px 0;\r\n	}\r\n\r\n	\r\n}\r\n\r\n@media only screen and (min-width: 940px) and (max-width: 1110px) {\r\n	\r\n	#main-menu > li {\r\n		margin: 0;\r\n	}\r\n	\r\n	#main-menu > li > a, \r\n	#main-menu > li.sectionheader span {\r\n		padding: 0 6px;\r\n	}\r\n}\r\n\r\n@media only screen and (min-width: 768px) and (max-width: 1050px) {\r\n	\r\n	.row nav.main-navigation {\r\n		height: auto;\r\n		float: none;\r\n		display: block;\r\n		margin-left: 0;\r\n		width: 100%;\r\n		clear: left;\r\n	}\r\n	\r\n	#main-menu {\r\n		margin-top: 15px;\r\n		margin-bottom: 15px;\r\n		border-bottom: 1px solid [[$light_grey]];\r\n		float: none;\r\n		display: block;\r\n		\r\n	}\r\n	\r\n	#main-menu > li {\r\n		margin: 0;\r\n		bottom: -1px;\r\n		text-align: center;\r\n		border-bottom: 1px solid [[$light_grey]];\r\n		border-right: 1px solid [[$light_grey]];\r\n		border-top: 1px solid [[$light_grey]];\r\n	}\r\n	\r\n	#main-menu > li.current {\r\n		border-bottom-color: [[$white]];\r\n		border-top-color: [[$orange]];\r\n	}\r\n	\r\n	#main-menu > li.current > a {\r\n		border-top: 1px solid [[$orange]];\r\n		line-height: 45px;\r\n	}\r\n	\r\n	#main-menu > li:first-child {\r\n		border-left: 1px solid [[$light_grey]];\r\n	}\r\n	\r\n	#main-menu > li > a,\r\n	#main-menu > li > span {\r\n		line-height: 46px;\r\n		padding-left: 12px;\r\n		padding-right: 6px;\r\n	}\r\n	\r\n	#main-menu > li:hover > ul,\r\n	#main-menu > li.active > ul {\r\n		top: 45px;\r\n	}\r\n\r\n	.header-bottom {\r\n		height: auto;\r\n	}\r\n	\r\n	.row .seven-col.phrase-text,\r\n	.row .five-col.search {\r\n		display: block;\r\n		float: none;\r\n		width: 100%;\r\n		margin-left: 0;\r\n		text-align: center;\r\n	}\r\n}\r\n\r\n[[* /* ================================================\r\n WINDOWS 8 SNAP VIEW (yeah yeah W3C blah blah)\r\n ================================================== */ *]]\r\n@-ms-viewport {\r\n	width: device-width;\r\n}\r\n\r\n@-o-viewport {\r\n	width: device-width;\r\n}\r\n\r\n@-moz-viewport {\r\n	width: device-width;\r\n}\r\n\r\n@-webkit-viewport {\r\n	width: device-width;\r\n}\r\n\r\n@viewport {\r\n	width: device-width;\r\n}\r\n[[/strip]]', 'Simplex Theme main layout Stylesheet', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('19', 'Simplex Slideshow', '[[strip]]\r\n\r\n[[* /* ------ BANNER AREA ------ */  *]]\r\n.banner {\r\n	background: #fefefe; \r\n	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZlZmVmZSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjQ3JSIgc3RvcC1jb2xvcj0iI2YxZjFmMSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiNlOWU5ZTkiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);\r\n	background: -moz-linear-gradient(top,  #fefefe 0%, #f1f1f1 47%, #e9e9e9 100%);\r\n	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fefefe), color-stop(47%,#f1f1f1), color-stop(100%,#e9e9e9)); \r\n	background: -webkit-linear-gradient(top,  #fefefe 0%,#f1f1f1 47%,#e9e9e9 100%);\r\n	background: -o-linear-gradient(top,  #fefefe 0%,#f1f1f1 47%,#e9e9e9 100%); \r\n	background: -ms-linear-gradient(top,  #fefefe 0%,#f1f1f1 47%,#e9e9e9 100%);\r\n	background: linear-gradient(to bottom,  #fefefe 0%,#f1f1f1 47%,#e9e9e9 100%); \r\n}\r\n\r\n.lt-ie9 .banner {\r\n	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#fefefe\', endColorstr=\'#e9e9e9\',GradientType=0 );\r\n}\r\n\r\n#sx-slides {\r\n	position: relative;\r\n	overflow: hidden;\r\n	width: 100%;\r\n	margin: 0 auto;\r\n	position: relative;\r\n	height: 380px;\r\n}\r\n\r\n#sx-slides > .sequence-canvas {\r\n	height: 100%;\r\n	width: 100%;\r\n	margin: 0;\r\n	padding: 0;\r\n	list-style: none;\r\n}\r\n\r\n#sx-slides > .sequence-canvas > li {\r\n	position: absolute;\r\n	width: 100%;\r\n	height: 100%;\r\n	z-index: 1;\r\n	top: -50%;\r\n}\r\n\r\n#sx-slides > .sequence-canvas > li img {\r\n	height: 96%;\r\n}\r\n\r\n#sx-slides > .sequence-canvas li > * {\r\n	position: absolute;\r\n	-webkit-transition-property: left, bottom, right, top, -webkit-transform, opacity;\r\n	-moz-transition-property: left, bottom, right, top, -moz-opacity;\r\n	-ms-transition-property: left, bottom, right, top, -ms-opacity;\r\n	-o-transition-property: left, bottom, right, top, -o-opacity;\r\n	transition-property: left, bottom, right, top, transform, opacity;\r\n}\r\n\r\n#sx-slides .title {\r\n	color: [[$orange]];\r\n	font-size: 2.25em;\r\n	line-height: 1.1;\r\n	font-weight: 700;\r\n	left: 65%;\r\n	opacity: 0;\r\n	bottom: 22%;\r\n	z-index: 50;\r\n	margin-top: 0;\r\n}\r\n\r\n#sx-slides .animate-in .title {\r\n	left: 12%;\r\n	opacity: 1;\r\n	-webkit-transition-duration: 0.8s;\r\n	-moz-transition-duration: 0.8s;\r\n	-ms-transition-duration: 0.8s;\r\n	-o-transition-duration: 0.8s;\r\n	transition-duration: 0.8s;\r\n}\r\n\r\n#sx-slides .animate-out .title {\r\n	left: 35%;\r\n	opacity: 0;\r\n	-webkit-transition-duration: 0.3s;\r\n	-moz-transition-duration: 0.3s;\r\n	-ms-transition-duration: 0.3s;\r\n	-o-transition-duration: 0.3s;\r\n	transition-duration: 0.3s;\r\n}\r\n\r\n#sx-slides .subtitle {\r\n	margin-top: 0;\r\n	z-index: 5;\r\n	color: [[$dark_grey]];\r\n	font-family: \'Oswald\', Impact, Haettenschweiler, \'Arial Narrow Bold\', sans-serif;\r\n	font-weight: 700;\r\n	font-size: 1.8125em;\r\n	left: 35%;\r\n	opacity: 0;\r\n	top: 72%;\r\n}\r\n\r\n#sx-slides .animate-in .subtitle {\r\n	left: 20%;\r\n	opacity: 1;\r\n	-webkit-transition-duration: 1.3s;\r\n	-moz-transition-duration: 1.3s;\r\n	-ms-transition-duration: 1.3s;\r\n	-o-transition-duration: 1.3s;\r\n	transition-duration: 1.3s;\r\n}\r\n\r\n#sx-slides .animate-out .subtitle {\r\n	left: 65%;\r\n	opacity: 0;\r\n	-webkit-transition-duration: 0.8s;\r\n	-moz-transition-duration: 0.8s;\r\n	-ms-transition-duration: 0.8s;\r\n	-o-transition-duration: 0.8s;\r\n	transition-duration: 0.8s;\r\n}\r\n\r\n\r\n#sx-slides .image {\r\n	left: -10px;\r\n	position: absolute;\r\n	bottom: 800px;\r\n	-webkit-transform: rotate(-90deg);\r\n	-moz-transform: rotate(-90deg);\r\n	-ms-transform: rotate(-90deg);\r\n	-o-transform: rotate(-90deg);\r\n	transform: rotate(-90deg);\r\n	opacity: 0;\r\n	max-width: 70%;\r\n	height: auto !important;\r\n	max-height: 275px !important;\r\n}\r\n\r\n#sx-slides .animate-in .image {\r\n	left: 14%;\r\n	bottom: -49%;\r\n	opacity: 1;\r\n	-webkit-transform: rotate(0deg);\r\n	-moz-transform: rotate(0deg);\r\n	-ms-transform: rotate(0deg);\r\n	-o-transform: rotate(0deg);\r\n	transform: rotate(0deg);\r\n	-webkit-transition-duration: 2s;\r\n	-moz-transition-duration: 2s;\r\n	-ms-transition-duration: 2s;\r\n	-o-transition-duration: 2s;\r\n	transition-duration: 2s;\r\n}\r\n\r\n#sx-slides .animate-out .image {\r\n	left: -10px;\r\n	bottom: -800px;\r\n	opacity: 0;\r\n	-webkit-transform: rotate(-90deg);\r\n	-moz-transform: rotate(-90deg);\r\n	-ms-transform: rotate(-90deg);\r\n	-o-transform: rotate(-90deg);\r\n	transform: rotate(-90deg);\r\n	-webkit-transition-duration: 1s;\r\n	-moz-transition-duration: 1s;\r\n	-ms-transition-duration: 1s;\r\n	-o-transition-duration: 1s;\r\n	transition-duration: 1s;\r\n}\r\n\r\n@media only screen and (min-width: 768px) {\r\n	\r\n	#sx-slides .title {\r\n		font-size: 3em;\r\n	}\r\n\r\n	#sx-slides .animate-in .title {\r\n		left: 3%;\r\n	}\r\n	\r\n	#sx-slides .subtitle {\r\n		font-size: 2.5em;\r\n	}\r\n	\r\n	#sx-slides .animate-in .subtitle {\r\n		left: 8%;\r\n	}\r\n\r\n	#sx-slides .image {\r\n		left: auto;\r\n		right: -10px;\r\n		position: absolute;\r\n		max-width: 70%;\r\n		height: auto !important;\r\n		max-height: 300px !important;\r\n	}\r\n	\r\n	#sx-slides .animate-in .image {\r\n		left: auto;\r\n		right: 5%;\r\n		bottom: -45%;\r\n	}\r\n	\r\n	#sx-slides .animate-out .image {\r\n		left: auto;\r\n		bottom: -800px;\r\n	}\r\n}\r\n\r\n@media only screen and (min-width: 1050px) {\r\n	\r\n	#sx-slides {\r\n		height: 440px;\r\n	}\r\n	\r\n	#sx-slides .title {\r\n		font-size: 3.25em;\r\n		bottom: 15%;\r\n	}\r\n\r\n	#sx-slides .animate-in .title {\r\n		left: 8%;\r\n	}\r\n	\r\n	#sx-slides .subtitle {\r\n		font-size: 2.875em;\r\n		top: 78%\r\n	}\r\n	\r\n	#sx-slides .animate-in .subtitle {\r\n		left: 12%;\r\n	}\r\n\r\n	#sx-slides .image {\r\n		max-width: 90%;\r\n		height: auto !important;\r\n		max-height: 400px !important;\r\n	}\r\n}\r\n\r\n[[/strip]]', 'Simplex Theme Stylesheet for header slideshow', 'screen', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_stylesheets` VALUES ('20', 'Simplex Print', '[[strip]]\r\n\r\n[[* /* reset body background and color, just in case */ *]]\r\nbody {\r\n    background: #fff;\r\n    color: #000;\r\n    font-family: Georgia, Times New Roman, serif;\r\n    font-size: 12pt\r\n}\r\n[[* /* any element with class noprint or listed below should not be printed */ *]]\r\n.noprint,\r\n.visuallyhidden {\r\n    display: none\r\n}\r\n[[* /* display image as block */ *]]\r\nimg {\r\n    display: block;\r\n    float: none\r\n}\r\n[[* /* links arent clickable on paper, lets display url */ *]]\r\na:link:after {\r\n    content: " (" attr(href) ") ";\r\n}\r\na {\r\n    text-decoration: underline\r\n}\r\n\r\n[[/strip]]', 'Default Print style rules attached to Simplex Design', 'print', NULL, '1490362416', '1490362416') ;
#
# End of data contents of table `cms_layout_stylesheets`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_layout_templates`
# --------------------------------------------------------


#
# Delete any existing table `cms_layout_templates`
#

DROP TABLE IF EXISTS `cms_layout_templates`;


#
# Table structure of table `cms_layout_templates`
#

CREATE TABLE `cms_layout_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` longtext,
  `description` text,
  `type_id` int(11) NOT NULL,
  `type_dflt` tinyint(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `listable` tinyint(4) DEFAULT '1',
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_idx_layout_tpl_1` (`name`),
  KEY `cms_idx_layout_tpl_2` (`type_id`,`type_dflt`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_layout_templates` (29 records)
#
 
INSERT INTO `cms_layout_templates` VALUES ('1', 'footer', '<p>&copy; Copyright {custom_copyright} - CMS Made Simple<br />\r\nThis site is powered by <a class="external" href="http://www.cmsmadesimple.org">CMS Made Simple</a> version {cms_version}</p>', NULL, '2', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('2', 'Minimal', '{process_pagedata}\n<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n<head>\n\n<title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n{metadata}\n{* Don\\\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n{cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to *}\n\n</head>\n\n<body>\n\n      {* Start Navigation *}\n      <div style="float: left; width: 25%;">\n         {Navigator loadprops=0 template=\'minimal_menu\'}\n      </div>\n      {* End Navigation *}\n\n      {* Start Content *}\n      <div>\n         <h2>{title}</h2>\n         {content} \n      </div>\n      {* End Content *}\n\n</body>\n</html>', 'A Simple, minimal page template', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('3', 'CSSMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n{* first out side div/box *}\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation CSSMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {Navigator loadprops=0 template=\'cssmenu\'}\n            <hr class="accessibility" />\n{* End Navigation *}\n\n{* Start News, stylesheet  "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p> {cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', 'This is a drop-down menu that is using only CSS (although some Javascript is required for Internet Explorer 6, note: IE6 will not let you use 2 of these menu types in a template at the same time as the second one will fail to open). It can be either vertical or horizontal.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('4', 'CSSMenu top + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_vert">\n{* stylesheet  "Navigation CSSMenu - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {Navigator loadprops=0 template=\'cssmenu\'}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content *}\n      <div id="content">\n\n{* Start Sidebar *}\n        <div id="sidebar">\n          <div id="sidebarb">\n          {content block=\'Sidebar\'}\n\n{* Start News, stylesheet  "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p>{cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', 'This is a drop-down menu that is using only CSS (although some Javascript is required for Internet Explorer 6, note: IE6 will not let you use 2 of these menu types in a template at the same time as the second one will fail to open). It can be either vertical or horizontal.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('5', 'Left simple navigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,1200));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Left sidebar + 1 column" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* anything with class="accessibility is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1> \n       \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Navigation</h2>\n              {Navigator loadprops=0 template=\'Simple Navigation\' collapse=\'1\'}\n            </div>\n{* End Navigation *}\n\n{* Start News, style sheet "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area *}\n{* again 2 divs to hold top and bottom images, back is set to go to the right side then the main is set to come off the right side *}\n        <div class="back">        \n          <div id="main">\n            <h2>{title}</h2>\n            {content}\n            <br />\n{* this break is just to make sure we get space after the content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n\n            <div class="left49">\n              <p>{cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n            <hr class="accessibility" />\n          </div>\n        </div>\n{* End Content Area *}\n\n        <div class="clear"></div>\n{* this is to make sure the 2 divs stay tight *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n  </body>\n</html>', 'This template has the menu in left sidebar. The menu is using the Simple Navigation menu template. It is styled in the stylesheet called Navigation Simple - Vertical.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('6', 'Top simple navigation + left subnavigation + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Top menu + 2 columns" *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *\n}\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>\n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation *}\n      <div id="menu_horiz">\n{* stylesheet  "Navigation Simple - Horizontal" *}\n        <h2 class="accessibility">Navigation</h2>\n        {Navigator loadprops=0 template=\'Simple Navigation\' number_of_levels=\'1\'}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Sub Navigation, stylesheet  "Navigation Simple - Vertical" *}\n            <div id="menu_vert">\n              <h2 class="accessibility">Sub Navigation</h2>\n              {Navigator loadprops=0 template=\'Simple Navigation\' start_level=\'2\' collapse=\'1\'}\n                <hr class="accessibility" />\n            </div>\n{* End Sub Navigation *}\n\n{* Start News, style sheet "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p>{cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer  *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', 'With the Menu Manager you can easily split the navigation in two parts. On this page the top level in the page hierarchy is displayed horizontally and depending on what page is displayed a localized sub-menu is displayed vertically to the left.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('7', 'ShadowMenu Tab + 2 columns', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Top menu + 2 columns" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Navigation, stylesheet "Navigation ShadowMenu - Horizontal" *}\n      <div id="menu_vert">\n        <h2 class="accessibility">Navigation</h2>\n        {Navigator loadprops=0 template=\'cssmenu_ulshadow\'}\n        <hr class="accessibility" />\n      </div>\n{* End Navigation *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content *}\n      <div id="content">\n\n{* Start Sidebar *}\n        <div id="sidebar">\n          <div id="sidebarb">\n          {content block=\'Sidebar\'}\n\n{* Start News, stylesheet  "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p>{cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', 'Using the same menu template as the previous theme. We changed the child ul CSS to use a different top image. This involves changing some of the margin and padding as the images are a different shape. Note the difference in the second level and third level ul images, one has an arrow up and the other has an arrow left.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('8', 'ShadowMenu left + 1 column', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n\n  <head>\n    <title>{sitename} - {title}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n {metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n {cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to it *}\n\n {cms_selflink dir="start" rellink=1}\n {cms_selflink dir="prev" rellink=1}\n {cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optimization *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n {literal}\n<script type="text/JavaScript">\n<!--\n//pass min and max - measured against window width\nfunction P7_MinMaxW(a,b){\nvar nw="auto",w=document.documentElement.clientWidth;\nif(w>=b){nw=b+"px";}if(w<=a){nw=a+"px";}return nw;\n}\n//-->\n</script>\n    <!--[if lte IE 6]>\n    <style type="text/css">\n    #pagewrapper {width:expression(P7_MinMaxW(720,950));}\n    #container {height: 1%;}\n    </style>\n    <![endif]-->\n    {/literal}\n{* The min and max page width for Internet Explorer is set here. For other browsers it\'s in the stylesheet "Layout Top menu + 2 columns" *}\n\n    <!--[if lte IE 6]>\n    <script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n    <![endif]--> \n{* The above JavaScript is required for CSSMenu to work in IE *}\n\n  </head>\n  <body>\n    <div id="pagewrapper">\n\n{* start accessibility skip links, anything with the class of accessibility is hidden with CSS from visual browsers *}\n      <ul class="accessibility">\n        <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n        <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n      </ul>\n{* end accessibility skip links *}\n\n      <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page. Logo image is changed in the stylesheet  "Layout Left sidebar + 1 column" *}\n      <div id="header">\n\n{* this holds the name of the site on the right side *}\n        <h2 class="headright">{sitename}</h2>\n\n{* this holds a link back to home page and the header left image/logo, text is hidden using CSS *}\n        <h1>{cms_selflink dir="start" text="$sitename"}</h1>        \n        <hr class="accessibility" />\n      </div>\n{* End Header *}\n\n{* Start Search, the input "Submit" is using an image, CSS: input.search-button *}\n      <div id="search">\n      {Search}\n      </div>\n{* End Search *}\n\n{* Start Breadcrumbs *}\n      <div class="crbk">\n{* holds the right image, we need 2 divs to be able to make this site fluid, if it was fixed width we could use one div, one image  *}\n\n        <div class="breadcrumbs">\n        {nav_breadcrumbs root=\'Home\'}\n          <hr class="accessibility" />\n        </div>\n      </div>\n{* End Breadcrumbs *}\n\n{* Start Content (Navigation and Content columns) *}\n      <div id="content">\n\n{* Start Sidebar, 2 divs one for top image one for bottom image *}\n        <div id="sidebar">\n          <div id="sidebara">\n\n{* Start Navigation, stylesheet  "Navigation ShadowMenu - Vertical" *}\n            <h2 class="accessibility">Navigation</h2>\n            {Navigator loadprops=0 template=\'cssmenu_ulshadow\'}\n            <hr class="accessibility" />\n\n{* Start News, stylesheet  "Module News" *}\n            <div id="news">\n              <h2>News</h2>\n              {News number=\'3\' detailpage=\'news\'}\n            </div>\n{* End News *}\n\n          </div>\n        </div>\n{* End Sidebar *}\n\n{* Start Content Area, the back1, back2, back3, hold the 3 outside images, main holds the 4th one, to make the box complete, if the template were fixed width not fluid we could use just 2 divs and 2 images, 1 top 1 bottom *}\n        <div class="back1">\n          <div class="back2">\n            <div class="back3">\n              <div id="main">\n                <h2>{title}</h2>\n                {content}\n                <br />{* to insure space below content *}\n\n{* Start relational links *}\n{* note this is the right side, when you float: divs you need to have float: right; divs first *}\n            <div class="right49">\n              <p>{anchor anchor=\'main\' text=\'^ Top\'}</p>\n            </div>\n            <div class="left49">\n              <p>{cms_selflink dir="previous"}\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n\n              <br />\n              {cms_selflink dir="next"}\n              </p>\n            </div>\n{* End relational links *}\n\n                <hr class="accessibility" />\n                <div class="clear"></div>\n              </div>\n            </div>\n          </div>\n        </div>\n{* End Content Area *}\n\n      </div>\n{* End Content *}\n\n{* Start Footer. Edit the footer in the Global Content Block called "footer" *}\n      <div class="footback">\n        <div id="footer">\n{* stylesheet  "Navigation FatFootMenu" *}\n          <div id="fooleft">\n          {Navigator loadprops=0}\n          </div>\n          <div id="footrt">\n          {global_content name=\'footer\'}\n          </div>\n          <div class="clear"></div>\n        </div>\n      </div>\n{* End Footer *}\n\n    </div>\n{* end pagewrapper *}\n\n  </body>\n</html>', 'Using the same menu template as the previous theme. We changed the child ul CSS to use a different top image. This involves changing some of the margin and padding as the images are a different shape. Note the difference in the second level and third level ul images, one has an arrow up and the other has an arrow left.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('9', 'NCleanBlue', '{process_pagedata}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"\n"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">\n{* Change lang="en" to the language of your site *}\n\n{* note: anything inside these are smarty comments, they will not show up in the page source *}\n  <head>\n{if isset($canonical)}<link rel="canonical" href="{$canonical}" />{elseif isset($content_obj)}<link rel="canonical" href="{$content_obj->GetURL()}" />{/if}\n\n<title>{title} | {sitename}</title>\n{* The sitename is changed in Site Admin/Global settings. {title} is the name of each page *}\n\n{metadata}\n{* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\n\n{cms_stylesheet}\n{* This is how all the stylesheets attached to this template are linked to *}\n\n{cms_selflink dir="start" rellink=1}\n{cms_selflink dir="prev" rellink=1}\n{cms_selflink dir="next" rellink=1}\n{* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\n\n<!--[if IE 6]>\n<script type="text/javascript" src="modules/MenuManager/CSSMenu.js"></script>\n<![endif]-->\n{* The above JavaScript is required for Menu - NCleanBlue-css to work in IE6 *}\n\n{* the literal below and the /literal at the end are needed whenever there are {"curly brackets"} as smarty will think it\'s something to process and will throw an error *}\n{* IE6 png fix *}\n{literal}\n<!--[if IE 6]>\n<script type="text/javascript"  src="uploads/NCleanBlue/js/ie6fix.js"></script>\n<script type="text/javascript">\n // argument is a CSS selector\n DD_belatedPNG.fix(\'.sbar-top,.sbar-bottom,.main-top,.main-bottom,#version\');\n</script>\n<style type="text/css">\n/* enable background image caching in IE6 */\nhtml {filter:expression(document.execCommand("BackgroundImageCache", false, true));} \n</style>\n<![endif]-->\n{/literal}\n\n  </head>\n  <body>\n    <div id="ncleanblue">\n      <div id="pagewrapper" class="core-wrap-960 core-center">\n{* start accessibility skip links *}\n        <ul class="accessibility">\n          <li>{anchor anchor=\'menu_vert\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\n          <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\n        </ul>\n{* end accessibility skip links *}\n        <hr class="accessibility" />\n{* Horizontal ruler that is hidden for visual browsers by CSS *}\n\n{* Start Header, with logo image that links to the default start page *}\n        <div id="header" class="util-clearfix">\n{* logo image that links to the default start page. Logo image is changed in the style sheet  "Layout NCleanBlue" *}\n          <div id="logo" class="core-float-left">\n            {cms_selflink dir="start" text="$sitename"}\n          </div>\n          \n{* Start Search, the input "Submit" is using an image, CSS: div#search input.search-button *}\n          <div id="search" class="core-float-right">\n            {Search search_method="post"}\n          </div>\n{* End Search *}\n          <span class="util-clearb">&nbsp;</span>\n          \n{* Start Navigation, style sheet  "Layout NCleanBlue", starting at Menu  ROOT *}\n          <h2 class="accessibility util-clearb">Navigation</h2>\n{* anything class="accessibility" is hidden for visual browsers by CSS *}\n          <div class="page-menu util-clearfix">\n          {Navigator loadprops=0 template=\'cssmenu_ulshadow\'}\n          </div>\n          <hr class="accessibility util-clearb" />\n{* End Navigation *}\n\n        </div>\n{* End Header *}\n\n{* Start Content (Navigation and Content columns) *}\n        <div id="content" class="util-clearfix"> \n\n{* Start Optional tag CMS Version Information, also is a good example how smarty works, the big star that holds the version number, you may remove it here and the style sheet where it is marked. *}\n          <div title="CMS - {cms_version} - {cms_versionname}" id="version">\n          {capture assign=\'cms_version\'}{cms_version|lower}{/capture}{"/-([a-z]).*/"|preg_replace:"":$cms_version}\n          </div>\n{* End Optional tag  *}\n\n{* Start Bar *}\n          <div id="bar" class="util-clearfix">\n{* Start Breadcrumbs, a bit of letting you know where your at *}\n            <div class="breadcrumbs core-float-right">\n              {nav_breadcrumbs root=\'Home\'}\n            </div>\n{* End Breadcrumbs *}\n\n            <hr class="accessibility util-clearb" />\n          </div>\n{* End Bar *}\n\n{* Start left side *}\n          <div id="left" class="core-float-left">\n            <div class="sbar-top">\n              <h2 class="sbar-title">News</h2>\n            </div>\n            <div class="sbar-main">\n{* Start News *}\n              <div id="news">\n              {News number=\'3\' detailpage=\'news\'}\n              </div>\n              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - {cms_version} - {cms_versionname}" alt="CMS - {cms_version} - {cms_versionname}" />\n{* End News *} \n            </div>\n            <span class="sbar-bottom">&nbsp;</span> \n          </div>\n{* End left side *}\n\n{* Start Content Area, right side *}\n          <div id="main"  class="core-float-right">\n\n{* main top, holds top image *}\n            <div class="main-top">\n              </div> \n            \n{* main content *}\n            <div class="main-main util-clearfix">\n              <h1 class="title">{title}</h1>\n            {content}\n            </div>\n            \n{* Start main bottom and relational links *}\n            <div class="main-bottom">\n              <div class="right49 core-float-right">\n              {anchor anchor=\'main\' text=\'^&nbsp;&nbsp;Top\'}\n              </div>\n              <div class="left49 core-float-left">\n                <span>\n                  {cms_selflink dir="previous"}&nbsp;\n{* The label parameter doesn\'t need to be there if you\'re using English, but is here to show how it\'s used if you don\'t want the English text "Previous page" *}\n                </span>\n                <span>\n                  {cms_selflink dir="next"}&nbsp;\n                </span>\n              </div>\n{* End relational links *}\n\n              <hr class="accessibility" />\n            </div>\n{* End main bottom *}\n\n          </div>\n{* End Content Area, right side *}\n\n        </div>\n{* End Content *}\n\n      </div>\n{* end pagewrapper *}\n      <span class="util-clearb">&nbsp;</span>\n      \n{* Start Footer *}\n      <div id="footer-wrapper">\n        <div id="footer" class="core-wrap-960">\n{* first foot menu *}\n          <div class="block core-float-left">\n            {Navigator loadprops=0 template=\'minimal_menu\'  number_of_levels=\'1\'}\n          </div>\n          \n{* second foot menu if active page has children *}\n          <div class="block core-float-left">\n            {Navigator loadprops=0 template=\'minimal_menu\'  start_level="2"}\n          </div>\n          \n{* edit the footer in the Global Content Block called "footer" *}\n          <div class="block cms core-float-left">\n            {global_content name=\'footer\'}\n          </div>\n          \n          <span class="util-clearb">&nbsp;</span>\n        </div>\n      </div>\n{* End Footer *}\n    </div>\n{* End Div *}\n  </body>\n</html>', 'This one is using a new menu template so we can style the drop down for the children pages, using an image for the second ul going from the top down, it has an extra li at the bottom of the child pages ul <li class="separator once" style="list-style-type: none;">&nbsp; </li> this is used to hold the bottom image.', '1', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('10', 'Simplex', '{strip}\r\n{* used for page specific data or logic in Edit Content -> Logic *}\r\n{process_pagedata}\r\n\r\n{* ================\r\n   THEME LOGIC\r\n   ================ *}\r\n    \r\n{* With cms_lang_info we retrieve current language information, assign gives us $nls variable we can work with *}\r\n{cms_lang_info assign=\'nls\'}\r\n{* assigned url to theme related folder so we do not have to type full path each time *}\r\n{$theme_path = "{uploads_url}/simplex"}\r\n{* assigned content tag, now we have all smarty variables available anywhere in template *}\r\n{* assigned title tag to a variable which we can override with a module entry title for example *}\r\n{title assign=\'main_title\'}\r\n{content assign=\'main_content\'}\r\n{* assigned prev and next links so we don\'t have empty html tags if there is no previous or next page *}\r\n{cms_selflink dir=\'previous\' assign=\'prev_page\'}\r\n{cms_selflink dir=\'next\' assign=\'next_page\'}\r\n\r\n{* ensure that the smarty variables we created are copied to global scope for use elsewhere in the template *}\r\n{share_data scope=parent vars=\'nls,theme_path,main_title,main_content,prev_page,next_page\' scope=global}\r\n\r\n{* using strip as we don\'t want useless whitespace, especially not before doctype *}\r\n{/strip}<!doctype html>\r\n<!--[if IE 8]>         <html lang=\'{$nls->htmlarea()}\' dir=\'{$nls->direction()}\' class=\'lt-ie9\'> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html lang=\'{$nls->htmlarea()}\' dir=\'{$nls->direction()}\'> <!--<![endif]-->\r\n    <head>\r\n        <meta charset=\'{$nls->encoding()}\' />\r\n        {metadata} {* Don\'t remove this! Metadata is entered in Site Admin/Global settings. *}\r\n        <title>{$main_title nocache} - {sitename}</title>\r\n        <meta name=\'HandheldFriendly\' content=\'True\' />\r\n        <meta name=\'MobileOptimized\' content=\'320\' />\r\n        <meta name=\'viewport\' content=\'width=device-width, initial-scale=1\' />\r\n        <meta http-equiv=\'cleartype\' content=\'on\' />\r\n        <meta name=\'msapplication-TileImage\' content=\'{$theme_path}/images/icons/cmsms-152x152.png\' />\r\n        <meta name=\'msapplication-TileColor\' content=\'#5C5A59\' />\r\n        {if isset($canonical)}<link rel=\'canonical\' href=\'{$canonical}\' />{elseif isset($content_obj)}<link rel=\'canonical\' href=\'{$content_obj->GetURL()}\' />{/if} {* See in news detail template how cannonical url can be assigned from module *}\r\n        {cms_stylesheet} {* This is how all the stylesheets attached to this template are linked to *}\r\n        <link href=\'//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic|Oswald:700\' rel=\'stylesheet\' type=\'text/css\' />\r\n        <link rel=\'apple-touch-icon-precomposed\' sizes=\'152x152\' href=\'{$theme_path}/images/icons/cmsms-152x152.png\' />\r\n        <link rel=\'apple-touch-icon-precomposed\' sizes=\'120x120\' href=\'{$theme_path}/images/icons/cmsms-120x120.png\' />\r\n        <link rel=\'apple-touch-icon-precomposed\' sizes=\'72x72\' href=\'{$theme_path}/images/icons/cmsms-76x76.png\' />\r\n        <link rel=\'apple-touch-icon-precomposed\' href=\'{$theme_path}/images/icons/cmsms-60x60.png\' />\r\n        <link rel=\'shortcut icon\' sizes=\'196x196\' href=\'{$theme_path}/images/icons/cmsms-196x196.png\' />\r\n        <link rel=\'shortcut icon\' href=\'{$theme_path}/images/icons/cmsms-60x60.png\' />\r\n        <link rel=\'icon\' href=\'{$theme_path}/images/icons/favicon_cms.ico\' type=\'image/x-icon\' />\r\n        {cms_selflink dir=\'start\' rellink=\'1\'} {* Relational links for interconnections between pages, good for accessibility and Search Engine Optmization *}\r\n        {cms_selflink dir=\'prev\' rellink=\'1\'}\r\n        {cms_selflink dir=\'next\' rellink=\'1\'}\r\n        <!--[if lt IE 9]>\r\n            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>\r\n            <script src="//css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>\r\n        <![endif]-->\r\n    </head>\r\n    <body id=\'boxed\' class=\'container page-wrapper page-{$page_alias} page-{$content_id}\'>\r\n        <!-- #wrapper (wrapping content in a box) -->\r\n        <div class=\'row\' id=\'wrapper\'>\r\n            <!-- accessibility links, jump to nav or content -->\r\n            <ul class="visuallyhidden">\r\n                <li>{anchor anchor=\'nav\' title=\'Skip to navigation\' accesskey=\'n\' text=\'Skip to navigation\'}</li>\r\n                <li>{anchor anchor=\'main\' title=\'Skip to content\' accesskey=\'s\' text=\'Skip to content\'}</li>\r\n            </ul>\r\n            <!-- accessibility //-->\r\n            <!-- .top (top section of page containing logo, navigation search...) -->\r\n            <header class=\'top inner-section\'>\r\n                <div class=\'row header\'>\r\n                    <!-- .logo (cmsms logo on the left side) -->\r\n                    <div class=\'logo four-col\'>\r\n                        <a href=\'{root_url}\' title=\'{sitename}\'>\r\n                            <img src=\'{$theme_path}/images/cmsmadesimple-logo.png\' width=\'227\' height=\'59\' alt=\'{sitename}\' />\r\n                            <span class=\'palm\'></span>\r\n                        </a>\r\n                    </div>\r\n                    <!-- .logo //-->\r\n                    <!-- .main-navigation (main navigation on the right side) -->\r\n                    <nav class=\'main-navigation eight-col cf noprint\' id=\'nav\' role=\'navigation\'>\r\n                        {Navigator loadprops=\'0\' template=\'Simplex Main Navigation\'} {* A Navigator module, database Template *}\r\n                    </nav>\r\n                    <!-- .main-navigation //-->\r\n                </div>\r\n                <!-- .header-bottom (bottom part of header containing catchphrase and search field) -->\r\n                <div class=\'row header-bottom\'>\r\n                    <section class=\'phrase cf\'>\r\n                        <span class=\'seven-col phrase-text\'>Power for professionals<br class=\'lt-768\' /> Simplicity for End Users</span>\r\n                        {Search|strip formtemplate=\'Simplex Search\'} {* Search module using custom template in Design Manager, you should use resultpage parameter for search results (see module help) *}\r\n                    </section>\r\n                </div>\r\n                <!-- .header-bottom //-->\r\n                <!-- .banner (banner area for a slider or teaser image) -->\r\n                {global_content name=\'Simplex Slideshow\'}\r\n                <!-- .banner //-->\r\n            </header>\r\n            <!-- .top //-->\r\n            <!-- .content-wrapper (wrapping div for content area) -->\r\n            <main role=\'main\' class=\'content-wrapper inner-section\'>\r\n                <div class=\'row\'>\r\n                    <!-- .content-inner (display content first) -->\r\n                    <div class=\'content-inner eight-col push-four\'>\r\n                        <!-- .content-top (breadcrumbs) -->\r\n                        <div class=\'content-top cf\' itemscope itemtype=\'http://data-vocabulary.org/Breadcrumb\'>\r\n                            {Navigator action=\'breadcrumbs\'} {* you can create own breadcrumbs template as well and include it with template parameter *}\r\n                            <span class=\'title-border\' aria-hidden=\'true\'></span>\r\n                        </div>\r\n                        <!-- .content-top //-->\r\n                        <!-- .content (actual content with title and content tags) -->\r\n                        <article class=\'content\' id=\'main\'>\r\n                            <h1>{$main_title nocache} </h1> {* title tag *}\r\n                                {$main_content nocache} {* content entered in page editor area, variable is assigned on top in template logic, using nocache as variables are cached with Smarty cache on *}\r\n                        </article>\r\n                        <!-- .content //-->\r\n                    </div>\r\n                    <!-- .content-inner //-->\r\n                    <!-- .sidebar (then show sidebar) -->\r\n                    <aside class=\'sidebar four-col pull-eight\'>\r\n                        {* sample of using News Module tag for summary of latest two articles, remember if News page is deleted you should change detailpage parameter *}\r\n                        {News summarytemplate=\'Simplex News Summary\' number=\'2\' detailtemplate=\'Simplex News Detail\'}\r\n                    </aside>\r\n                    <!-- .sidebar //-->\r\n                    <div class=\'cf eight-col push-four\'>\r\n                        {if !empty($prev_page)}<span class=\'previous\'>{$prev_page nocache}</span>{/if}\r\n                        {if !empty($next_page)}<span class=\'next\'>{$next_page nocache}</span>{/if}\r\n                    </div>\r\n                </div>\r\n            </main>\r\n            <!-- .content-wrapper //-->\r\n            <!-- .footer (footer area) -->\r\n            <footer class=\'footer inner-section\'>\r\n                <span class=\'back-top\'><a href=\'{anchor anchor=\'main\' onlyhref=\'1\'}\' id=\'scroll-top\'><i class=\'icon-arrow-up\' aria-hidden=\'true\'></i></a></span>\r\n                <div class=\'row\'>\r\n                    <section class=\'eight-col push-four noprint\'>\r\n                        <nav class=\'footer-navigation row\'>\r\n                            {Navigator template=\'Simplex Footer Navigation\' excludeprefix=\'home\' number_of_levels=\'2\' loadprops=\'0\'}\r\n                        </nav>\r\n                    </section> \r\n                    <section class=\'four-col pull-eight copyright\'>\r\n                        {global_content|strip name=\'Simplex Footer\'} {* generic Design Manager template *}\r\n                    </section>\r\n                </div>\r\n            </footer>\r\n        <!-- #wrapper //--> \r\n        </div>\r\n    {cms_jquery exclude=\'ui,nestedSortable,json,migrate\' append=\'uploads/simplex/js/jquery.sequence-min.js,uploads/simplex/js/functions.min.js\'}{strip}\r\n    {* if you are using some older jQuery plugin that relies on deprecated and removed functions that are no longer supported\r\n       in jQuery 1.11.0 try removing "migrate" from exclude list which will include jQuery Migrate 1.2.1 Plugin.\r\n       For more information about removed functions see: http://jquery.com/upgrade-guide/1.9/ *}{/strip}\r\n    </body>\r\n</html>', 'A HTML5 based responsive template', '1', '1', NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('11', 'Simplex Slideshow', '{strip}\r\n\r\n{* A simple Smarty array for our slideshow *}\r\n{$slides = []}\r\n\r\n{$slides.0.heading = \'Power for professionals\'}\r\n{$slides.0.subheading = \'Simplicity for end Users\'}\r\n{$slides.0.image = \'palm-logo.png\'}\r\n\r\n{$slides.1.heading = \'Faster &amp; Easier\'}\r\n{$slides.1.subheading = \'Website management\'}\r\n{$slides.1.image = \'mate-zimple.png\'}\r\n\r\n{$slides.2.heading = \'Flexible &amp; Powerful\'}\r\n{$slides.2.subheading = \'Manage your Website anywhere and anytime\'}\r\n{$slides.2.image = \'mobile-devices-scene.png\'}\r\n\r\n{$slides.3.heading = \'Secure &amp; Robust\'}\r\n{$slides.3.subheading = \'Take control of your application\'}\r\n{$slides.3.image = \'browser-scene.png\'}\r\n\r\n{* Markup *}\r\n<section class=\'banner row noprint\' id=\'sx-slides\' role=\'banner\'>\r\n    <ul class="sequence-canvas">\r\n        {foreach $slides as $slide}\r\n        <li{if $slide@first} class=\'animate-in\'{/if}>\r\n            {if !empty($slide.heading)}<h2 class=\'title\'>{$slide.heading}</h2>{/if}\r\n            {if !empty($slide.subheading)}<h3 class=\'subtitle\'>{$slide.subheading}</h3>{/if}\r\n            {if !empty($slide.image)}<img class=\'image\' src=\'{uploads_url}/simplex/teaser/{$slide.image}\' alt=\'{$slide.heading|cms_escape:\'htmlall\'}\' />{/if}\r\n        </li>\r\n        {/foreach}\r\n    </ul>\r\n</section>\r\n\r\n{/strip}', 'A sample slider for Simplex Theme.\nNote: required jQuery Framework is already included at the bottom of Simplex Page Template.\nIf any of Modules that you are going to use requires or adds additional jQuery Framework, remember to either remove jQuery Framework from Module template (for example Gallery module) or to move {cms_jquery} tag in Simplex Page Template to <head> section of template if needed.\nAll current Browser come with some kind of Developer Tools (usually F12 key) or you can also install Firebug in Firefox or Chrome, if some JavaScript function doesn\'t work your first step would be to open Developer Tools and look into console errors.', '2', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('12', 'Simplex Footer', '{* Logic *}\r\n{$start_year = \'2004\'}\r\n{$current_year = $smarty.now|date_format:\'%Y\'}\r\n\r\n{* Template *}\r\n<ul class=\'social cf\'>\r\n    <li class=\'twitter\'><a title=\'Twitter\' href=\'http://twitter.com/#!/cmsms\'><i class=\'icon-twitter\'></i><span class=\'visuallyhidden\'>Twitter</span></a></li>\r\n    <li class=\'facebook\'><a title=\'Facebook\' href=\'https://www.facebook.com/cmsmadesimple\'><i class=\'icon-facebook\'></i><span class=\'visuallyhidden\'>Facebook</span></a></li>\r\n    <li class=\'linkedin\'><a title=\'LinkedIn\' href=\'http://www.linkedin.com/groups?gid=1139537\'><i class=\'icon-linkedin\'></i><span class=\'visuallyhidden\'>LinkedIn</span></a></li>\r\n    <li class=\'youtube\'><a title=\'YouTube\' href=\'http://www.youtube.com/user/cmsmadesimple\'><i class=\'icon-youtube\'></i><span class=\'visuallyhidden\'>YouTube</span></a></li>\r\n    <li class=\'google\'><a title=\'Google Plus\' href=\'https://plus.google.com/+cmsmadesimple/posts\'><i class=\'icon-google\'></i><span class=\'visuallyhidden\'>Google Plus</span></a></li>\r\n    <li class=\'pinterest\'><a title=\'Pinterest\' href=\'http://www.pinterest.com/cmsmadesimple/\'><i class=\'icon-pinterest\'></i><span class=\'visuallyhidden\'>Pinterest</span></a></li>\r\n</ul>\r\n<p class=\'copyright-info\'>&copy; Copyright {$start_year}{if $start_year !== $current_year} - {$current_year}{/if} - CMS Made Simple<br /> This site is powered by <a href=\'http://www.cmsmadesimple.org\'>CMS Made Simple</a> version {cms_version}</p>', 'Custom footer section template for Simplex Theme', '2', NULL, NULL, '1', '1', '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_templates` VALUES ('13', 'Simple Navigation Menu', '{* CSS classes used in this template:\r\n.activeparent - The top level parent when a child is the active/current page\r\nli.active0n h3 - n is the depth/level of the node. To style the active page for each level separately. The active page is not clickable.\r\n.clearfix - Used for the unclickable h3 to use the entire width of the li, just like the anchors. See the Tools stylesheet in the default CMSMS installation.\r\nli.sectionheader h3 - To style section header\r\nli.separator - To style the ruler for the separator *} \r\n\r\n{assign var=\'number_of_levels\' value=10000}\r\n{if isset($menuparams.number_of_levels)}\r\n  {assign var=\'number_of_levels\' value=$menuparams.number_of_levels}\r\n{/if}\r\n\r\n{if $count > 0}\r\n<ul>\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string="<ul>" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string="</li></ul>" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->parent == true or $node->current == true}\r\n  {assign var=\'classes\' value=\'menuactive\'}\r\n  {if $node->parent == true}\r\n    {assign var=\'classes\' value=\'menuactive menuparent\'}\r\n  {/if}\r\n  {if $node->children_exist == true and $node->depth < $number_of_levels}\r\n    {assign var=\'classes\' value=$classes|cat:\' parent\'}\r\n  {/if}\r\n  <li class="{$classes}"><a class="{$classes}" href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->children_exist == true and $node->depth < $number_of_levels and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class="parent"><a class="parent" href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->current == true}\r\n<li class="currentpage"><h3><span>{$node->menutext}</span></h3>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class="sectionheader"><span>{$node->menutext}</span>\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li class="separator" style="list-style-type: none;"> <hr />\r\n\r\n{else}\r\n<li><a href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n{repeat string="</li></ul>" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}', NULL, '3', '1', NULL, '1', '1', '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_templates` VALUES ('14', 'Simple Navigation', '{* simple navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=Nav_menu depth=1}{strip}\n<ul>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'menudepth\'|cat:$depth}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class *}\n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n\n    {* the last child gets a special class *}\n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {/if}\n\n    {if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive menuparent\'}\n    {/if}\n\n    {if $node->children_exist}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class="{$liclass}">\n        <a class="{$aclass}" href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/function}\n\n{if isset($nodes)}\n{Nav_menu data=$nodes depth=0}\n{/if}', NULL, '4', '0', NULL, '1', '1', '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_templates` VALUES ('15', 'Breadcrumbs', '{* default breadcrumbs template *}\n{strip}\n<div class="breadcrumb">\n  {if isset($starttext)}{$starttext}:&nbsp;{/if}\n  {foreach $nodelist as $node}\n    {$spanclass=\'breadcrumb\'}\n    {if $node->current}\n      {$spanclass=$spanclass|cat:\' current\'}\n    {/if}\n\n    <span class="{$spanclass}">\n      {if $node@last}\n        {$node->menutext}\n      {elseif $node->type == \'sectionheader\'}\n        {$node->menutext}&nbsp;\n      {else}\n        <a href="{$node->url}" title="{$node->menutext}">{$node->menutext}</a>\n      {/if}\n    </span>\n\n    {if !$node@last}&raquo;&nbsp;{/if}\n  {/foreach}\n</div>\n{/strip}', NULL, '5', '1', NULL, '1', '1', '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_templates` VALUES ('16', 'cssmenu', '{* cssmenu *}\n{* this template uses recursion, but not a smarty function. *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n{if !isset($depth)}{$depth=0}{/if}\n{strip}\n\n{if $depth == 0}\n<div id="menuwrapper">\n<ul id="primary-nav">\n{else}\n<ul class="unli">\n{/if}\n\n{$depth=$depth+1}\n{foreach $nodes as $node}\n  {* setup classes for the anchor and list item *}\n  {$liclass=[]}\n  {$aclass=[]}\n\n  {* the first child gets a special class *}\n  {if $node@first && $node@total > 1}{$liclass[]=\'first_child\'}{/if}\n\n  {* the last child gets a special class *}\n  {if $node@last && $node@total > 1}{$liclass[]=\'last_child\'}{/if}\n\n  {if $node->current}\n    {* this is the current page *}\n    {$liclass[]=\'menuactive\'}\n    {$aclass[]=\'menuactive\'}\n  {/if}\n  {if $node->has_children}\n    {* this is a parent page *}\n    {$liclass[]=\'menuparent\'}\n    {$aclass[]=\'menuparent\'}\n  {/if}\n  {if $node->parent}\n    {* this is a parent of the current page *}\n    {$liclass[]=\'menuactive\'}\n    {$aclass[]=\'menuactive\'}\n  {/if}\n\n  {* build the menu item from the node *}\n  {if $node->type == \'sectionheader\'}\n    <li class=\'{implode(\' \',$liclass)}\'><a{if count($aclass) > 0} class="{implode(\' \',$aclass)}"{/if}><span class="sectionheader">{$node->menutext}</span></a>\n      {if isset($node->children)}\n        {include file=$smarty.template nodes=$node->children}\n      {/if}\n    </li>\n  {else if $node->type == \'separator\'}\n    <li style="list-style-type: none;"><hr class="menu_separator"/></li>\n  {else}\n    {* regular item *}\n    <li class="{implode(\' \',$liclass)}">\n      <a{if count($aclass) > 0} class="{implode(\' \',$aclass)}"{/if} href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}><span>{$node->menutext}</span></a>\n      {if isset($node->children)}\n        {include file=$smarty.template nodes=$node->children}\n      {/if}\n    </li>\n  {/if}\n{/foreach}\n{$depth=$depth-1}\n</ul>\n\n{if $depth == 0}\n<div class="clearb"></div>\n</div>{* menuwrapper *}\n{/if}\n{/strip}', NULL, '4', '0', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('17', 'cssmenu_ulshadow', '{* cssmenu_ulshadow navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=cssmenu_ulshadow depth=1}\n<ul{if $depth ==0} id="primary-nav"{else} class="unli"{/if}>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'\'}\n    {*{assign var=\'liclass\' value=\' depth\'|cat:$depth}*}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class \n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n    *}\n\n    {* the last child gets a special class \n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n    *}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {else if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n    {if isset($node->children)}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuparent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {cssmenu_ulshadow data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class="{$liclass}">\n        <a class="{$aclass}" href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {cssmenu_ulshadow data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n  {if $depth > 0}\n    <li class="separator once" style="list-style-type: none;">&nbsp;</li>\n  {/if}\n</ul>\n{/function}\n\n{if isset($nodes)}\n<div id="menuwrapper">\n  {cssmenu_ulshadow data=$nodes depth=0}\n  <div class="clearb"></div>\n</div>\n{/if}', NULL, '4', '0', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('18', 'minimal_menu', '{* minimal navigation *}\n{*\n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n{* CSS classes used in this template:\n.currentpage - The active/current page\n.bullet_sectionheader - To style section header\nhr.separator - To style the ruler for the separator *}\n\n{if !isset($depth)}{$depth=0}{/if}\n\n{if isset($nodes)}{strip}\n<ul>\n  {foreach $nodes as $node}\n    {if $node->type == \'sectionheader\'}\n      {* section header *}\n      <li class="sectionheader{if $node->parent} activeparent{/if}">\n        {$node->menutext}\n        {if isset($node->children)}\n          {include file=$smarty.template nodes=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li style="list-style-type: none;"><hr class="separator"/></li>\n    {else}\n      {* regular item *}\n      {$liclass=\'\'}\n      {$aclass=\'\'}\n      {if $node->current}\n        {$liclass=\'currentpage\'}\n        {$aclass=\'currentpage\'}\n      {elseif $node->parent}\n        {$liclass=\'activeparent\'}\n        {$aclass=\'activeparent\'}\n      {/if}\n      <li{if $liclass != \'\'} class="{$liclass}"{/if}>\n        <a{if $aclass !=\'\'} class="{$aclass}"{/if} href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}>{$node->menutext}</a>\n        {if isset($node->children)}\n          {include file=$smarty.template nodes=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/if}', NULL, '4', '0', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('19', 'Simplex Main Navigation', '{strip}\n\n{$main_id = \' id=\\\'main-menu\\\'\'}\n{function do_class}\n    {if count($classes) > 0} class=\'{implode(\' \',$classes)}\'{/if}\n{/function}\n\n{function name=\'Simplex_menu\' depth=\'1\'}\n    <ul{$main_id}{if isset($ul_class) && $ul_class != \'\'} class="{$ul_class}"{/if}>\n        {$main_id = \'\'}\n        {$ul_class = \'\'}\n        {foreach $data as $node}\n            {* setup classes for the anchor and list item *}\n            {$list_class = []}\n            {$href_class = [\'cf\']}\n            {$parent_indicator = \'\'}\n            {$aria_support = \'\'}\n    \n            {if $node->current || $node->parent}\n                {* this is the current page *}\n                {$list_class[] = \'current\'}\n                {$href_class[] = \'current\'}\n            {/if}\n    \n            {if $node->children_exist}\n                {$list_class[] = \'parent\'}\n                {$aria_support = \' aria-haspopup=\\\'true\\\'\'}\n                {$parent_indicator = \' <i class=\\\'icon-arrow-left\\\' aria-hidden=\\\'true\\\'></i>\'}\n            {/if}\n    \n            {* build the menu item node *}\n            {if $node->type == \'sectionheader\'}\n                {$list_class[] = \'sectionheader\'}\n                <li{do_class classes=$list_class}{$aria_support}><span>{$node->menutext}{$parent_indicator}</span>\n                {if isset($node->children)}\n                    {Simplex_menu data=$node->children depth=$depth+1}\n                {/if}\n                </li>\n            {else if $node->type == \'separator\'}\n                {$list_class[] = \'separator\'}\n                <li{do_class classes=$list_class}\'><hr class=\'separator\'/></li>\n            {else}\n                {* regular item *}\n                <li{do_class classes=$list_class}{$aria_support}>\n                    <a{do_class classes=$href_class} href=\'{$node->url}\'{if $node->target != \'\'} target=\'{$node->target}\'{/if}>{$node->menutext}{$parent_indicator}</a>\n                    {if isset($node->children)}\n                        {Simplex_menu data=$node->children depth=$depth+1}\n                    {/if}\n                </li>\n            {/if}\n        {/foreach}\n    </ul>\n{/function}\n\n{if isset($nodes)}\n    {Simplex_menu data=$nodes depth=\'0\' ul_class=\'cf\'}\n{/if}\n\n{/strip}', NULL, '4', '0', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('20', 'Simplex Footer Navigation', '{strip}\r\n\r\n{$main_id = \' id=\\\'footer-menu\\\'\'}\r\n{function do_footer_class}\r\n    {if count($classes) > 0} class=\'{implode(\' \',$classes)}\'{/if}\r\n{/function}\r\n\r\n{function name=\'Simplex_footer_menu\' depth=\'1\'}\r\n    <ul{$main_id}{if isset($ul_class) && $ul_class != \'\'} class="{$ul_class}"{/if}>\r\n        {$main_id = \'\'}\r\n        {$ul_class = \'\'}\r\n        {foreach $data as $node}\r\n            {* setup classes for the anchor and list item *}\r\n            {$list_class = []}\r\n            {$href_class = []}\r\n    \r\n            {if $node->current || $node->parent}\r\n                {* this is the current page *}\r\n                {$list_class[] = \'current\'}\r\n                {$href_class[] = \'current\'}\r\n            {/if}\r\n    \r\n            {if $node->children_exist}\r\n                {$list_class[] = \'parent\'}\r\n            {/if}\r\n    \r\n            {* build the menu item node *}\r\n            {if $node->type == \'sectionheader\'}\r\n                {$list_class[] = \'sectionheader\'}\r\n                <li{do_footer_class classes=$list_class}><span>{$node->menutext}</span>\r\n                {if isset($node->children)}\r\n                    {Simplex_footer_menu data=$node->children depth=$depth+1}\r\n                {/if}\r\n                </li>\r\n            {else if $node->type == \'separator\'}\r\n                {$list_class[] = \'separator\'}\r\n                <li{do_footer_class classes=$list_class}\'><hr class=\'separator\'/></li>\r\n            {else}\r\n                {* regular item *}\r\n                <li{do_footer_class classes=$list_class}>\r\n                    <a{do_footer_class classes=$href_class} href=\'{$node->url}\'{if $node->target != \'\'} target=\'{$node->target}\'{/if}>{$node->menutext}</a>\r\n                    {if isset($node->children)}\r\n                        {Simplex_footer_menu data=$node->children depth=$depth+1}\r\n                    {/if}\r\n                </li>\r\n            {/if}\r\n        {/foreach}\r\n    </ul>\r\n{/function}\r\n\r\n{if isset($nodes)}\r\n    {Simplex_footer_menu data=$nodes depth=\'0\' ul_class=\'cf\'}\r\n{/if}\r\n\r\n{/strip}', NULL, '4', '1', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('21', 'News Summary Sample', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          {if isset($field->value) && $field->value}\n            <img src="{$entry->file_location}/{$field->value}"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->', NULL, '6', '1', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('22', 'Simplex News Summary', '{strip}\r\n\r\n<!-- .news-summary wrapper -->\r\n<article class=\'news-summary\'>\r\n<span class=\'heading\'><span>News</span></span>\r\n        <ul class=\'category-list cf\'>\r\n        {foreach from=$cats item=\'node\'}\r\n        {if $node.depth > $node.prevdepth}\r\n            {repeat string=\'<ul>\' times=$node.depth-$node.prevdepth}\r\n        {elseif $node.depth < $node.prevdepth}\r\n            {repeat string=\'</li></ul>\' times=$node.prevdepth-$node.depth}\r\n            </li>\r\n            {elseif $node.index > 0}</li>\r\n            {/if}\r\n            <li{if $node.index == 0} class=\'first\'{/if}>\r\n        {if $node.count > 0}\r\n                <a href=\'{$node.url}\'>{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\r\n        {/foreach}\r\n        {repeat string=\'</li></ul>\' times=$node.depth-1}</li>\r\n        </ul>\r\n    {foreach from=$items item=\'entry\'}\r\n    <!-- .news-article (wrapping each article) -->\r\n    <section class=\'news-article\'>\r\n        <header>\r\n            <h2><a href=\'{$entry->moreurl}\' title=\'{$entry->title|cms_escape:htmlall}\'>{$entry->title|cms_escape}</a></h2>\r\n            <div class=\'meta cf\'>\r\n                <time class=\'date\' datetime=\'{$entry->postdate|date_format:\'%Y-%m-%d\'}\'>\r\n                    <span class=\'day\'> {$entry->postdate|date_format:\'%d\'} </span>\r\n                    <span class=\'month\'> {$entry->postdate|date_format:\'%b\'} </span>\r\n                </time>\r\n                <span class=\'author\'> {$author_label} {$entry->author} </span>\r\n                <span class=\'category\'> {$category_label} {$entry->category}</span>\r\n            </div>\r\n        </header>\r\n        {if $entry->summary}\r\n            <p>{$entry->summary|strip_tags}</p>\r\n            <span class=\'more\'>{$entry->morelink} &#8594;</span>\r\n        {else if $entry->content}\r\n            <p>{$entry->content|strip_tags}</p>\r\n        {/if}\r\n    </section>\r\n    <!-- .news-article //-->\r\n    {/foreach}\r\n        <!-- news pagination -->\r\n        {if $pagecount > 1}\r\n        <span class=\'paginate\'>\r\n            {if $pagenumber > 1}\r\n                {$firstpage}&nbsp;{$prevpage}\r\n            {/if}\r\n                {$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\r\n            {if $pagenumber < $pagecount}\r\n                {$nextpage}&nbsp;{$lastpage}\r\n            {/if}\r\n        </span>\r\n        {/if}\r\n</article>\r\n<!-- .news-summary //-->\r\n\r\n{/strip}', NULL, '6', NULL, NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('23', 'News Detail Sample', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n\n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n\n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {* note this syntax ensures that the canonical variable is set into global scope *}\n  {assign var=\'canonical\' value=$entry->canonical scope=global}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          {if isset($field->value) && $field->value}\n            <img src="{$entry->file_location}/{$field->value}"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}', NULL, '7', '1', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('24', 'Simplex News Detail', '{* this is a sample detail template that works with the Simplex theme *}\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\r\n{if isset($entry->canonical)}\r\n  {assign var=\'canonical\' value=$entry->canonical scope=global}\r\n  {assign var=\'main_title\' value=$entry->title scope=global}\r\n{/if}\r\n\r\n{* <h2>{$entry->title|cms_escape:htmlall}</h2> *}\r\n{if $entry->summary}\r\n    {$entry->summary}\r\n{/if}\r\n    {$entry->content}\r\n{if $entry->extra}\r\n        {$extra_label} {$entry->extra}\r\n{/if}\r\n{if $return_url != ""}\r\n    <br />\r\n        <span class=\'back\'>&#8592; {$return_url}{if $category_name != \'\'} - {$category_link}{/if}</span>\r\n{/if}\r\n\r\n{if isset($entry->fields)}\r\n  {foreach from=$entry->fields item=\'field\'}\r\n     <div>\r\n        {if $field->type == \'file\'}\r\n      {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\r\n          <img src=\'{$entry->file_location}/{$field->value}\' alt=\'\' />\r\n        {else}\r\n          {$field->name}: {$field->value}\r\n        {/if}\r\n     </div>\r\n  {/foreach}\r\n{/if}\r\n    <footer class=\'news-meta\'>\r\n    {if $entry->postdate}\r\n        {$entry->postdate|cms_date_format}\r\n    {/if}\r\n    {if $entry->category}\r\n        <strong>{$category_label}</strong> {$entry->category}\r\n    {/if}\r\n    {if $entry->author}\r\n        <strong>{$author_label}</strong> {$entry->author}\r\n    {/if}\r\n    </footer>', NULL, '7', NULL, NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('25', 'News Fesubmit Form Sample', '{* original form template *}\n<h3>{$mod->Lang(\'title_fesubmit_form\')}</h3>\n\n{if isset($error)}\n  <div class="error>{$error}</div>\n{elseif isset($message)}\n  <div class="message>{$message}</div>\n{/if}\n\n{form_start category_id=$category_id}\n	<div class="row">\n		<p class="col4"><label for="news_title">*{$mod->Lang(\'title\')}:</label></p>\n		<p class="col8">\n			<input id="news_title" type="text" name="{$actionid}title" value="{$title}" size="30" required/>\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4"><label for="news_category">{$mod->Lang(\'category\')}:</label></p>\n		<p class="col8">\n			<select id="news_category" name="{$actionid}input_category">\n                        {html_options options=$categorylist selected=$category_id}\n			</select>\n                </p>\n	</div>\n\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="row">\n		<p class="col4"><label for="news_summary">{$mod->Lang(\'summary\')}:</label></p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'summary\'}\n			{cms_textarea enablewysiwyg=true id=news_summary name=$tmp value=$summary required=true}\n		</p>\n	</div>\n{/if}\n	<div class="row">\n		<p class="col4"><label for="news_content">*{$mod->Lang(\'content\')}:</label></p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'content\'}\n			{cms_textarea enablewysiwyg=true id=news_content name=$tmp value=$content required=true}\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4"><label for="news_extra">{$mod->Lang(\'extra\')}:</label></p>\n		<p class="col8">\n			<input id="news_extra" type="text" name="{$actionid}extra" value="{$extra}" size="30"/>\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4">{$mod->Lang(\'startdate\')}:</p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'startdate_\'}\n			{html_select_date prefix=$tmp time=$startdate end_year="+15"}\n			{html_select_time prefix=$tmp time=$startdate}\n		</p>\n	</div>\n	<div class="row">\n		<p class="col4">{$mod->Lang(\'enddate\')}:</p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'enddate_\'}\n			{html_select_date prefix=$tmp time=$enddate end_year="+15"}\n			{html_select_time prefix=$tmp time=$enddate}\n		</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'field\'}\n	      <div class="row">\n		<p class="col4"><label for="news_fld_{$field->id}">{$field->name}:</label></p>\n		<p class="col8">\n		{if $field->type == \'file\'}\n			<input id="news_fld_{$field->id}" type="file" name="{$actionid}news_customfield_{$field->id}"/>\n		{elseif $field->type == \'checkbox\'}\n			<input id="news_fld_{$field->id}" type="checkbox" name="{$actionid}news_customfield_{$field->id}" value="1"/>\n		{elseif $field->type == \'textarea\'}\n			{$tmp1=\'news_fld_\'|cat:$field->id}\n			{capture assign=\'tmp2\'}{$actionid}news_customfield_{$field->id}{/capture}\n			{cms_textarea id=$tmp1 name=$tmp2 enablewysiwyg=true}\n		{elseif $field->type == \'textbox\'}\n			<input id="news_fld_{$field->id}" type="text"" name="{$actionid}news_customfield_{$field->id}" maxlength="{$field->max_length}"/>\n                {/if}\n		</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="row">\n		<p class="col4">&nbsp;</p>\n		<p class="col8">\n			<input type="submit" name="{$actionid}submit" value="{$mod->Lang(\'submit\')}"/>\n			<a href="{cms_selflink href=$page_alias}">{$mod->Lang(\'prompt_redirecttocontent\')}</a>\n		</p>\n	</div>\n{form_end}', NULL, '8', '1', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('26', 'News Browse Category Sample', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, '9', '1', NULL, '1', '1', '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_templates` VALUES ('27', 'Search Form Sample', '{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" placeholder="{$searchtext}"/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', NULL, '10', '1', NULL, '1', '1', '1490362426', '1490362426') ; 
INSERT INTO `cms_layout_templates` VALUES ('28', 'Simplex Search', '<div class=\'five-col search noprint\' role=\'search\'>\r\n    {$startform}\r\n        <label for=\'{$search_actionid}searchinput\' class=\'visuallyhidden\'>{$searchprompt}:</label>\r\n        <input type=\'search\' class=\'search-input\' id=\'{$search_actionid}searchinput\' name=\'{$search_actionid}searchinput\' size=\'20\' maxlength=\'50\' value=\'\' placeholder=\'{$searchtext}\' /><i class=\'icon-search\' aria-hidden=\'true\'></i>\r\n        {if isset($hidden)}{$hidden}{/if}\r\n    {$endform}\r\n</div>', NULL, '10', NULL, NULL, '1', '1', '1490362426', '1490362426') ; 
INSERT INTO `cms_layout_templates` VALUES ('29', 'Search Results Sample', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {*\n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry\n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'}\n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', NULL, '11', '1', NULL, '1', '1', '1490362426', '1490362426') ;
#
# End of data contents of table `cms_layout_templates`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_layout_tpl_type`
# --------------------------------------------------------


#
# Delete any existing table `cms_layout_tpl_type`
#

DROP TABLE IF EXISTS `cms_layout_tpl_type`;


#
# Table structure of table `cms_layout_tpl_type`
#

CREATE TABLE `cms_layout_tpl_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originator` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `has_dflt` tinyint(4) DEFAULT NULL,
  `dflt_contents` longtext,
  `description` text,
  `lang_cb` varchar(255) DEFAULT NULL,
  `dflt_content_cb` varchar(255) DEFAULT NULL,
  `requires_contentblocks` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_idx_layout_tpl_type_1` (`originator`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_layout_tpl_type` (11 records)
#
 
INSERT INTO `cms_layout_tpl_type` VALUES ('1', '__CORE__', 'page', '1', '{strip}\n	{process_pagedata}\n{/strip}<!doctype html>\n<html lang="{cms_get_language}">\n\n<head>\n	<title>{title} - {sitename}</title>\n	{metadata}\n	{cms_stylesheet}\n</head>\n\n<body>\n	<header id="header">\n		<h1>{sitename}</h1>\n	</header>\n\n	<nav id="menu">\n		{Navigator}\n	</nav>\n\n	<section id="content">\n		<h1>{title}</h1>\n		{content}\n	</section>\n</body>\n\n</html>', NULL, 's:44:"CmsTemplateResource::page_type_lang_callback";', 's:45:"CmsTemplateResource::reset_page_type_defaults";', '1', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('2', '__CORE__', 'generic', NULL, NULL, NULL, 's:47:"CmsTemplateResource::generic_type_lang_callback";', 'N;', '0', NULL, '1490362416', '1490362416') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('3', 'MenuManager', 'navigation', '1', '{* CSS classes used in this template:\r\n.activeparent - The top level parent when a child is the active/current page\r\nli.active0n h3 - n is the depth/level of the node. To style the active page for each level separately. The active page is not clickable.\r\n.clearfix - Used for the unclickable h3 to use the entire width of the li, just like the anchors. See the Tools stylesheet in the default CMSMS installation.\r\nli.sectionheader h3 - To style section header\r\nli.separator - To style the ruler for the separator *} \r\n\r\n{assign var=\'number_of_levels\' value=10000}\r\n{if isset($menuparams.number_of_levels)}\r\n  {assign var=\'number_of_levels\' value=$menuparams.number_of_levels}\r\n{/if}\r\n\r\n{if $count > 0}\r\n<ul>\r\n{foreach from=$nodelist item=node}\r\n{if $node->depth > $node->prevdepth}\r\n{repeat string="<ul>" times=$node->depth-$node->prevdepth}\r\n{elseif $node->depth < $node->prevdepth}\r\n{repeat string="</li></ul>" times=$node->prevdepth-$node->depth}\r\n</li>\r\n{elseif $node->index > 0}</li>\r\n{/if}\r\n\r\n{if $node->parent == true or $node->current == true}\r\n  {assign var=\'classes\' value=\'menuactive\'}\r\n  {if $node->parent == true}\r\n    {assign var=\'classes\' value=\'menuactive menuparent\'}\r\n  {/if}\r\n  {if $node->children_exist == true and $node->depth < $number_of_levels}\r\n    {assign var=\'classes\' value=$classes|cat:\' parent\'}\r\n  {/if}\r\n  <li class="{$classes}"><a class="{$classes}" href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->children_exist == true and $node->depth < $number_of_levels and $node->type != \'sectionheader\' and $node->type != \'separator\'}\r\n<li class="parent"><a class="parent" href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{elseif $node->current == true}\r\n<li class="currentpage"><h3><span>{$node->menutext}</span></h3>\r\n\r\n{elseif $node->type == \'sectionheader\'}\r\n<li class="sectionheader"><span>{$node->menutext}</span>\r\n\r\n{elseif $node->type == \'separator\'}\r\n<li class="separator" style="list-style-type: none;"> <hr />\r\n\r\n{else}\r\n<li><a href="{$node->url}"><span>{$node->menutext}</span></a>\r\n\r\n{/if}\r\n\r\n{/foreach}\r\n{repeat string="</li></ul>" times=$node->depth-1}</li>\r\n</ul>\r\n{/if}\r\n', NULL, 's:36:"MenuManager::page_type_lang_callback";', 's:37:"MenuManager::reset_page_type_defaults";', '0', NULL, '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('4', 'Navigator', 'navigation', '1', '{* simple navigation *}\n{* note, function can only be defined once *}\n{* \n  variables:\n  node: contains the current node.\n  aclass: is used to build a string containing class names given to the a tag if one is used\n  liclass: is used to build a string containing class names given to the li tag.\n*}\n\n{function name=Nav_menu depth=1}{strip}\n<ul>\n  {foreach $data as $node}\n    {* setup classes for the anchor and list item *}\n    {assign var=\'liclass\' value=\'menudepth\'|cat:$depth}\n    {assign var=\'aclass\' value=\'\'}\n\n    {* the first child gets a special class *}\n    {if $node@first && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' first_child\'}{/if}\n\n    {* the last child gets a special class *}\n    {if $node@last && $node@total > 1}{assign var=\'liclass\' value=$liclass|cat:\' last_child\'}{/if}\n\n    {if $node->current}\n      {* this is the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive\'}\n    {/if}\n\n    {if $node->parent}\n      {* this is a parent of the current page *}\n      {assign var=\'liclass\' value=$liclass|cat:\' menuactive menuparent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' menuactive menuparent\'}\n    {/if}\n\n    {if $node->children_exist}\n      {assign var=\'liclass\' value=$liclass|cat:\' parent\'}\n      {assign var=\'aclass\' value=$aclass|cat:\' parent\'}\n    {/if}\n\n    {* build the menu item node *}\n    {if $node->type == \'sectionheader\'}\n      <li class=\'sectionheader {$liclass}\'><span>{$node->menutext}</span>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {else if $node->type == \'separator\'}\n      <li class=\'separator {$liclass}\'><hr class=\'separator\'/></li>\n    {else}\n      {* regular item *}\n      <li class="{$liclass}">\n        <a class="{$aclass}" href="{$node->url}"{if $node->target ne ""} target="{$node->target}"{/if}><span>{$node->menutext}</span></a>\n        {if isset($node->children)}\n          {Nav_menu data=$node->children depth=$depth+1}\n        {/if}\n      </li>\n    {/if}\n  {/foreach}\n</ul>\n{/strip}{/function}\n\n{if isset($nodes)}\n{Nav_menu data=$nodes depth=0}\n{/if}\n', NULL, 's:34:"Navigator::page_type_lang_callback";', 's:35:"Navigator::reset_page_type_defaults";', '0', NULL, '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('5', 'Navigator', 'breadcrumbs', '1', '{* default breadcrumbs template *}\n{strip}\n<div class="breadcrumb">\n  {if isset($starttext)}{$starttext}:&nbsp;{/if}\n  {foreach $nodelist as $node}\n    {$spanclass=\'breadcrumb\'}\n    {if $node->current}\n      {$spanclass=$spanclass|cat:\' current\'}\n    {/if}\n\n    <span class="{$spanclass}">\n      {if $node@last}\n        {$node->menutext}\n      {elseif $node->type == \'sectionheader\'}\n        {$node->menutext}&nbsp;\n      {else}\n        <a href="{$node->url}" title="{$node->menutext}">{$node->menutext}</a>\n      {/if}\n    </span>\n\n    {if !$node@last}&raquo;&nbsp;{/if}\n  {/foreach}\n</div>\n{/strip}', NULL, 's:34:"Navigator::page_type_lang_callback";', 's:35:"Navigator::reset_page_type_defaults";', '0', NULL, '1490362423', '1490362423') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('6', 'News', 'summary', '1', '<!-- Start News Display Template -->\n{* This section shows a clickable list of your News categories. *}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li{if $node.index == 0} class="firstnewscat"{/if}>\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a>{else}<span>{$node.news_category_name} </span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n\n{* this displays the category name if you\'re browsing by category *}\n{if $category_name}\n<h1>{$category_name}</h1>\n{/if}\n\n{* if you don\'t want category browsing on your summary page, remove this line and everything above it *}\n\n{if $pagecount > 1}\n  <p>\n{if $pagenumber > 1}\n{$firstpage}&nbsp;{$prevpage}&nbsp;\n{/if}\n{$pagetext}&nbsp;{$pagenumber}&nbsp;{$oftext}&nbsp;{$pagecount}\n{if $pagenumber < $pagecount}\n&nbsp;{$nextpage}&nbsp;{$lastpage}\n{/if}\n</p>\n{/if}\n{foreach from=$items item=entry}\n<div class="NewsSummary">\n\n{if $entry->postdate}\n	<div class="NewsSummaryPostdate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n\n<div class="NewsSummaryLink">\n<a href="{$entry->moreurl}" title="{$entry->title|cms_escape:htmlall}">{$entry->title|cms_escape}</a>\n</div>\n\n<div class="NewsSummaryCategory">\n	{$category_label} {$entry->category}\n</div>\n\n{if $entry->author}\n	<div class="NewsSummaryAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n{if $entry->summary}\n	<div class="NewsSummarySummary">\n		{$entry->summary}\n	</div>\n\n	<div class="NewsSummaryMorelink">\n		[{$entry->morelink}]\n	</div>\n\n{else if $entry->content}\n\n	<div class="NewsSummaryContent">\n		{$entry->content}\n	</div>\n{/if}\n\n{if isset($entry->extra)}\n    <div class="NewsSummaryExtra">\n        {$entry->extra}\n	{* {cms_module module=\'Uploads\' mode=\'simpleurl\' upload_id=$entry->extravalue} *}\n    </div>\n{/if}\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsSummaryField">\n        {if $field->type == \'file\'}\n          {if isset($field->value) && $field->value}\n            <img src="{$entry->file_location}/{$field->value}"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n\n</div>\n{/foreach}\n<!-- End News Display Template -->\n', NULL, 's:29:"News::page_type_lang_callback";', 's:30:"News::reset_page_type_defaults";', '0', NULL, '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('7', 'News', 'detail', '1', '{* News module entry object reference:\n   ------------------------------\n   In previous versions of News the \'object\' returned in $entry was quite simple, and a <pre>{$entry|@print_r}</pre> would output all of the available data\n   This has changed in News 2.12, the object is not quite as \'simple\' as it was in previous versions, and that method will no longer work.  Hence, below\n   you will find a referennce to the available data.\n\n   ====\n   news_article Object Reference\n   ====\n\n     Members:\n     --\n     Members can be displayed by the following syntax: {$entry->membername} or assigned to another smarty variable using {assign var=\'foo\' value=$entry->membername}.\n\n     The following members are available in the entry array:\n\n     id (integer)           = The unique article id.\n     author_id (integer)    = The userid of the author who created the article.  This value may be negative to indicate an FEU userid.\n     title (string)         = The title of the article.\n     summary (text)         = The summary text (may be empty or unset).\n     extra (string)         = The "extra" data associated with the article (may be empty or unset).\n     news_url (string)      = The url segment associated with this article (may be empty or unset).\n     postdate (string)      = A string representing the news article post date.  You may filter this through cms_date_format for different display possibilities.\n     startdate (string)     = A string representing the date the article should begin to appear.  (may be empty or unset)\n     enddate (string)       = A string representing the date the article should stop appearing on the site (may be empty or unset).\n     category_id (integer)  = The unique id of the hierarchy level where this article resides (may be empty or unset)\n     status (string)        = either \'draft\' or \'published\' indicating the status of this article.\n     author (string)        = The username of the original author of the article.  If the article was created by frontend submission, this will attempt to retrieve the username from the FEU module.\n     authorname (string)    = The full name of the original author of the website. Only applicable if article was created by an administrator and that information exists in the administrators profile.\n     category (string)      = The name of the category that this article is associated with.\n     canonical (string)     = A full URL (prettified) to this articles detail view using defaults if necessary.\n     fields (associative)   = An associative array of field objects, representing the fields, and their values for this article.  See the information below on the field object definition.   In past versions of News this was a simple array, now it is an associative one.\n     customfieldsbyname     = (deprecated) - A synonym for the \'fields\' member\n     fieldsbyname           = (deprecated) - A synonym for the \'fields\' member\n     useexp (integer)       = A flag indicating wether this article is using the expiry information.\n     file_location (string) = A url containing the location where files attached the article are stored... the field value should be appended to this url.\n\n\n   ====\n   news_field Object Reference\n   ====\n   The news_field object contains data about the fields and their values that are associated with a particular news article.\n\n     Members:\n     --------\n     id (integer)  = The id of the field definition\n     name (string) = The name of the field\n     type (string) = The type of field\n     max_length (integer) = The maximum length of the field (applicable only to text fields)\n     item_order (integer) = The order of the field\n     public (integer) = A flag indicating wether the field is public or not\n     value (mixed)    = The value of the field.\n\n\n   ====\n   Below, you will find the normal detail template information.  Modify this template as desired.\n*}\n\n{* set a canonical variable that can be used in the head section if process_whole_template is false in the config.php *}\n{if isset($entry->canonical)}\n  {* note this syntax ensures that the canonical variable is set into global scope *}\n  {assign var=\'canonical\' value=$entry->canonical scope=global}\n{/if}\n\n{if $entry->postdate}\n	<div id="NewsPostDetailDate">\n		{$entry->postdate|cms_date_format}\n	</div>\n{/if}\n<h3 id="NewsPostDetailTitle">{$entry->title|cms_escape:htmlall}</h3>\n\n<hr id="NewsPostDetailHorizRule" />\n\n{if $entry->summary}\n	<div id="NewsPostDetailSummary">\n		<strong>\n			{$entry->summary}\n		</strong>\n	</div>\n{/if}\n\n{if $entry->category}\n	<div id="NewsPostDetailCategory">\n		{$category_label} {$entry->category}\n	</div>\n{/if}\n{if $entry->author}\n	<div id="NewsPostDetailAuthor">\n		{$author_label} {$entry->author}\n	</div>\n{/if}\n\n<div id="NewsPostDetailContent">\n	{$entry->content}\n</div>\n\n{if $entry->extra}\n	<div id="NewsPostDetailExtra">\n		{$extra_label} {$entry->extra}\n	</div>\n{/if}\n\n{if $return_url != ""}\n<div id="NewsPostDetailReturnLink">{$return_url}{if $category_name != \'\'} - {$category_link}{/if}</div>\n{/if}\n\n{if isset($entry->fields)}\n  {foreach from=$entry->fields item=\'field\'}\n     <div class="NewsDetailField">\n        {if $field->type == \'file\'}\n	  {* this template assumes that every file uploaded is an image of some sort, because News doesn\'t distinguish *}\n          {if isset($field->value) && $field->value}\n            <img src="{$entry->file_location}/{$field->value}"/>\n          {/if}\n        {else}\n          {$field->name}:&nbsp;{$field->value}\n        {/if}\n     </div>\n  {/foreach}\n{/if}\n', NULL, 's:29:"News::page_type_lang_callback";', 's:30:"News::reset_page_type_defaults";', '0', NULL, '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('8', 'News', 'form', '1', '{* original form template *}\n<h3>{$mod->Lang(\'title_fesubmit_form\')}</h3>\n\n{if isset($error)}\n  <div class="error>{$error}</div>\n{elseif isset($message)}\n  <div class="message>{$message}</div>\n{/if}\n\n{form_start category_id=$category_id}\n	<div class="row">\n		<p class="col4"><label for="news_title">*{$mod->Lang(\'title\')}:</label></p>\n		<p class="col8">\n			<input id="news_title" type="text" name="{$actionid}title" value="{$title}" size="30" required/>\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4"><label for="news_category">{$mod->Lang(\'category\')}:</label></p>\n		<p class="col8">\n			<select id="news_category" name="{$actionid}input_category">\n                        {html_options options=$categorylist selected=$category_id}\n			</select>\n                </p>\n	</div>\n\n{if !isset($hide_summary_field) or $hide_summary_field == 0}\n	<div class="row">\n		<p class="col4"><label for="news_summary">{$mod->Lang(\'summary\')}:</label></p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'summary\'}\n			{cms_textarea enablewysiwyg=true id=news_summary name=$tmp value=$summary required=true}\n		</p>\n	</div>\n{/if}\n	<div class="row">\n		<p class="col4"><label for="news_content">*{$mod->Lang(\'content\')}:</label></p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'content\'}\n			{cms_textarea enablewysiwyg=true id=news_content name=$tmp value=$content required=true}\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4"><label for="news_extra">{$mod->Lang(\'extra\')}:</label></p>\n		<p class="col8">\n			<input id="news_extra" type="text" name="{$actionid}extra" value="{$extra}" size="30"/>\n                </p>\n	</div>\n	<div class="row">\n		<p class="col4">{$mod->Lang(\'startdate\')}:</p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'startdate_\'}\n			{html_select_date prefix=$tmp time=$startdate end_year="+15"}\n			{html_select_time prefix=$tmp time=$startdate}\n		</p>\n	</div>\n	<div class="row">\n		<p class="col4">{$mod->Lang(\'enddate\')}:</p>\n		<p class="col8">\n			{$tmp=$actionid|cat:\'enddate_\'}\n			{html_select_date prefix=$tmp time=$enddate end_year="+15"}\n			{html_select_time prefix=$tmp time=$enddate}\n		</p>\n	</div>\n	{if isset($customfields)}\n	   {foreach from=$customfields item=\'field\'}\n	      <div class="row">\n		<p class="col4"><label for="news_fld_{$field->id}">{$field->name}:</label></p>\n		<p class="col8">\n		{if $field->type == \'file\'}\n			<input id="news_fld_{$field->id}" type="file" name="{$actionid}news_customfield_{$field->id}"/>\n		{elseif $field->type == \'checkbox\'}\n			<input id="news_fld_{$field->id}" type="checkbox" name="{$actionid}news_customfield_{$field->id}" value="1"/>\n		{elseif $field->type == \'textarea\'}\n			{$tmp1=\'news_fld_\'|cat:$field->id}\n			{capture assign=\'tmp2\'}{$actionid}news_customfield_{$field->id}{/capture}\n			{cms_textarea id=$tmp1 name=$tmp2 enablewysiwyg=true}\n		{elseif $field->type == \'textbox\'}\n			<input id="news_fld_{$field->id}" type="text"" name="{$actionid}news_customfield_{$field->id}" maxlength="{$field->max_length}"/>\n                {/if}\n		</p>\n	      </div>\n	   {/foreach}\n	{/if}\n	<div class="row">\n		<p class="col4">&nbsp;</p>\n		<p class="col8">\n			<input type="submit" name="{$actionid}submit" value="{$mod->Lang(\'submit\')}"/>\n			<a href="{cms_selflink href=$page_alias}">{$mod->Lang(\'prompt_redirecttocontent\')}</a>\n		</p>\n	</div>\n{form_end}\n', NULL, 's:29:"News::page_type_lang_callback";', 's:30:"News::reset_page_type_defaults";', '0', NULL, '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('9', 'News', 'browsecat', '1', '{if $count > 0}\n<ul class="list1">\n{foreach from=$cats item=node}\n{if $node.depth > $node.prevdepth}\n{repeat string="<ul>" times=$node.depth-$node.prevdepth}\n{elseif $node.depth < $node.prevdepth}\n{repeat string="</li></ul>" times=$node.prevdepth-$node.depth}\n</li>\n{elseif $node.index > 0}</li>\n{/if}\n<li class="newscategory">\n{if $node.count > 0}\n	<a href="{$node.url}">{$node.news_category_name}</a> ({$node.count}){else}<span>{$node.news_category_name} (0)</span>{/if}\n{/foreach}\n{repeat string="</li></ul>" times=$node.depth-1}</li>\n</ul>\n{/if}', NULL, 's:29:"News::page_type_lang_callback";', 's:30:"News::reset_page_type_defaults";', '0', NULL, '1490362424', '1490362424') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('10', 'Search', 'searchform', '1', '\n{$startform}\n<label for="{$search_actionid}searchinput">{$searchprompt}:&nbsp;</label><input type="text" class="search-input" id="{$search_actionid}searchinput" name="{$search_actionid}searchinput" size="20" maxlength="50" placeholder="{$searchtext}"/>\n{*\n<br/>\n<input type="checkbox" name="{$search_actionid}use_or" value="1"/>\n*}\n<input class="search-button" name="submit" value="{$submittext}" type="submit" />\n{if isset($hidden)}{$hidden}{/if}\n{$endform}', NULL, 's:31:"Search::page_type_lang_callback";', 's:32:"Search::reset_page_type_defaults";', '0', NULL, '1490362426', '1490362426') ; 
INSERT INTO `cms_layout_tpl_type` VALUES ('11', 'Search', 'searchresults', '1', '<h3>{$searchresultsfor} &quot;{$phrase}&quot;</h3>\n{if $itemcount > 0}\n<ul>\n  {foreach from=$results item=entry}\n  <li>{$entry->title} - <a href="{$entry->url}">{$entry->urltxt}</a> ({$entry->weight}%)</li>\n  {*\n     You can also instantiate custom behaviour on a module by module basis by looking at\n     the $entry->module and $entry->modulerecord fields in $entry\n      ie: {if $entry->module == \'News\'}{News action=\'detail\' article_id=$entry->modulerecord detailpage=\'News\'}\n  *}\n  {/foreach}\n</ul>\n\n<p>{$timetaken}: {$timetook}</p>\n{else}\n  <p><strong>{$noresultsfound}</strong></p>\n{/if}', NULL, 's:31:"Search::page_type_lang_callback";', 's:32:"Search::reset_page_type_defaults";', '0', NULL, '1490362426', '1490362426') ;
#
# End of data contents of table `cms_layout_tpl_type`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_locks`
# --------------------------------------------------------


#
# Delete any existing table `cms_locks`
#

DROP TABLE IF EXISTS `cms_locks`;


#
# Table structure of table `cms_locks`
#

CREATE TABLE `cms_locks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_index_locks1` (`type`,`oid`),
  KEY `cms_index_locks2` (`expires`),
  KEY `cms_index_locks3` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_locks` (0 records)
#

#
# End of data contents of table `cms_locks`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_deps`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_deps`
#

DROP TABLE IF EXISTS `cms_module_deps`;


#
# Table structure of table `cms_module_deps`
#

CREATE TABLE `cms_module_deps` (
  `parent_module` varchar(25) DEFAULT NULL,
  `child_module` varchar(25) DEFAULT NULL,
  `minimum_version` varchar(25) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_deps` (1 records)
#
 
INSERT INTO `cms_module_deps` VALUES ('FileManager', 'MicroTiny', '1.5', '2017-03-24 20:33:43', '2017-03-24 20:33:43') ;
#
# End of data contents of table `cms_module_deps`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news`
#

DROP TABLE IF EXISTS `cms_module_news`;


#
# Table structure of table `cms_module_news`
#

CREATE TABLE `cms_module_news` (
  `news_id` int(11) NOT NULL,
  `news_category_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_data` text,
  `news_date` datetime DEFAULT NULL,
  `summary` text,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `news_extra` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  `searchable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `cms_news_postdate` (`news_date`),
  KEY `cms_news_daterange` (`start_time`,`end_time`),
  KEY `cms_news_author` (`author_id`),
  KEY `cms_news_hier` (`news_category_id`),
  KEY `cms_news_url` (`news_url`),
  KEY `cms_news_startenddate` (`start_time`,`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news` (1 records)
#
 
INSERT INTO `cms_module_news` VALUES ('1', '1', 'News Module Installed', 'The news module was installed.  Exciting. This news article is not using the Summary field and therefore there is no link to read more. But you can click on the news heading to read only this article.', '2017-03-24 20:33:44', NULL, NULL, NULL, 'published', NULL, '2017-03-24 20:33:44', '2017-03-24 20:33:44', '1', NULL, NULL, '1') ;
#
# End of data contents of table `cms_module_news`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news_categories`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news_categories`
#

DROP TABLE IF EXISTS `cms_module_news_categories`;


#
# Table structure of table `cms_module_news_categories`
#

CREATE TABLE `cms_module_news_categories` (
  `news_category_id` int(11) NOT NULL,
  `news_category_name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `hierarchy` varchar(255) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `long_name` text,
  `create_date` time DEFAULT NULL,
  `modified_date` time DEFAULT NULL,
  PRIMARY KEY (`news_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news_categories` (1 records)
#
 
INSERT INTO `cms_module_news_categories` VALUES ('1', 'General', '-1', '00000', NULL, 'General', '20:33:44', '20:33:44') ;
#
# End of data contents of table `cms_module_news_categories`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news_categories_seq`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news_categories_seq`
#

DROP TABLE IF EXISTS `cms_module_news_categories_seq`;


#
# Table structure of table `cms_module_news_categories_seq`
#

CREATE TABLE `cms_module_news_categories_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news_categories_seq` (1 records)
#
 
INSERT INTO `cms_module_news_categories_seq` VALUES ('1') ;
#
# End of data contents of table `cms_module_news_categories_seq`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news_fielddefs`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news_fielddefs`
#

DROP TABLE IF EXISTS `cms_module_news_fielddefs`;


#
# Table structure of table `cms_module_news_fielddefs`
#

CREATE TABLE `cms_module_news_fielddefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT NULL,
  `extra` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news_fielddefs` (0 records)
#

#
# End of data contents of table `cms_module_news_fielddefs`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news_fieldvals`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news_fieldvals`
#

DROP TABLE IF EXISTS `cms_module_news_fieldvals`;


#
# Table structure of table `cms_module_news_fieldvals`
#

CREATE TABLE `cms_module_news_fieldvals` (
  `news_id` int(11) NOT NULL,
  `fielddef_id` int(11) NOT NULL,
  `value` text,
  `create_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`,`fielddef_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news_fieldvals` (0 records)
#

#
# End of data contents of table `cms_module_news_fieldvals`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_news_seq`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_news_seq`
#

DROP TABLE IF EXISTS `cms_module_news_seq`;


#
# Table structure of table `cms_module_news_seq`
#

CREATE TABLE `cms_module_news_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_news_seq` (1 records)
#
 
INSERT INTO `cms_module_news_seq` VALUES ('1') ;
#
# End of data contents of table `cms_module_news_seq`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_search_index`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_search_index`
#

DROP TABLE IF EXISTS `cms_module_search_index`;


#
# Table structure of table `cms_module_search_index`
#

CREATE TABLE `cms_module_search_index` (
  `item_id` int(11) DEFAULT NULL,
  `word` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `cms_index_search_count` (`count`),
  KEY `cms_index_search_index` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_search_index` (2731 records)
#
 
INSERT INTO `cms_module_search_index` VALUES ('1', 'home', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'congratulations', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'installation', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'worked', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'now', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'fully', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'functional', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'cms', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'made', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'simple', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'almost', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'ready', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'start', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'building', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'site', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'chose', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'install', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'default', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'numerous', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'pages', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'available', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'read', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'should', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'thoroughly', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'devoted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'showing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'basics', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'begin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'working', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'stylesheets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'many', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'described', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'demonstrated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'learn', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'much', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'power', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'absorbing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'information', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'administration', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'console', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'login', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'administrator', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'username', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'password', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'mentioned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'process', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'http', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'yourwebsite', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'com', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'cmsmspath', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'documentation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'case', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'community', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'service', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'forum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'irc', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'licensecms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'released', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'gpl', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'license', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'don\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'leave', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'link', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'back', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'would', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'third', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'party', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'modules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'may', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'include', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'additional', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('1', 'restrictions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'cmsms', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'works', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'site', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'created', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'cms', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'made', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'simple', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'couple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'terms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'central', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'understanding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'first', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'need', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'html', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'pages', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'styled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'css', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'one', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'style', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'sheets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'attached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'create', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'contain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'websites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'doesn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'sound', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'hard', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'don\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'know', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'want', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'customize', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'liking', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'consider', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'learning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'menu', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'read', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'well', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'advanced', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'manager', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'additional', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'adding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'many', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'kinds', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'functionality', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'event', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'managing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'work', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'flow', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'last', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'summary', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'basic', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('2', 'creating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'templates', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'stylesheets', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'template', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'html', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'layout', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'design', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'page', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'work', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'designer', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'whatever', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'every', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'uses', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'meaning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'person', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'editing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'content', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'doesn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'skills', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'placeholders', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'navigation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'areas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'user', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'visiting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'site', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'automatically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'generated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'filled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'structure', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'styled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'style', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'sheets', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'attached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'styling', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'done', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'css', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'look', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'way', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'want', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'should', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'familiar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'least', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'basic', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'level', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'don\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'worry', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'themes', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'ready', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'made', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'download', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'first', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'install', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'use', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'customize', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'needs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'described', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'section', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'also', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'new', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'cmsms', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'community', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'shares', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'anyone', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'admin', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'panelin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('3', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'pages', '14') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'navigation', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'determine', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'structure', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'web', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'site', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'seen', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'admin', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'content', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', '&raquo', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'page', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'think', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'set', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'accessed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'menu', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'can', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'link', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'within', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'menuthe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'links', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'user', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'navigate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'automatically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'created', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'hierarchy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'drives', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'several', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'levels', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'tree', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'generations', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'top', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'level', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'parent', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'children', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'turn', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'parents', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'template', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'determines', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'placed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'create', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'kind', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'dream', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'customizing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'manager', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'however', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'should', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'work', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'situations', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'unordered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'list', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'style', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'liking', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'full', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'good', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'articles', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'styling', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'best', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'listutorial', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'maxdesignpages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'cmsms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'panelyou', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'well', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'next', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'chapter', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('4', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'content', '27') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'information', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'page', '25') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'already', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'mentioned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'choose', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'template', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'use', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'add', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'automatically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'placed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'placeholders', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'selected', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'can', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'define', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'one', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'several', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'areas', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'blocks', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'block', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', '=\'block', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'name', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'will', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'appear', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'text', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'edit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'uses', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'line', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'instead', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'full', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'area', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'parameter', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'oneline', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', '=true', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'tag', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'read', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'cmsms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'admin', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'tags', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'typesthere', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'currently', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'main', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'types', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'version', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'determine', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'type', '15') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'menu', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'item', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'contenterror', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'pageexternal', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'linkinternal', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'linksection', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'headerseparatorthe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'regular', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'normally', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'reading', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'put', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'would', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'layout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'pages', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'controlled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'create', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'must', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'title', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'going', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'parent', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'login', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'change', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'exactly', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'works', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'error', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'just', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'sounds', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'like', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'set', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', '404', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'found', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'errors', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'shows', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'occurs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'target', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'also', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'part', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'external', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'link', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'another', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'destination', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'along', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'setting', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'options', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'following', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'hierarchy', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'rules', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'internal', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'section', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'header', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'used', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'break', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'menus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'groupings', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'sections', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'unrelated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'headers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'associated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'group', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'links', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'similar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'little', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'bit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'say', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'next', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'reference', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'separator', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'appears', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'follows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('5', 'management', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'menu', '18') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'manager', '13') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'module', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'reads', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'hierarchy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'builds', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'navigation', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'template', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'default', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'sample', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'included', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'users', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'enough', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'unordered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'list', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'styled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'accepts', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'various', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'optional', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'attributes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'parameters', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'tag', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'allow', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'customize', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'behavior', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'can', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'explanation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'help', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'found', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'right', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'side', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'screen', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'layout', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'administration', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'console', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'customizing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'clicking', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'import', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'database', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'button', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'create', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'new', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'name', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'modify', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'specifying', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'call', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', '=\'mynewtemplate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'cmsms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'admin', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'panelread', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('6', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'extensions', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'three', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'kinds', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'can', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'add', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'many', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'functionality', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'default', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'cms', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'made', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'simple', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'install', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'called', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tags', '12') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'user', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'defined', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'modules', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tagstags', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'simplest', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'form', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'designed', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'accomplish', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'just', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'small', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'specific', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'task', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'custom', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'available', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'find', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'kind', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'insert', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'template', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'type', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'content', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'smarty', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'used', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'placeholders', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'navigation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'breadcrumbs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'etc', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'website', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'developers', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'bit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'php', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'experience', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'easy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'create', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'share', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tagsusers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'also', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'pages', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'snippets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'without', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '&lt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'surrounding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'providing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'ability', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'usable', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'pieces', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'site', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'inserted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'like', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tagname', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'typically', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'provide', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'utility', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'special', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'likely', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'won\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tasks', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'modulesmodules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'highest', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'level', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'plugin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'environment', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'allow', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'implement', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'complex', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'within', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'cmsms', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'module', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'provides', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'advanced', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'usually', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'interacts', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'database', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'ways', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'may', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'numerous', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'reports', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'forms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'additionally', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'administrative', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'interface', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'manipulating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'data', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'settings', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'extremely', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'well', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'api', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'application', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'programming', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'written', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'write', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'intricate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'fully', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'functioning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'applications', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'use', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'powered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'popular', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'frontend', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'users', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'album', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'calendar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'guestbook', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'builder', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'modulemanager', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'included', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'allows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'browsing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'reading', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'installing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'actually', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'name', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'parameter', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'cms_module', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'tag', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'looks', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '=\'modulename', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'parameter1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '=\'this', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'parameter2', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'parameter3', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', '=\'that', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'normal', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'accept', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'effect', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'changes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'behavior', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'though', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'required', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'read', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'moreyou', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('7', 'documentation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'event', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'manager', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'events', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'new', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'powerful', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'way', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'assigning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'actions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'would', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'send', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'email', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'administrator', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'file', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'uploaded', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'page', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'created', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'user', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'could', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'executed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'happens', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'brief', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'here\'s', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'works', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'module', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'core', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'register', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'newnews', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'newfronteenduser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'fileuploaded', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'editpage', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'etc', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'there\'s', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'moment', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'uploads', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'frontend', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'users', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'configured', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'still', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'selfreg', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'allow', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'specify', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'modules', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'tags', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'should', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'handle', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'order', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'handlers', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'called', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'doevent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'method', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'name', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'whatever', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'data', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'wants', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'triggered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'needs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('8', 'documented', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'workflow', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'basic', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'steps', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'creating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'website', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'plan', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'determine', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'pages', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'want', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'structure', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'design', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'create', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'one', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'several', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'template', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'layout', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'style', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'attach', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'stylesheets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'content', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'select', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'user', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'navigates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'created', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'adding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('9', 'placeholder', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'get', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'help', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'cms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'made', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'simple', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'community', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'service', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'information', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'support', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'cmsms', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'documentation', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'website', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'start', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'maintained', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'dev', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'teamthe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'forums', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'search', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'answers', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'questions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'ask', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'anything', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'irc', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'short', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'internet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'relay', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'chat', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'many', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'developers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'hang', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'others', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'ready', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'discuss', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'give', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'please', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'remember', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'people', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'involved', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'developing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'supporting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'day', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'jobs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'duties', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'might', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'available', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'patient', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'polite', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'will', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'better', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'hope', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'enjoy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'creating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'sites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'want', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'contribute', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'development', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'welcome', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'contact', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('10', 'hit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'default', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'templates', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'explained', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'cms', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'made', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'simple', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'installed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'numerous', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'choose', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'process', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'display', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'give', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'head', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'start', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'creating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'sites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'tags', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'unique', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'described', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'page', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'menu', '11') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'left', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'link', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'beneath', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'look', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'like', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'changing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'style', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'templatesall', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'sheets', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'comments', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'throughout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'help', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'change', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'menus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'navigationtwo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'kinds', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'navigation', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'used', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'template', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'manager', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'cssmenu', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'dropdown', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'using', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'css', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'well', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'internet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'explorer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'javascript', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'two', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'type', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'call', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'unordered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'gets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'appearance', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'tag', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', '=\'cssmenu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'name', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'custom', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'don\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'end', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'second', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'level', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'collapse', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'children', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'parent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'clicked', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'etc', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'read', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('11', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cmsms', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'tags', '20') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'templates', '15') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'explain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'used', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'default', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'specific', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'rest', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'just', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'pure', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'html', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'can', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'read', '15') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'documentation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'website', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'page', '25') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'title&lt', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'title&gt', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'sitename', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'using', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'template', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'replaced', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'site', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'name', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'specify', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'admin', '18') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '&raquo', '16') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'global', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'settings', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'title', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'add', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'edit', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'extensions', '14') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'panel', '16') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'metadata', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'metadatathis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'tag', '37') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'adds', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'specified', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'also', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'options', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'tab', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'adding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'editing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'knowing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'base', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'folder', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'pretty', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'urls', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'don\'t', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'remove', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'use', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'metadatatag', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'stylesheets', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'deprecated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'stylesheetthis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'links', '11') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'style', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'sheets', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'css', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'attached', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'means', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'will', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'linked', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'automatically', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'stylesheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cms_stylesheetthis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'newer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'version', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'new', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'allows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'smarty', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'variables', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'like', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '$red', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'indicate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'color', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'change', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'througout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'layout', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'requires', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '[root_url', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'put', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'front', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'images', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cms_stylesheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'relational', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cms_selflink', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'dir', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="start', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'rellink', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="prev', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="next', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=1these', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'interconnections', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'pages', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'good', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'accessibility', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'search', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'engine', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'optmizationread', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'width', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'internet', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'explorer', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'literal&lt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'script', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'type', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="text', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'javascript"&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '&lt', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'pass', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'min', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'max', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'measured', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'window', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'widthfunction', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'p7_minmaxw', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'var', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="auto', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=document', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'documentelement', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'clientwidth', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'w&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'w&lt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'return', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '&gt', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'script&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '[if', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'lte', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', ']&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'css"&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '#pagewrapper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'expression', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '720', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '950', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '#container', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'height', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'style&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '[endif', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'literalthis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'isn\'t', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'really', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'displays', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'insert', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'javascript', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'fluid', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'doesn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'understand', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'browser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'set', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'browsers', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'beginning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'skip', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'anchor', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'main', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'skip', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'content', '14') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'accesskey', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'s', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'text', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'content\'anchor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'inserted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'visible', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'screen', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'readers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'hidden', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'visual', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'header', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'logo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'image', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '$sitename"in', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'h1&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'link', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'selected', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'parameter', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '$sitename', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'variable', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'searchto', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'form', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'simply', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'actually', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'module', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'should', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'therefore', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'called', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'cms_module', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'search', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'simplify', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'matters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'wrapper', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'it\'s', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'easier', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'remember', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'modules', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'breadcrumbs', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'starttext', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'you', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'here', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'root', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'home', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'delimiter', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'path', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'current', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'chosen', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'you', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'force', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'home', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'even', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'select', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'separates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'entries', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'navigation', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'menu', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'collapse', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'1\'this', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'want', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'appear', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'manager', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'menus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'stored', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'files', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'that\'s', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'tpl', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'extension', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'easily', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'import', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'database', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'directly', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'omit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'news', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'3', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'detailpage', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'news\'this', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'display', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'last', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'three', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'articles', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'clicking', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'article', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'details', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'opened', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'alias', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'core', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'print', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'button', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'showbutton', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=true', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=truethe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'true', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'told', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'output', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'instead', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'dialog', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'opens', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'immediate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'printing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'prints', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'everything', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'content&lt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'h2&gt', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'contentmaybe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'important', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'every', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'required', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'previous', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'next', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'top', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="previous', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '="next"some', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'internal', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'hierarchy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'separators', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'section', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'headers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'omitted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'footer', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'global_content', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', '=\'footer\'instead', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'bloating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'lots', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'code', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'block', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'call', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'useful', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'reused', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'several', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('12', 'blocks', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'left', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'simple', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'navigation', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'column', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'template', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'menu', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'sidebar', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'styled', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'stylesheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'called', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'vertical', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'easily', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'float', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'right', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'instead', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'layout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'style', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'sheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'property', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'div#sidebar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'element', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'change', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'will', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'side', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'course', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'adjust', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'margins', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'div#main', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('13', 'swap', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'top', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'simple', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'navigation', '17') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'left', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'subnavigation', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'column', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'menu', '12') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'manager', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'easily', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'split', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'two', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'parts', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'page', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'level', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'hierarchy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'displayed', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'horizontally', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'depending', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'localized', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'sub', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'vertically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'case', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'displays', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'levels', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'children', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'explained', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'tagthe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'tag', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'inserted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'twice', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'template', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'first', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'main', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'should', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'show', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'looks', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'like', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', '=\'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'number_of_levels', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', '=\'1', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'contain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'second', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'selected', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'also', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'third', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'links', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'display', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'parent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'clicked', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'otherwise', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'hidden', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'collapsed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'unless', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'current', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', '=\'simple_navigation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'tpl', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'start_level', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', '=\'2', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'collapse', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'attached', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'style', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'sheets', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'menuas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'styled', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'differently', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'horizontal', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'vertical', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'styling', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'hand', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'contains', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'using', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'templatehowever', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'could', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'output', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'floating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'sidebar', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'rightyou', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'float', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'right', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'instead', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'layout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'columns', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'sheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'property', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'div#sidebar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'element', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'change', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'will', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'side', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'course', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'adjust', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'margins', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'div#main', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('14', 'swap', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'cssmenu', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'top', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'columns', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'drop', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'menu', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'using', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'although', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'javascript', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'required', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'internet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'explorer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'note', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'ie6', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'will', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'let', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'types', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'template', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'time', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'second', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'one', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'fail', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'open', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'either', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'vertical', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'horizontal', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'inserted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', '=\'cssmenu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'tpl', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'style', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'stylesheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'navigation', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'safe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'side', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'copy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'sheet', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'attach', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'new', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'instead', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'changes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'revert', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'default', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'something', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'goes', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'wrong', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'just', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'test', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'content', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'long', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'sentence', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'probably', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'should', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'divided', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'several', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'smaller', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'sentences', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'excellent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'management', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'system', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'easily', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'creating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'sites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'added', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'adding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'editing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'sidebar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'text', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'area', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'comes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'place', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'holder', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', 'block', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('15', '=\'sidebar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'cssmenu', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'left', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'column', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'last', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'top', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'instead', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'across', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'isn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'whole', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'lot', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'say', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'filler', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'textlorem', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ipsum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'dolor', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sit', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'amet', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'consectetuer', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'adipiscing', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'elit', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'leo', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'lorem', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ultricies', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sollicitudin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'vivamus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'molestie', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nec', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nulla', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'suspendisse', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'potenti', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'donec', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'pulvinar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'magna', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'eget', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'pretium', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'justo', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sem', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'iaculis', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'urna', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'condimentum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nibh', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'augue', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'pellentesque', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'arcu', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'integer', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'tristique', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'tempor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'mauris', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sed', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'orci', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'commodo', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'volutpat', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sagittis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'vitae', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'varius', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'massa', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'maecenas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'pede', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ligula', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'pharetra', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'eros', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'duis', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ullamcorper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nisl', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nunc', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'neque', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'posuere', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'dapibus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'convallis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'non', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'quis', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'phasellus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'erat', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'purus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'facilisis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'sapien', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'faucibus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'consequat', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'quisque', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'lectus', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'luctus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'enim', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ultrices', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'laoreet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'subheadingvestibulum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'tellus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'fusce', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'cras', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'congue', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'lacus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'rhoncus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'venenatis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ornare', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'semper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'odio', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'ante', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'libero', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'risus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'mattis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'euismod', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'morbi', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'fermentum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'vel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'diam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'vestibulum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'quam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'wisi', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'etiam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'dictum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'vulputate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'aliquam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'proin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'imperdiet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'nonummy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('16', 'lacinia', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'minimal', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'template', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'needs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'cmsms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'stylesheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'attached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'doesn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'nice', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'however', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'slightly', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'appealing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'inline', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'styling', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'used', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'floating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'right', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'menu', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'page', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'navigation', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'manager', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'accessibility', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'stuff', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'it\'s', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'recommended', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('17', 'rather', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'higher', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'end', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'complex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'especially', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'menus', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'use', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'menu', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'template', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'shows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'power', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'css', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'forewarned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'ie6', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'won\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'best', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'effects', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'shadow', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'standards', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'compliant', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'browser', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'mean', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'it\'s', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'still', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'nice', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'grant', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'just', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'upgrade', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'differencesstarting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'ncleanblue', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'get', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'really', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'subtle', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'tabbed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'goes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'real', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'drop', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'effect', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'header', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'footer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'great', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'color', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'scheme', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'search', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'way', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'cool', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'theme', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'say', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'thanks', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'nuno', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'next', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'submenus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'version', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'shadowed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'first', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'step', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'point', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'top', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'sub', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'right', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'left', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'layout', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'cssmenu', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'columns', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'column', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'respectively', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'except', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'hope', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'enjoy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'changes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'want', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'make', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'always', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'copy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'original', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'style', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'sheet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'safe', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'keeping', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'never', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'know', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'may', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('18', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'ncleanblue', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nuno', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'graciously', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'supplied', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'great', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'looking', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'designs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'using', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'new', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'style', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'drop', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'children', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'pages', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'image', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'second', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'going', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'top', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'extra', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'bottom', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'child', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', '&lt', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'class', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', '="separator', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'once', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', '="list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'type', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'none', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', '&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', '&amp', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nbsp', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'li&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'hold', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'filler', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'textmaecenas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'tristique', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'tortor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nec', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'eleifend', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'luctus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nibh', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'leo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'imperdiet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'wisi', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'accumsan', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'est', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'lectus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'orci', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'proin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'facilisis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'odio', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'auctor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'feugiat', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'sapien', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'purus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'iaculis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'dui', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'volutpat', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'augue', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'pede', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'sem', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nulla', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'facilisi', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'aliquam', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'suscipit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'elementum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'ipsum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'morbi', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'urna', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nam', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'eros', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'justo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'varius', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'sit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'amet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'euismod', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'dictum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'neque', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nullam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'tempor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'adipiscing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'quisque', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'hendrerit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'nunc', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'erat', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'pellentesque', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'tincidunt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'sodales', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'arcu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'porta', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'sagittis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'quam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'vivamus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'eget', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'egestas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'velit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'congue', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('19', 'consectetuer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'shadowmenu', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tab', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'columns', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'previous', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'theme', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'changed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'child', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'css', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'different', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'top', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'image', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'involves', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'changing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'margin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'padding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'images', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'shape', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'note', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'difference', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'second', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'level', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'third', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'arrow', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'filler', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'textcurabitur', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'ornare', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'velit', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'molestie', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nulla', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'fusce', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'fermentum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'facilisis', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'maecenas', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'volutpat', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'eros', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'pellentesque', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'mollis', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'urna', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'elit', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'rutrum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'turpis', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'congue', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'convallis', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nibh', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'erat', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nec', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'purus', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sed', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'malesuada', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'consectetuer', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sollicitudin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'placerat', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'augue', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'vestibulum', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sem', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'eget', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'laoreet', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'cursus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'ante', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'viverra', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'non', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'lectus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'aliquam', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'aenean', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'gravida', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tempor', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'lorem', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'pulvinar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tellus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'phasellus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'dui', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'praesent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'vulputate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nam', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tristique', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tortor', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'eleifend', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'luctus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'leo', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'imperdiet', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'wisi', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'accumsan', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'est', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'orci', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'proin', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'odio', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'auctor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'feugiat', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sapien', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'iaculis', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'pede', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'facilisi', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'suscipit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'elementum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'ipsum', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'morbi', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'justo', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'varius', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sit', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'amet', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'euismod', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'dictum', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'neque', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nullam', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'adipiscing', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'quisque', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'hendrerit', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'nunc', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tincidunt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sodales', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'arcu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'porta', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'sagittis', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'quam', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'vivamus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'egestas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'textlorem', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'dolor', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'cras', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'enim', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'quis', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'felis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'tempus', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'diam', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'metus', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'vel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'lobortis', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'ultrices', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'mauris', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'blandit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('20', 'posuere', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'welcome', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'simplex', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'theme', '12') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'created', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'demonstrate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'html5', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'css3', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'functionality', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'within', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'cms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'made', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'simple&trade', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'shipped', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'css', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'framework', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'making', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'possible', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'create', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'responsive', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'mobile', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'capabale', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'layouts', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'ease', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'included', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'template', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'will', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'find', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'four', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'stylesheets', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'attached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'coresimplex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'layoutsimplex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'mobilesimplex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'printmain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'core', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'stylesheet', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'contains', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'simple', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'fluid', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'grid', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'based', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '960', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'system', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'media', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'queries', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'used', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'make', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'flexible', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'layout', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'screen', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'width', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'easy', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'quickly', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'change', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'appearance', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'complete', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'site', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'code', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'boxed', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '&lt', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'body&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'tag', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'removed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'changed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'would', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'face', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'white', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'background', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'allignement', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'class', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'wrapper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'div', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'leftaligned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'rightaligned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'whole', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'aligned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'right', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'support', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'devicesas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'mentioned', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'gives', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'starting', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'point', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'developement', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'world', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'versatile', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'means', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'perfect', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'developer', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'should', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'decide', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'technique', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'use', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'current', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'project', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'small', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'step', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'towards', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'requires', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'jquery', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'cms_jquery', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'note', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'bottom', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'carefull', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'using', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'modules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'include', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'head&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'section', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'file', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'functions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'makes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'navigating', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'devices', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'part', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'covers', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'meant', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'example', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'thatas', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'smarty', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'power', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'slider', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'demonstartes', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'slideshow', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'without', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'single', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'module', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'assign', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'var', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'teaser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'value', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'uploads', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'teaser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'jpg', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '|glob', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'foreach', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '$teaser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'item', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'div&gt', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'img', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'src', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'root_url', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '$one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'852', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'height', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'275', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'alt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'like', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'additional', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'plugin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'swipejsin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'well', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'color', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'scheme', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'simply', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'changing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'hex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'tags', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '[assign', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'boxed_bg', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '="#d1d1d1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'url', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '$path`', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'gif', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'light_grey', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#f1f1f1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'grey', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#e9e9e9', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'dark_grey', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#555', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'white', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#fff', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'orange', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#f39c2c', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'dark_orange', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#e6870e', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'yellow', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', '=\'#fdbd34', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', ']if', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'modern', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'browser', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'notice', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'techniques', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'internet', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'explorer', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'fallbacks', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'doesn\'t', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'mean', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'work', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'visitor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'gracefull', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'fallback', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'meaning', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'animations', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'animate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'rounded', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'corners', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'edges', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'develper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'goran', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'ilic', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'uniqu3e', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'kept', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'simplistic', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'easily', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'read', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'either', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'new', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'editing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'full', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'intentionally', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'far', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'old', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'wants', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'different', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('21', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'default', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'extensions', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'come', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'six', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'modules', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'tags', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'described', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'displayed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'following', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'core', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'click', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'explanation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('22', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'modules', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'six', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'come', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'simple', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'following', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'explain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'module', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'name', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'insert', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'page', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'normally', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'cms_module', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'tag', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'simplify', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'things', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'core', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'wrapper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'called', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('23', 'news', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'news', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'sites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'section', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'latest', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'best', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'way', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'accomplish', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'module', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'display', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'items', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'insert', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'tag', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'number', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', '=\'5', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'category', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', '=\'general', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'inserted', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'can', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'sidebar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'left', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'used', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'conjunction', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'read', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'navigate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'modules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('24', 'want', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'menu', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'manager', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'already', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'explained', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'cmsms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'works', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'page', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'powerful', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'module', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'kind', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'navigation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'system', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'web', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('25', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'theme', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'manager', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'module', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'allows', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'import', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'export', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'attached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'stylesheets', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'including', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'images', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'use', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'themes', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'share', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'feel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'cmsms', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'users', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'easy', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'convert', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'kind', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'many', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'already', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'converted', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'installed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'community', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'shares', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'anyone', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'download', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('26', 'site', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'microtiny', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'called', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'wysiwyg', '6') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'editor', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'editing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'pages', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'stands', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'works', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'similar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'word', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'processor', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'select', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'style', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'going', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'look', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'among', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'available', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'editors', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'decided', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'stripped', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'version', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'tinymce', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'developed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'regular', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'updates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'large', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'following', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'customizable', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'however', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'difficult', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'create', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'cross', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'browser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'online', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'different', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'kinds', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'environments', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'familiar', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'html', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'preferences', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'user', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'gives', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'control', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'will', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'modules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('27', 'download', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'search', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'module', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'searching', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'core', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'content', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'along', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'certain', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'registered', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'modules', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'put', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'word', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'two', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'gives', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'back', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'matching', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'relevant', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'results', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'templates', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'want', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'form', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'appear', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'different', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'specify', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'parameter', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'resultpage', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', '=\'page', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'alias', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'information', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('28', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'module', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'manager', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'client', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'modulerepository', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'allows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'see', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'modules', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'available', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'version', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'size', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'status', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'action', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'whether', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'already', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'installed', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'read', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'letting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'install', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'remote', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'sites', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'without', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'need', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'ftp\'ing', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'unzipping', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'archives', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'xml', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'files', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'downloaded', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'soap', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'integrity', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'verified', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'expanded', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'automatically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'modulemanager', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'now', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'checks', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'dependencies', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'set', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'wont', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'met', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'new', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'tab', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'shows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'newer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'versions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'short', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'means', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'download', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'directly', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'admin', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'panel', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'released', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'file', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'list', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'official', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'cmsms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'repository', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'development', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('29', 'forge', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'tags', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'custom', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'included', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'simple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'installation', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'described', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'demonstrated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'following', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'page', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'user', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'defined', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'next', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'one', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'tag', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'simply', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'put', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'like', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'nameoftag', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'take', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'accessible', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', '&raquo', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'admin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('30', 'panel', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'tags', '7') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'core', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'plenty', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'included', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cmsms', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'demonstrated', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'questions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'parameters', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'can', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'take', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'anything', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'else', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'please', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'see', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'help', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'anchor', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'syntax', '13') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'used', '18') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'here', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'text', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'scroll', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'down', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'class', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'myclass', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'title', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'mytitle', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'tabindex', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'accesskey', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'s', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'display', '13') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'creates', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'link', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'page', '15') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'example', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '^top', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'bottom', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms_breadcrumbs', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'root', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'home', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'breadcrumbs', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'navigational', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'technique', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'displaying', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'visited', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'pages', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'leading', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'home', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'currently', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'viewed', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'find', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'header', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms_module', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'module', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'somemodulename', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'param1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'something', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'param2', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=true', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'tag', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'insert', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'modules', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'templates', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'download', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'default', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'wrapper', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'inserting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'though', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'made', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms_selflink', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '="1', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '="alias', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'another', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'content', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'inside', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'template', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'external', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'links', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'ext', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'parameter', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'simple', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'website', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms_version', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'displays', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'current', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'version', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'number', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'footer', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cms_versionname', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'name', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'current_date', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'format', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '="%a', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'prints', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'date', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'time', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'embed', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'url', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '="http', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'www', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cmsmadesimple', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'org', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'enable', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'inclusion', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'embeding', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'application', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'usual', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'could', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'forum', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'global_content', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', '=\'footer', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'inserts', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'global', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'block', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'previously', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'known', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'html', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'blob', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'code', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'menu_text', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'menu', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'modified_date', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'last', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'modified', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'print', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'cmsprinting', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'site_mapper', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('31', 'sitemap', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'user', '10') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'defined', '9') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'tags', '8') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'one', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'little', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'known', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'features', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'cms', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'made', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'simple', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'tag', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'basically', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'allows', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'write', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'php', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'code', '4') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'inside', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'admin', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'panel', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'use', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'add', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'button', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'extension', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', '&raquo', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'insert', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'template', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'page', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'example', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'i\'ve', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'put', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'together', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'line', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'plugin', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'will', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'show', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'current', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'agent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'information', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'browser', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'you\'re', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'output', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'right', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'looking', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'source', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'see', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'works', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'edit', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'user_agent', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'extensions', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'powerful', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'feature', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'used', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'remember', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'get', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'cached', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'therefore', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'scripts', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'rotate', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'banners', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'work', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'just', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'fine', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'note', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'also', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'written', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'without', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'opening', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', '&lt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', 'ending', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('32', '&gt', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'news', '5') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'module', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'installed', '3') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'exciting', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'article', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'using', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'summary', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'field', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'therefore', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'link', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'read', '2') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'can', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'click', '1') ; 
INSERT INTO `cms_module_search_index` VALUES ('33', 'heading', '1') ;
#
# End of data contents of table `cms_module_search_index`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_search_items`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_search_items`
#

DROP TABLE IF EXISTS `cms_module_search_items`;


#
# Table structure of table `cms_module_search_items`
#

CREATE TABLE `cms_module_search_items` (
  `id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `extra_attr` varchar(100) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `content_id` (`content_id`),
  KEY `extra_attr` (`extra_attr`),
  KEY `cms_index_search_items` (`module_name`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_search_items` (33 records)
#
 
INSERT INTO `cms_module_search_items` VALUES ('1', 'Search', '1', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('2', 'Search', '2', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('3', 'Search', '3', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('4', 'Search', '4', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('5', 'Search', '5', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('6', 'Search', '6', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('7', 'Search', '7', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('8', 'Search', '8', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('9', 'Search', '9', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('10', 'Search', '10', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('11', 'Search', '11', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('12', 'Search', '12', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('13', 'Search', '13', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('14', 'Search', '14', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('15', 'Search', '15', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('16', 'Search', '16', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('17', 'Search', '17', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('18', 'Search', '18', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('19', 'Search', '19', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('20', 'Search', '20', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('21', 'Search', '21', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('22', 'Search', '22', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('23', 'Search', '23', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('24', 'Search', '24', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('25', 'Search', '25', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('26', 'Search', '26', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('27', 'Search', '27', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('28', 'Search', '28', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('29', 'Search', '29', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('30', 'Search', '30', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('31', 'Search', '31', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('32', 'Search', '32', 'content', NULL) ; 
INSERT INTO `cms_module_search_items` VALUES ('33', 'News', '1', 'article', NULL) ;
#
# End of data contents of table `cms_module_search_items`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_module_search_items_seq`
# --------------------------------------------------------


#
# Delete any existing table `cms_module_search_items_seq`
#

DROP TABLE IF EXISTS `cms_module_search_items_seq`;


#
# Table structure of table `cms_module_search_items_seq`
#

CREATE TABLE `cms_module_search_items_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_module_search_items_seq` (1 records)
#
 
INSERT INTO `cms_module_search_items_seq` VALUES ('33') ;
#
# End of data contents of table `cms_module_search_items_seq`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `cms_modules`
# --------------------------------------------------------


#
# Delete any existing table `cms_modules`
#

DROP TABLE IF EXISTS `cms_modules`;


#
# Table structure of table `cms_modules`
#

CREATE TABLE `cms_modules` (
  `module_name` varchar(160) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `admin_only` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT NULL,
  `allow_fe_lazyload` tinyint(4) DEFAULT NULL,
  `allow_admin_lazyload` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`module_name`),
  KEY `cms_idx_modules_by_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data contents of table `cms_modules` (10 records)
#
 
INSERT INTO `cms_modules` VALUES ('AdminSearch', 'installed', '1.0.2', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('CMSContentManager', 'installed', '1.1.4', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('DesignManager', 'installed', '1.1.1', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('FileManager', 'installed', '1.5.2', '0', '1', '1', '0') ; 
INSERT INTO `cms_modules` VALUES ('MenuManager', 'installed', '1.50.2', '0', '0', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('MicroTiny', 'installed', '2.0.3', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('ModuleManager', 'installed', '2.0.5', '1', '1', '0', '1') ; 
INSERT INTO `cms_modules` VALUES ('Navigator', 'installed', '1.0.3', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('News', 'installed', '2.50.6', '0', '1', '1', '1') ; 
INSERT INTO `cms_modules` VALUES ('Search', 'installed', '1.50.2', '0', '1', '1', '1') ;
#
# End of data contents of table `cms_modules`
# --------------------------------------------------------

