--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
	`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`user_login` varchar(60) NOT NULL DEFAULT '',
	`user_pass` varchar(255) NOT NULL DEFAULT '',
	`user_nicename` varchar(50) NOT NULL DEFAULT '',
	`user_email` varchar(100) NOT NULL DEFAULT '',
	`user_url` varchar(100) NOT NULL DEFAULT '',
	`user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`user_activation_key` varchar(255) NOT NULL DEFAULT '',
	`user_status` int(11) NOT NULL DEFAULT '0',
	`display_name` varchar(250) NOT NULL DEFAULT '',
	PRIMARY KEY (`ID`),
	KEY `user_email` (`user_email`(100)),
	KEY `user_nicename` (`user_nicename`(50)),
	KEY `user_login_key` (`user_login`(60))
);

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES (1,'admin','$wp$2y$10$mChLbnrz8oWRYhfQwRp0feSaDh4D0dqaQcp5b6cQh./ke0ZJqcuaO','admin','admin@localhost.com','http://localhost:8887','2025-07-09 02:40:31','',0,'admin');

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
	`umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
	`meta_key` varchar(255) DEFAULT NULL,
	`meta_value` longtext,
	PRIMARY KEY (`umeta_id`),
	KEY `meta_key` (`meta_key`(100)),
	KEY `user_id` (`user_id`)
);

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl',0);
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level',10);
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel',1);
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:11:{s:64:"8a56517af24c1980ea3fca7014e38b2cb7ef6b0fae9a5310806df28e0087c48a";a:3:{s:10:"expiration";i:1754875978;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753666378;}s:64:"7780a710c4bb4c8ac3be9da3059b953feda49492ccda3480ba9719d7fbb37fda";a:3:{s:10:"expiration";i:1754880410;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753670810;}s:64:"5ad610846e67a0014d7fece4978277d2a8c3a523f539a4ebd78fff6fe16953a0";a:3:{s:10:"expiration";i:1754898659;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753689059;}s:64:"0add5172822b372bde189e1d5f08f1fc07db227eb9b1eb05711dac633dd694b4";a:3:{s:10:"expiration";i:1754964437;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753754837;}s:64:"7fb2761525f0366f5c142480984d4b6cfd03eaaa455190618ee6f0ca5666a72d";a:3:{s:10:"expiration";i:1755047805;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753838205;}s:64:"811d9ec8cc5cc3ae57ccb150cab314ebddb1b264b8260030422a0e9baa026728";a:3:{s:10:"expiration";i:1755156395;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1753946795;}s:64:"dd7299cc72713b55024abc31555c76d28aa7ea29a09f17db9947396d8b9eee1c";a:3:{s:10:"expiration";i:1755226755;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1754017155;}s:64:"25d8ee5ecf03f914f2d5a308e792bbbe099db05f7599085972f06ba95ba202b8";a:3:{s:10:"expiration";i:1755482602;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1754273002;}s:64:"a151628e90e90c984c22d63cbba26444e1428fdd143777891e6b976081506f35";a:3:{s:10:"expiration";i:1755498548;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1754288948;}s:64:"4421c68f07dbeaaa6fcbb8f3e2375158289f20985f87897068eda7ff9f2a5f19";a:3:{s:10:"expiration";i:1755594602;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1754385002;}s:64:"501070020886f3f0b944c7da3c7c71d57c4df8195411283ead96a25b38060f2a";a:3:{s:10:"expiration";i:1754819693;s:2:"ip";s:9:"127.0.0.1";s:5:"login";i:1754646893;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time',1754300035);
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id',76);
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:"ip";s:9:"127.0.0.0";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_persisted_preferences','a:2:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:9:"_modified";s:24:"2025-07-09T02:50:37.409Z";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'_yoast_wpseo_profile_updated',1753770771);
INSERT INTO `wp_usermeta` VALUES (25,1,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (26,1,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (27,1,'wpseo_content_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (28,1,'wpseo_keyword_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (29,1,'nav_menu_recently_edited',2);
INSERT INTO `wp_usermeta` VALUES (30,1,'_new_email','a:2:{s:4:"hash";s:32:"8da60f6cb893730784908972811acd50";s:8:"newemail";s:25:"boydelatorre.73@gmail.com";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'metaboxhidden_post','a:5:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');
INSERT INTO `wp_usermeta` VALUES (33,1,'edit_post_per_page',100);

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
	`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
	`meta_key` varchar(255) DEFAULT NULL,
	`meta_value` longtext,
	PRIMARY KEY (`meta_id`),
	KEY `meta_key` (`meta_key`(100)),
	KEY `term_id` (`term_id`)
);

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
	`term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL DEFAULT '',
	`slug` varchar(200) NOT NULL DEFAULT '',
	`term_group` bigint(10) NOT NULL DEFAULT 0,
	PRIMARY KEY (`term_id`),
	KEY `name` (`name`(100)),
	KEY `slug` (`slug`(100))
);

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Quick Links','quick-links',0);
INSERT INTO `wp_terms` VALUES (4,'Core Programs','core-programs',0);

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
	`term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
	`taxonomy` varchar(32) NOT NULL DEFAULT '',
	`description` longtext NOT NULL DEFAULT '',
	`parent` bigint(20) unsigned NOT NULL DEFAULT 0,
	`count` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`term_taxonomy_id`),
	KEY `taxonomy` (`taxonomy`(32)),
	UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`(32))
);

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,31);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,13);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,7);

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
	`object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
	`term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
	`term_order` int(11) NOT NULL DEFAULT 0,
	PRIMARY KEY (`object_id`, `term_taxonomy_id`),
	KEY `term_taxonomy_id` (`term_taxonomy_id`)
);

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (33,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (36,4,0);
INSERT INTO `wp_term_relationships` VALUES (37,4,0);
INSERT INTO `wp_term_relationships` VALUES (38,4,0);
INSERT INTO `wp_term_relationships` VALUES (39,4,0);
INSERT INTO `wp_term_relationships` VALUES (40,4,0);
INSERT INTO `wp_term_relationships` VALUES (41,4,0);
INSERT INTO `wp_term_relationships` VALUES (42,4,0);
INSERT INTO `wp_term_relationships` VALUES (50,2,0);
INSERT INTO `wp_term_relationships` VALUES (51,2,0);
INSERT INTO `wp_term_relationships` VALUES (52,2,0);
INSERT INTO `wp_term_relationships` VALUES (53,2,0);
INSERT INTO `wp_term_relationships` VALUES (54,2,0);
INSERT INTO `wp_term_relationships` VALUES (55,2,0);
INSERT INTO `wp_term_relationships` VALUES (56,2,0);
INSERT INTO `wp_term_relationships` VALUES (80,1,0);
INSERT INTO `wp_term_relationships` VALUES (81,1,0);
INSERT INTO `wp_term_relationships` VALUES (82,1,0);
INSERT INTO `wp_term_relationships` VALUES (83,1,0);
INSERT INTO `wp_term_relationships` VALUES (84,1,0);
INSERT INTO `wp_term_relationships` VALUES (85,1,0);
INSERT INTO `wp_term_relationships` VALUES (86,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,1,0);
INSERT INTO `wp_term_relationships` VALUES (88,1,0);
INSERT INTO `wp_term_relationships` VALUES (89,1,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
INSERT INTO `wp_term_relationships` VALUES (91,1,0);
INSERT INTO `wp_term_relationships` VALUES (92,1,0);
INSERT INTO `wp_term_relationships` VALUES (93,1,0);
INSERT INTO `wp_term_relationships` VALUES (94,1,0);
INSERT INTO `wp_term_relationships` VALUES (95,1,0);
INSERT INTO `wp_term_relationships` VALUES (96,1,0);
INSERT INTO `wp_term_relationships` VALUES (97,1,0);
INSERT INTO `wp_term_relationships` VALUES (98,1,0);
INSERT INTO `wp_term_relationships` VALUES (99,1,0);
INSERT INTO `wp_term_relationships` VALUES (100,1,0);
INSERT INTO `wp_term_relationships` VALUES (101,1,0);
INSERT INTO `wp_term_relationships` VALUES (102,1,0);
INSERT INTO `wp_term_relationships` VALUES (103,1,0);
INSERT INTO `wp_term_relationships` VALUES (104,1,0);
INSERT INTO `wp_term_relationships` VALUES (105,1,0);
INSERT INTO `wp_term_relationships` VALUES (106,1,0);
INSERT INTO `wp_term_relationships` VALUES (107,1,0);
INSERT INTO `wp_term_relationships` VALUES (108,1,0);
INSERT INTO `wp_term_relationships` VALUES (109,1,0);

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
	`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
	`meta_key` varchar(255) DEFAULT NULL,
	`meta_value` longtext,
	PRIMARY KEY (`meta_id`),
	KEY `meta_key` (`meta_key`(100)),
	KEY `comment_id` (`comment_id`)
);

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
	`comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
	`comment_author` tinytext NOT NULL DEFAULT '',
	`comment_author_email` varchar(100) NOT NULL DEFAULT '',
	`comment_author_url` varchar(200) NOT NULL DEFAULT '',
	`comment_author_IP` varchar(100) NOT NULL DEFAULT '',
	`comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_content` text NOT NULL DEFAULT '',
	`comment_karma` int(11) NOT NULL DEFAULT '0',
	`comment_approved` varchar(20) NOT NULL DEFAULT '1',
	`comment_agent` varchar(255) NOT NULL DEFAULT '',
	`comment_type` varchar(20) NOT NULL DEFAULT 'comment',
	`comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
	`user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
	PRIMARY KEY (`comment_ID`),
	KEY `comment_author_email` (`comment_author_email`(100)),
	KEY `comment_parent` (`comment_parent`),
	KEY `comment_date_gmt` (`comment_date_gmt`),
	KEY `comment_approved_date_gmt` (`comment_approved`(20), `comment_date_gmt`),
	KEY `comment_post_ID` (`comment_post_ID`)
);

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-07-09 02:40:31','2025-07-09 02:40:31','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com/">Gravatar</a>.',0,1,'','comment',0,0);

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
	`link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`link_url` varchar(255) NOT NULL DEFAULT '',
	`link_name` varchar(255) NOT NULL DEFAULT '',
	`link_image` varchar(255) NOT NULL DEFAULT '',
	`link_target` varchar(25) NOT NULL DEFAULT '',
	`link_description` varchar(255) NOT NULL DEFAULT '',
	`link_visible` varchar(20) NOT NULL DEFAULT 'Y',
	`link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
	`link_rating` int(11) NOT NULL DEFAULT '0',
	`link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`link_rel` varchar(255) NOT NULL DEFAULT '',
	`link_notes` mediumtext NOT NULL DEFAULT '',
	`link_rss` varchar(255) NOT NULL DEFAULT '',
	PRIMARY KEY (`link_id`),
	KEY `link_visible` (`link_visible`(20))
);

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
	`option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`option_name` varchar(191) NOT NULL DEFAULT '',
	`option_value` longtext NOT NULL DEFAULT '',
	`autoload` varchar(20) NOT NULL DEFAULT 'yes',
	PRIMARY KEY (`option_id`),
	KEY `autoload` (`autoload`(20)),
	UNIQUE KEY `option_name` (`option_name`(100))
);

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:8887','on');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:8887','on');
INSERT INTO `wp_options` VALUES (3,'blogname','Spark Yes','on');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (5,'users_can_register',0,'on');
INSERT INTO `wp_options` VALUES (6,'admin_email','admin@localhost.com','on');
INSERT INTO `wp_options` VALUES (7,'start_of_week',1,'on');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags',0,'on');
INSERT INTO `wp_options` VALUES (9,'use_smilies',1,'on');
INSERT INTO `wp_options` VALUES (10,'require_name_email',1,'on');
INSERT INTO `wp_options` VALUES (11,'comments_notify',1,'on');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss',10,'on');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt',0,'on');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_port',110,'on');
INSERT INTO `wp_options` VALUES (18,'default_category',1,'on');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag',1,'on');
INSERT INTO `wp_options` VALUES (22,'posts_per_page',10,'on');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (26,'comment_moderation',0,'on');
INSERT INTO `wp_options` VALUES (27,'moderation_notify',1,'on');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}','on');
INSERT INTO `wp_options` VALUES (30,'hack_file',0,'on');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:7:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:33:"classic-editor/classic-editor.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:42:"contact-form-cfdb7/contact-form-cfdb-7.php";i:5;s:39:"copy-delete-posts/copy-delete-posts.php";i:6;s:24:"wordpress-seo/wp-seo.php";}','on');
INSERT INTO `wp_options` VALUES (34,'category_base','','on');
INSERT INTO `wp_options` VALUES (35,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (36,'comment_max_links',2,'on');
INSERT INTO `wp_options` VALUES (37,'gmt_offset',0,'on');
INSERT INTO `wp_options` VALUES (38,'default_email_category',1,'on');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (40,'template','spark-yes','on');
INSERT INTO `wp_options` VALUES (41,'stylesheet','spark-yes','on');
INSERT INTO `wp_options` VALUES (42,'comment_registration',0,'on');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (44,'use_trackback',0,'on');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (46,'db_version',60421,'on');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders',1,'on');
INSERT INTO `wp_options` VALUES (48,'upload_path','','on');
INSERT INTO `wp_options` VALUES (49,'blog_public',1,'on');
INSERT INTO `wp_options` VALUES (50,'default_link_category',2,'on');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (52,'tag_base','','on');
INSERT INTO `wp_options` VALUES (53,'show_avatars',1,'on');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w',150,'on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h',150,'on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop',1,'on');
INSERT INTO `wp_options` VALUES (59,'medium_size_w',300,'on');
INSERT INTO `wp_options` VALUES (60,'medium_size_h',300,'on');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (62,'large_size_w',1024,'on');
INSERT INTO `wp_options` VALUES (63,'large_size_h',1024,'on');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts',0,'on');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old',14,'on');
INSERT INTO `wp_options` VALUES (69,'thread_comments',1,'on');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth',5,'on');
INSERT INTO `wp_options` VALUES (71,'page_comments',0,'on');
INSERT INTO `wp_options` VALUES (72,'comments_per_page',50,'on');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";s:39:"copy-delete-posts/copy-delete-posts.php";a:2:{i:0;s:15:"Account\\Account";i:1;s:25:"onUninstallPluginListener";}}','off');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (81,'page_for_posts',0,'on');
INSERT INTO `wp_options` VALUES (82,'page_on_front',0,'on');
INSERT INTO `wp_options` VALUES (83,'default_post_format',0,'on');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled',0,'on');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms',1,'on');
INSERT INTO `wp_options` VALUES (86,'site_icon',0,'on');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w',768,'on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h',0,'on');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy',3,'on');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in',1,'on');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan',1767580831,'on');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved',1,'on');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled',0,'on');
INSERT INTO `wp_options` VALUES (100,'initial_db_version',58975,'on');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"cfdb7_access";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:38:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (102,'fresh_site',0,'off');
INSERT INTO `wp_options` VALUES (103,'user_count',1,'off');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}','auto');
INSERT INTO `wp_options` VALUES (106,'cron','a:12:{i:1752659476;a:0:{}i:1754649632;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1754664032;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1754664114;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1754707232;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1754707314;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1754707321;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1754707973;a:2:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1755053479;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1755139232;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1755161489;a:1:{s:27:"acf_update_site_health_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}','on');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:"version";s:5:"6.8.1";s:5:"files";a:536:{i:0;s:23:"archives/editor-rtl.css";i:1;s:27:"archives/editor-rtl.min.css";i:2;s:19:"archives/editor.css";i:3;s:23:"archives/editor.min.css";i:4;s:22:"archives/style-rtl.css";i:5;s:26:"archives/style-rtl.min.css";i:6;s:18:"archives/style.css";i:7;s:22:"archives/style.min.css";i:8;s:20:"audio/editor-rtl.css";i:9;s:24:"audio/editor-rtl.min.css";i:10;s:16:"audio/editor.css";i:11;s:20:"audio/editor.min.css";i:12;s:19:"audio/style-rtl.css";i:13;s:23:"audio/style-rtl.min.css";i:14;s:15:"audio/style.css";i:15;s:19:"audio/style.min.css";i:16;s:19:"audio/theme-rtl.css";i:17;s:23:"audio/theme-rtl.min.css";i:18;s:15:"audio/theme.css";i:19;s:19:"audio/theme.min.css";i:20;s:21:"avatar/editor-rtl.css";i:21;s:25:"avatar/editor-rtl.min.css";i:22;s:17:"avatar/editor.css";i:23;s:21:"avatar/editor.min.css";i:24;s:20:"avatar/style-rtl.css";i:25;s:24:"avatar/style-rtl.min.css";i:26;s:16:"avatar/style.css";i:27;s:20:"avatar/style.min.css";i:28;s:21:"button/editor-rtl.css";i:29;s:25:"button/editor-rtl.min.css";i:30;s:17:"button/editor.css";i:31;s:21:"button/editor.min.css";i:32;s:20:"button/style-rtl.css";i:33;s:24:"button/style-rtl.min.css";i:34;s:16:"button/style.css";i:35;s:20:"button/style.min.css";i:36;s:22:"buttons/editor-rtl.css";i:37;s:26:"buttons/editor-rtl.min.css";i:38;s:18:"buttons/editor.css";i:39;s:22:"buttons/editor.min.css";i:40;s:21:"buttons/style-rtl.css";i:41;s:25:"buttons/style-rtl.min.css";i:42;s:17:"buttons/style.css";i:43;s:21:"buttons/style.min.css";i:44;s:22:"calendar/style-rtl.css";i:45;s:26:"calendar/style-rtl.min.css";i:46;s:18:"calendar/style.css";i:47;s:22:"calendar/style.min.css";i:48;s:25:"categories/editor-rtl.css";i:49;s:29:"categories/editor-rtl.min.css";i:50;s:21:"categories/editor.css";i:51;s:25:"categories/editor.min.css";i:52;s:24:"categories/style-rtl.css";i:53;s:28:"categories/style-rtl.min.css";i:54;s:20:"categories/style.css";i:55;s:24:"categories/style.min.css";i:56;s:19:"code/editor-rtl.css";i:57;s:23:"code/editor-rtl.min.css";i:58;s:15:"code/editor.css";i:59;s:19:"code/editor.min.css";i:60;s:18:"code/style-rtl.css";i:61;s:22:"code/style-rtl.min.css";i:62;s:14:"code/style.css";i:63;s:18:"code/style.min.css";i:64;s:18:"code/theme-rtl.css";i:65;s:22:"code/theme-rtl.min.css";i:66;s:14:"code/theme.css";i:67;s:18:"code/theme.min.css";i:68;s:22:"columns/editor-rtl.css";i:69;s:26:"columns/editor-rtl.min.css";i:70;s:18:"columns/editor.css";i:71;s:22:"columns/editor.min.css";i:72;s:21:"columns/style-rtl.css";i:73;s:25:"columns/style-rtl.min.css";i:74;s:17:"columns/style.css";i:75;s:21:"columns/style.min.css";i:76;s:33:"comment-author-name/style-rtl.css";i:77;s:37:"comment-author-name/style-rtl.min.css";i:78;s:29:"comment-author-name/style.css";i:79;s:33:"comment-author-name/style.min.css";i:80;s:29:"comment-content/style-rtl.css";i:81;s:33:"comment-content/style-rtl.min.css";i:82;s:25:"comment-content/style.css";i:83;s:29:"comment-content/style.min.css";i:84;s:26:"comment-date/style-rtl.css";i:85;s:30:"comment-date/style-rtl.min.css";i:86;s:22:"comment-date/style.css";i:87;s:26:"comment-date/style.min.css";i:88;s:31:"comment-edit-link/style-rtl.css";i:89;s:35:"comment-edit-link/style-rtl.min.css";i:90;s:27:"comment-edit-link/style.css";i:91;s:31:"comment-edit-link/style.min.css";i:92;s:32:"comment-reply-link/style-rtl.css";i:93;s:36:"comment-reply-link/style-rtl.min.css";i:94;s:28:"comment-reply-link/style.css";i:95;s:32:"comment-reply-link/style.min.css";i:96;s:30:"comment-template/style-rtl.css";i:97;s:34:"comment-template/style-rtl.min.css";i:98;s:26:"comment-template/style.css";i:99;s:30:"comment-template/style.min.css";i:100;s:42:"comments-pagination-numbers/editor-rtl.css";i:101;s:46:"comments-pagination-numbers/editor-rtl.min.css";i:102;s:38:"comments-pagination-numbers/editor.css";i:103;s:42:"comments-pagination-numbers/editor.min.css";i:104;s:34:"comments-pagination/editor-rtl.css";i:105;s:38:"comments-pagination/editor-rtl.min.css";i:106;s:30:"comments-pagination/editor.css";i:107;s:34:"comments-pagination/editor.min.css";i:108;s:33:"comments-pagination/style-rtl.css";i:109;s:37:"comments-pagination/style-rtl.min.css";i:110;s:29:"comments-pagination/style.css";i:111;s:33:"comments-pagination/style.min.css";i:112;s:29:"comments-title/editor-rtl.css";i:113;s:33:"comments-title/editor-rtl.min.css";i:114;s:25:"comments-title/editor.css";i:115;s:29:"comments-title/editor.min.css";i:116;s:23:"comments/editor-rtl.css";i:117;s:27:"comments/editor-rtl.min.css";i:118;s:19:"comments/editor.css";i:119;s:23:"comments/editor.min.css";i:120;s:22:"comments/style-rtl.css";i:121;s:26:"comments/style-rtl.min.css";i:122;s:18:"comments/style.css";i:123;s:22:"comments/style.min.css";i:124;s:20:"cover/editor-rtl.css";i:125;s:24:"cover/editor-rtl.min.css";i:126;s:16:"cover/editor.css";i:127;s:20:"cover/editor.min.css";i:128;s:19:"cover/style-rtl.css";i:129;s:23:"cover/style-rtl.min.css";i:130;s:15:"cover/style.css";i:131;s:19:"cover/style.min.css";i:132;s:22:"details/editor-rtl.css";i:133;s:26:"details/editor-rtl.min.css";i:134;s:18:"details/editor.css";i:135;s:22:"details/editor.min.css";i:136;s:21:"details/style-rtl.css";i:137;s:25:"details/style-rtl.min.css";i:138;s:17:"details/style.css";i:139;s:21:"details/style.min.css";i:140;s:20:"embed/editor-rtl.css";i:141;s:24:"embed/editor-rtl.min.css";i:142;s:16:"embed/editor.css";i:143;s:20:"embed/editor.min.css";i:144;s:19:"embed/style-rtl.css";i:145;s:23:"embed/style-rtl.min.css";i:146;s:15:"embed/style.css";i:147;s:19:"embed/style.min.css";i:148;s:19:"embed/theme-rtl.css";i:149;s:23:"embed/theme-rtl.min.css";i:150;s:15:"embed/theme.css";i:151;s:19:"embed/theme.min.css";i:152;s:19:"file/editor-rtl.css";i:153;s:23:"file/editor-rtl.min.css";i:154;s:15:"file/editor.css";i:155;s:19:"file/editor.min.css";i:156;s:18:"file/style-rtl.css";i:157;s:22:"file/style-rtl.min.css";i:158;s:14:"file/style.css";i:159;s:18:"file/style.min.css";i:160;s:23:"footnotes/style-rtl.css";i:161;s:27:"footnotes/style-rtl.min.css";i:162;s:19:"footnotes/style.css";i:163;s:23:"footnotes/style.min.css";i:164;s:23:"freeform/editor-rtl.css";i:165;s:27:"freeform/editor-rtl.min.css";i:166;s:19:"freeform/editor.css";i:167;s:23:"freeform/editor.min.css";i:168;s:22:"gallery/editor-rtl.css";i:169;s:26:"gallery/editor-rtl.min.css";i:170;s:18:"gallery/editor.css";i:171;s:22:"gallery/editor.min.css";i:172;s:21:"gallery/style-rtl.css";i:173;s:25:"gallery/style-rtl.min.css";i:174;s:17:"gallery/style.css";i:175;s:21:"gallery/style.min.css";i:176;s:21:"gallery/theme-rtl.css";i:177;s:25:"gallery/theme-rtl.min.css";i:178;s:17:"gallery/theme.css";i:179;s:21:"gallery/theme.min.css";i:180;s:20:"group/editor-rtl.css";i:181;s:24:"group/editor-rtl.min.css";i:182;s:16:"group/editor.css";i:183;s:20:"group/editor.min.css";i:184;s:19:"group/style-rtl.css";i:185;s:23:"group/style-rtl.min.css";i:186;s:15:"group/style.css";i:187;s:19:"group/style.min.css";i:188;s:19:"group/theme-rtl.css";i:189;s:23:"group/theme-rtl.min.css";i:190;s:15:"group/theme.css";i:191;s:19:"group/theme.min.css";i:192;s:21:"heading/style-rtl.css";i:193;s:25:"heading/style-rtl.min.css";i:194;s:17:"heading/style.css";i:195;s:21:"heading/style.min.css";i:196;s:19:"html/editor-rtl.css";i:197;s:23:"html/editor-rtl.min.css";i:198;s:15:"html/editor.css";i:199;s:19:"html/editor.min.css";i:200;s:20:"image/editor-rtl.css";i:201;s:24:"image/editor-rtl.min.css";i:202;s:16:"image/editor.css";i:203;s:20:"image/editor.min.css";i:204;s:19:"image/style-rtl.css";i:205;s:23:"image/style-rtl.min.css";i:206;s:15:"image/style.css";i:207;s:19:"image/style.min.css";i:208;s:19:"image/theme-rtl.css";i:209;s:23:"image/theme-rtl.min.css";i:210;s:15:"image/theme.css";i:211;s:19:"image/theme.min.css";i:212;s:29:"latest-comments/style-rtl.css";i:213;s:33:"latest-comments/style-rtl.min.css";i:214;s:25:"latest-comments/style.css";i:215;s:29:"latest-comments/style.min.css";i:216;s:27:"latest-posts/editor-rtl.css";i:217;s:31:"latest-posts/editor-rtl.min.css";i:218;s:23:"latest-posts/editor.css";i:219;s:27:"latest-posts/editor.min.css";i:220;s:26:"latest-posts/style-rtl.css";i:221;s:30:"latest-posts/style-rtl.min.css";i:222;s:22:"latest-posts/style.css";i:223;s:26:"latest-posts/style.min.css";i:224;s:18:"list/style-rtl.css";i:225;s:22:"list/style-rtl.min.css";i:226;s:14:"list/style.css";i:227;s:18:"list/style.min.css";i:228;s:22:"loginout/style-rtl.css";i:229;s:26:"loginout/style-rtl.min.css";i:230;s:18:"loginout/style.css";i:231;s:22:"loginout/style.min.css";i:232;s:25:"media-text/editor-rtl.css";i:233;s:29:"media-text/editor-rtl.min.css";i:234;s:21:"media-text/editor.css";i:235;s:25:"media-text/editor.min.css";i:236;s:24:"media-text/style-rtl.css";i:237;s:28:"media-text/style-rtl.min.css";i:238;s:20:"media-text/style.css";i:239;s:24:"media-text/style.min.css";i:240;s:19:"more/editor-rtl.css";i:241;s:23:"more/editor-rtl.min.css";i:242;s:15:"more/editor.css";i:243;s:19:"more/editor.min.css";i:244;s:30:"navigation-link/editor-rtl.css";i:245;s:34:"navigation-link/editor-rtl.min.css";i:246;s:26:"navigation-link/editor.css";i:247;s:30:"navigation-link/editor.min.css";i:248;s:29:"navigation-link/style-rtl.css";i:249;s:33:"navigation-link/style-rtl.min.css";i:250;s:25:"navigation-link/style.css";i:251;s:29:"navigation-link/style.min.css";i:252;s:33:"navigation-submenu/editor-rtl.css";i:253;s:37:"navigation-submenu/editor-rtl.min.css";i:254;s:29:"navigation-submenu/editor.css";i:255;s:33:"navigation-submenu/editor.min.css";i:256;s:25:"navigation/editor-rtl.css";i:257;s:29:"navigation/editor-rtl.min.css";i:258;s:21:"navigation/editor.css";i:259;s:25:"navigation/editor.min.css";i:260;s:24:"navigation/style-rtl.css";i:261;s:28:"navigation/style-rtl.min.css";i:262;s:20:"navigation/style.css";i:263;s:24:"navigation/style.min.css";i:264;s:23:"nextpage/editor-rtl.css";i:265;s:27:"nextpage/editor-rtl.min.css";i:266;s:19:"nextpage/editor.css";i:267;s:23:"nextpage/editor.min.css";i:268;s:24:"page-list/editor-rtl.css";i:269;s:28:"page-list/editor-rtl.min.css";i:270;s:20:"page-list/editor.css";i:271;s:24:"page-list/editor.min.css";i:272;s:23:"page-list/style-rtl.css";i:273;s:27:"page-list/style-rtl.min.css";i:274;s:19:"page-list/style.css";i:275;s:23:"page-list/style.min.css";i:276;s:24:"paragraph/editor-rtl.css";i:277;s:28:"paragraph/editor-rtl.min.css";i:278;s:20:"paragraph/editor.css";i:279;s:24:"paragraph/editor.min.css";i:280;s:23:"paragraph/style-rtl.css";i:281;s:27:"paragraph/style-rtl.min.css";i:282;s:19:"paragraph/style.css";i:283;s:23:"paragraph/style.min.css";i:284;s:35:"post-author-biography/style-rtl.css";i:285;s:39:"post-author-biography/style-rtl.min.css";i:286;s:31:"post-author-biography/style.css";i:287;s:35:"post-author-biography/style.min.css";i:288;s:30:"post-author-name/style-rtl.css";i:289;s:34:"post-author-name/style-rtl.min.css";i:290;s:26:"post-author-name/style.css";i:291;s:30:"post-author-name/style.min.css";i:292;s:26:"post-author/editor-rtl.css";i:293;s:30:"post-author/editor-rtl.min.css";i:294;s:22:"post-author/editor.css";i:295;s:26:"post-author/editor.min.css";i:296;s:25:"post-author/style-rtl.css";i:297;s:29:"post-author/style-rtl.min.css";i:298;s:21:"post-author/style.css";i:299;s:25:"post-author/style.min.css";i:300;s:33:"post-comments-form/editor-rtl.css";i:301;s:37:"post-comments-form/editor-rtl.min.css";i:302;s:29:"post-comments-form/editor.css";i:303;s:33:"post-comments-form/editor.min.css";i:304;s:32:"post-comments-form/style-rtl.css";i:305;s:36:"post-comments-form/style-rtl.min.css";i:306;s:28:"post-comments-form/style.css";i:307;s:32:"post-comments-form/style.min.css";i:308;s:26:"post-content/style-rtl.css";i:309;s:30:"post-content/style-rtl.min.css";i:310;s:22:"post-content/style.css";i:311;s:26:"post-content/style.min.css";i:312;s:23:"post-date/style-rtl.css";i:313;s:27:"post-date/style-rtl.min.css";i:314;s:19:"post-date/style.css";i:315;s:23:"post-date/style.min.css";i:316;s:27:"post-excerpt/editor-rtl.css";i:317;s:31:"post-excerpt/editor-rtl.min.css";i:318;s:23:"post-excerpt/editor.css";i:319;s:27:"post-excerpt/editor.min.css";i:320;s:26:"post-excerpt/style-rtl.css";i:321;s:30:"post-excerpt/style-rtl.min.css";i:322;s:22:"post-excerpt/style.css";i:323;s:26:"post-excerpt/style.min.css";i:324;s:34:"post-featured-image/editor-rtl.css";i:325;s:38:"post-featured-image/editor-rtl.min.css";i:326;s:30:"post-featured-image/editor.css";i:327;s:34:"post-featured-image/editor.min.css";i:328;s:33:"post-featured-image/style-rtl.css";i:329;s:37:"post-featured-image/style-rtl.min.css";i:330;s:29:"post-featured-image/style.css";i:331;s:33:"post-featured-image/style.min.css";i:332;s:34:"post-navigation-link/style-rtl.css";i:333;s:38:"post-navigation-link/style-rtl.min.css";i:334;s:30:"post-navigation-link/style.css";i:335;s:34:"post-navigation-link/style.min.css";i:336;s:27:"post-template/style-rtl.css";i:337;s:31:"post-template/style-rtl.min.css";i:338;s:23:"post-template/style.css";i:339;s:27:"post-template/style.min.css";i:340;s:24:"post-terms/style-rtl.css";i:341;s:28:"post-terms/style-rtl.min.css";i:342;s:20:"post-terms/style.css";i:343;s:24:"post-terms/style.min.css";i:344;s:24:"post-title/style-rtl.css";i:345;s:28:"post-title/style-rtl.min.css";i:346;s:20:"post-title/style.css";i:347;s:24:"post-title/style.min.css";i:348;s:26:"preformatted/style-rtl.css";i:349;s:30:"preformatted/style-rtl.min.css";i:350;s:22:"preformatted/style.css";i:351;s:26:"preformatted/style.min.css";i:352;s:24:"pullquote/editor-rtl.css";i:353;s:28:"pullquote/editor-rtl.min.css";i:354;s:20:"pullquote/editor.css";i:355;s:24:"pullquote/editor.min.css";i:356;s:23:"pullquote/style-rtl.css";i:357;s:27:"pullquote/style-rtl.min.css";i:358;s:19:"pullquote/style.css";i:359;s:23:"pullquote/style.min.css";i:360;s:23:"pullquote/theme-rtl.css";i:361;s:27:"pullquote/theme-rtl.min.css";i:362;s:19:"pullquote/theme.css";i:363;s:23:"pullquote/theme.min.css";i:364;s:39:"query-pagination-numbers/editor-rtl.css";i:365;s:43:"query-pagination-numbers/editor-rtl.min.css";i:366;s:35:"query-pagination-numbers/editor.css";i:367;s:39:"query-pagination-numbers/editor.min.css";i:368;s:31:"query-pagination/editor-rtl.css";i:369;s:35:"query-pagination/editor-rtl.min.css";i:370;s:27:"query-pagination/editor.css";i:371;s:31:"query-pagination/editor.min.css";i:372;s:30:"query-pagination/style-rtl.css";i:373;s:34:"query-pagination/style-rtl.min.css";i:374;s:26:"query-pagination/style.css";i:375;s:30:"query-pagination/style.min.css";i:376;s:25:"query-title/style-rtl.css";i:377;s:29:"query-title/style-rtl.min.css";i:378;s:21:"query-title/style.css";i:379;s:25:"query-title/style.min.css";i:380;s:25:"query-total/style-rtl.css";i:381;s:29:"query-total/style-rtl.min.css";i:382;s:21:"query-total/style.css";i:383;s:25:"query-total/style.min.css";i:384;s:20:"query/editor-rtl.css";i:385;s:24:"query/editor-rtl.min.css";i:386;s:16:"query/editor.css";i:387;s:20:"query/editor.min.css";i:388;s:19:"quote/style-rtl.css";i:389;s:23:"quote/style-rtl.min.css";i:390;s:15:"quote/style.css";i:391;s:19:"quote/style.min.css";i:392;s:19:"quote/theme-rtl.css";i:393;s:23:"quote/theme-rtl.min.css";i:394;s:15:"quote/theme.css";i:395;s:19:"quote/theme.min.css";i:396;s:23:"read-more/style-rtl.css";i:397;s:27:"read-more/style-rtl.min.css";i:398;s:19:"read-more/style.css";i:399;s:23:"read-more/style.min.css";i:400;s:18:"rss/editor-rtl.css";i:401;s:22:"rss/editor-rtl.min.css";i:402;s:14:"rss/editor.css";i:403;s:18:"rss/editor.min.css";i:404;s:17:"rss/style-rtl.css";i:405;s:21:"rss/style-rtl.min.css";i:406;s:13:"rss/style.css";i:407;s:17:"rss/style.min.css";i:408;s:21:"search/editor-rtl.css";i:409;s:25:"search/editor-rtl.min.css";i:410;s:17:"search/editor.css";i:411;s:21:"search/editor.min.css";i:412;s:20:"search/style-rtl.css";i:413;s:24:"search/style-rtl.min.css";i:414;s:16:"search/style.css";i:415;s:20:"search/style.min.css";i:416;s:20:"search/theme-rtl.css";i:417;s:24:"search/theme-rtl.min.css";i:418;s:16:"search/theme.css";i:419;s:20:"search/theme.min.css";i:420;s:24:"separator/editor-rtl.css";i:421;s:28:"separator/editor-rtl.min.css";i:422;s:20:"separator/editor.css";i:423;s:24:"separator/editor.min.css";i:424;s:23:"separator/style-rtl.css";i:425;s:27:"separator/style-rtl.min.css";i:426;s:19:"separator/style.css";i:427;s:23:"separator/style.min.css";i:428;s:23:"separator/theme-rtl.css";i:429;s:27:"separator/theme-rtl.min.css";i:430;s:19:"separator/theme.css";i:431;s:23:"separator/theme.min.css";i:432;s:24:"shortcode/editor-rtl.css";i:433;s:28:"shortcode/editor-rtl.min.css";i:434;s:20:"shortcode/editor.css";i:435;s:24:"shortcode/editor.min.css";i:436;s:24:"site-logo/editor-rtl.css";i:437;s:28:"site-logo/editor-rtl.min.css";i:438;s:20:"site-logo/editor.css";i:439;s:24:"site-logo/editor.min.css";i:440;s:23:"site-logo/style-rtl.css";i:441;s:27:"site-logo/style-rtl.min.css";i:442;s:19:"site-logo/style.css";i:443;s:23:"site-logo/style.min.css";i:444;s:27:"site-tagline/editor-rtl.css";i:445;s:31:"site-tagline/editor-rtl.min.css";i:446;s:23:"site-tagline/editor.css";i:447;s:27:"site-tagline/editor.min.css";i:448;s:26:"site-tagline/style-rtl.css";i:449;s:30:"site-tagline/style-rtl.min.css";i:450;s:22:"site-tagline/style.css";i:451;s:26:"site-tagline/style.min.css";i:452;s:25:"site-title/editor-rtl.css";i:453;s:29:"site-title/editor-rtl.min.css";i:454;s:21:"site-title/editor.css";i:455;s:25:"site-title/editor.min.css";i:456;s:24:"site-title/style-rtl.css";i:457;s:28:"site-title/style-rtl.min.css";i:458;s:20:"site-title/style.css";i:459;s:24:"site-title/style.min.css";i:460;s:26:"social-link/editor-rtl.css";i:461;s:30:"social-link/editor-rtl.min.css";i:462;s:22:"social-link/editor.css";i:463;s:26:"social-link/editor.min.css";i:464;s:27:"social-links/editor-rtl.css";i:465;s:31:"social-links/editor-rtl.min.css";i:466;s:23:"social-links/editor.css";i:467;s:27:"social-links/editor.min.css";i:468;s:26:"social-links/style-rtl.css";i:469;s:30:"social-links/style-rtl.min.css";i:470;s:22:"social-links/style.css";i:471;s:26:"social-links/style.min.css";i:472;s:21:"spacer/editor-rtl.css";i:473;s:25:"spacer/editor-rtl.min.css";i:474;s:17:"spacer/editor.css";i:475;s:21:"spacer/editor.min.css";i:476;s:20:"spacer/style-rtl.css";i:477;s:24:"spacer/style-rtl.min.css";i:478;s:16:"spacer/style.css";i:479;s:20:"spacer/style.min.css";i:480;s:20:"table/editor-rtl.css";i:481;s:24:"table/editor-rtl.min.css";i:482;s:16:"table/editor.css";i:483;s:20:"table/editor.min.css";i:484;s:19:"table/style-rtl.css";i:485;s:23:"table/style-rtl.min.css";i:486;s:15:"table/style.css";i:487;s:19:"table/style.min.css";i:488;s:19:"table/theme-rtl.css";i:489;s:23:"table/theme-rtl.min.css";i:490;s:15:"table/theme.css";i:491;s:19:"table/theme.min.css";i:492;s:24:"tag-cloud/editor-rtl.css";i:493;s:28:"tag-cloud/editor-rtl.min.css";i:494;s:20:"tag-cloud/editor.css";i:495;s:24:"tag-cloud/editor.min.css";i:496;s:23:"tag-cloud/style-rtl.css";i:497;s:27:"tag-cloud/style-rtl.min.css";i:498;s:19:"tag-cloud/style.css";i:499;s:23:"tag-cloud/style.min.css";i:500;s:28:"template-part/editor-rtl.css";i:501;s:32:"template-part/editor-rtl.min.css";i:502;s:24:"template-part/editor.css";i:503;s:28:"template-part/editor.min.css";i:504;s:27:"template-part/theme-rtl.css";i:505;s:31:"template-part/theme-rtl.min.css";i:506;s:23:"template-part/theme.css";i:507;s:27:"template-part/theme.min.css";i:508;s:30:"term-description/style-rtl.css";i:509;s:34:"term-description/style-rtl.min.css";i:510;s:26:"term-description/style.css";i:511;s:30:"term-description/style.min.css";i:512;s:27:"text-columns/editor-rtl.css";i:513;s:31:"text-columns/editor-rtl.min.css";i:514;s:23:"text-columns/editor.css";i:515;s:27:"text-columns/editor.min.css";i:516;s:26:"text-columns/style-rtl.css";i:517;s:30:"text-columns/style-rtl.min.css";i:518;s:22:"text-columns/style.css";i:519;s:26:"text-columns/style.min.css";i:520;s:19:"verse/style-rtl.css";i:521;s:23:"verse/style-rtl.min.css";i:522;s:15:"verse/style.css";i:523;s:19:"verse/style.min.css";i:524;s:20:"video/editor-rtl.css";i:525;s:24:"video/editor-rtl.min.css";i:526;s:16:"video/editor.css";i:527;s:20:"video/editor.min.css";i:528;s:19:"video/style-rtl.css";i:529;s:23:"video/style-rtl.min.css";i:530;s:15:"video/style.css";i:531;s:19:"video/style.min.css";i:532;s:19:"video/theme-rtl.css";i:533;s:23:"video/theme-rtl.min.css";i:534;s:15:"video/theme.css";i:535;s:19:"video/theme.min.css";}}','on');
INSERT INTO `wp_options` VALUES (125,'auth_key','f69Sqr5=*we:7Z_+kScDwHW[BQ%$<D[WYC0:a`JdqqPcTA$F)8Azw2%-B&&NJW81','off');
INSERT INTO `wp_options` VALUES (126,'auth_salt',';~UQd7BhZSJG;6~lKe{F8BS1YFTVDsZja|<i-O+X[I*1ZNtNLJpL1+nwc<pp0D0z','off');
INSERT INTO `wp_options` VALUES (127,'logged_in_key','(GoD/;9&pt7<mC`;BCIM#jB*8L]V)vOjc5r1U`hH:~QK6J6=V>oW3<Q2yM-,]AV3','off');
INSERT INTO `wp_options` VALUES (128,'logged_in_salt','ma`~#0K230oYb_BI%f@e*(0hyxJ`YmH)E|ZWWcFnI*rb@{^9N|En+MRURi)ZTtj.','off');
INSERT INTO `wp_options` VALUES (129,'theme_mods_twentytwentyfive','a:1:{s:18:"custom_css_post_id";i:-1;}','off');
INSERT INTO `wp_options` VALUES (130,'_transient_wp_styles_for_blocks','a:2:{s:4:"hash";s:32:"8c7d46a72d7d4591fc1dd9485bedb304";s:6:"blocks";a:5:{s:11:"core/button";s:0:"";s:14:"core/site-logo";s:0:"";s:18:"core/post-template";s:120:":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}";s:12:"core/columns";s:102:":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}";s:14:"core/pullquote";s:69:":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}";}}','on');
INSERT INTO `wp_options` VALUES (131,'nonce_key','c~~?sO@71PLUaR[~<CAF3/hC-[bz9IeL~H,[2dwhiXl,{BkWZUb7=CqyPfOoO3[<','off');
INSERT INTO `wp_options` VALUES (132,'nonce_salt','|xY945R?6PJkwqIwgdyzPhxjoMfP!)L/`g5gv45:s78fTjax}SS4qZAYjH:t=Qdb','off');
INSERT INTO `wp_options` VALUES (135,'current_theme','','auto');
INSERT INTO `wp_options` VALUES (136,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (139,'theme_mods_spark-yes','a:2:{s:18:"nav_menu_locations";a:4:{s:7:"primary";i:2;s:9:"secondary";i:3;s:11:"quick-links";i:3;s:13:"core-programs";i:4;}s:18:"custom_css_post_id";i:-1;}','auto');
INSERT INTO `wp_options` VALUES (160,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (163,'finished_updating_comment_type',1,'auto');
INSERT INTO `wp_options` VALUES (168,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (177,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (179,'wpcf7','a:2:{s:7:"version";s:3:"6.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1752029572;s:7:"version";s:3:"6.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}','auto');
INSERT INTO `wp_options` VALUES (180,'cfdb7_view_install_date','2025-07-09 2:52:52','on');
INSERT INTO `wp_options` VALUES (181,'yoast_migrations_free','a:1:{s:7:"version";s:4:"25.4";}','auto');
INSERT INTO `wp_options` VALUES (182,'wpseo','a:114:{s:8:"tracking";b:0;s:16:"toggled_tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:26:"permalink_settings_changed";s:29:"indexables_indexing_completed";b:0;s:13:"index_now_key";s:0:"";s:7:"version";s:4:"25.4";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:19:"enable_ai_generator";b:1;s:22:"ai_enabled_pre_default";b:0;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1752029573;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:12:"/%postname%/";s:8:"home_url";s:21:"http://localhost:8887";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:0:{}s:29:"enable_enhanced_slack_sharing";b:1;s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:0:{}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:19:"importing_completed";a:0:{}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:18:"first_time_install";b:1;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1752029574;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:20:"deny_adsbot_crawling";b:0;s:19:"deny_ccbot_crawling";b:0;s:29:"deny_google_extended_crawling";b:0;s:20:"deny_gptbot_crawling";b:0;s:27:"redirect_search_pretty_urls";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";s:28:"last_known_public_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:28:"last_known_public_taxonomies";a:3:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:11:"post_format";}s:23:"last_known_no_unindexed";a:0:{}s:14:"new_post_types";a:0:{}s:14:"new_taxonomies";a:0:{}s:34:"show_new_content_type_notification";b:0;s:44:"site_kit_configuration_permanently_dismissed";b:0;s:18:"site_kit_connected";b:0;s:37:"site_kit_tracking_setup_widget_loaded";s:2:"no";s:41:"site_kit_tracking_first_interaction_stage";s:0:"";s:40:"site_kit_tracking_last_interaction_stage";s:0:"";s:52:"site_kit_tracking_setup_widget_temporarily_dismissed";s:2:"no";s:52:"site_kit_tracking_setup_widget_permanently_dismissed";s:2:"no";s:31:"google_site_kit_feature_enabled";b:0;s:15:"enable_llms_txt";b:0;}','auto');
INSERT INTO `wp_options` VALUES (183,'wpseo_titles','a:129:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:2:"»";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:22:"company_alternate_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";b:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:24:"publishing_principles_id";i:0;s:25:"ownership_funding_info_id";i:0;s:29:"actionable_feedback_policy_id";i:0;s:21:"corrections_policy_id";i:0;s:16:"ethics_policy_id";i:0;s:19:"diversity_policy_id";i:0;s:28:"diversity_staffing_report_id";i:0;s:15:"org-description";s:0:"";s:9:"org-email";s:0:"";s:9:"org-phone";s:0:"";s:14:"org-legal-name";s:0:"";s:17:"org-founding-date";s:0:"";s:20:"org-number-employees";s:0:"";s:10:"org-vat-id";s:0:"";s:10:"org-tax-id";s:0:"";s:7:"org-iso";s:0:"";s:8:"org-duns";s:0:"";s:11:"org-leicode";s:0:"";s:9:"org-naics";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:23:"%%term_title%% Archives";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:26:"taxonomy-category-ptparent";i:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:23:"%%term_title%% Archives";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:26:"taxonomy-post_tag-ptparent";i:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:23:"%%term_title%% Archives";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:29:"taxonomy-post_format-ptparent";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:17:"company_logo_meta";b:0;s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}','auto');
INSERT INTO `wp_options` VALUES (184,'wpseo_social','a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:0:{}s:12:"mastodon_url";s:0:"";}','auto');
INSERT INTO `wp_options` VALUES (185,'widget_akismet_widget','a:1:{s:12:"_multiwidget";i:1;}','auto');
INSERT INTO `wp_options` VALUES (187,'nav_menu_options','a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (250,'_transient_health-check-site-status-result','{"good":15,"recommended":4,"critical":1}','on');
INSERT INTO `wp_options` VALUES (312,'secret_key','yGS![7/>qSpL1Kkd.mz7^N+_+0<Q~mC#nZvixz!wm|G@$SQ]{o_G.orW:2y2,*h`','off');
INSERT INTO `wp_options` VALUES (369,'recovery_mode_email_last_sent',1752739425,'auto');
INSERT INTO `wp_options` VALUES (407,'_site_transient_ai1wm_last_check_for_updates',1752629505,'off');
INSERT INTO `wp_options` VALUES (413,'db_upgraded','','on');
INSERT INTO `wp_options` VALUES (414,'_site_transient_update_core','O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-6.8.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-6.8.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-6.8.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-6.8.2-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.8.2";s:7:"version";s:5:"6.8.2";s:11:"php_version";s:6:"7.2.24";s:13:"mysql_version";s:5:"5.5.5";s:11:"new_bundled";s:3:"6.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1754646994;s:15:"version_checked";s:5:"6.8.2";s:12:"translations";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (416,'auto_core_update_notified','a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"admin@localhost.com";s:7:"version";s:5:"6.8.2";s:9:"timestamp";i:1752630659;}','off');
INSERT INTO `wp_options` VALUES (417,'can_compress_scripts',0,'on');
INSERT INTO `wp_options` VALUES (422,'wp-phpmyadmin-extension','a:23:{s:16:"randomCookieName";s:20:"pma_OKCogYurcJ4twqGB";s:17:"randomCookieValue";s:20:"pma_6zmZftkbJjoBHlgP";s:18:"RandomFolderSuffix";s:24:"_9OJj3B1oILiD4YlyU8weTZc";s:20:"manual_pma_login_url";s:0:"";s:10:"require_ip";b:1;s:16:"hide_phma_errors";b:0;s:13:"strip_slashes";b:1;s:9:"use_https";b:0;s:12:"is_localhost";b:1;s:15:"has_pro_version";i:0;s:9:"show_opts";b:1;s:19:"show_rating_message";b:1;s:20:"show_donation_footer";b:1;s:19:"show_donation_popup";b:1;s:10:"menu_pages";a:1:{s:5:"first";a:7:{s:5:"title";s:13:"WP-phpMyAdmin";s:15:"default_managed";s:7:"network";s:13:"required_role";s:15:"install_plugins";s:5:"level";s:8:"mainmenu";s:4:"icon";s:91:"http://localhost:8887/wp-content/plugins/wp-phpmyadmin-extension/assets/media/menu_icon.png";s:10:"page_title";s:26:"WP phpMyAdmin Options page";s:4:"tabs";a:0:{}}}s:4:"name";s:13:"WP phpMyAdmin";s:5:"title";s:109:"<a href="https://puvox.software/software/wordpress-plugins/?plugin=wp-phpmyadmin-extension">WP phpMyAdmin</a>";s:7:"version";s:8:"5.2.2.01";s:18:"first_install_date";i:1752631260;s:16:"last_update_time";i:1752631260;s:12:"last_updates";a:0:{}s:12:"last_version";s:8:"5.2.2.01";s:15:"ssl_error_shown";i:1;}','off');
INSERT INTO `wp_options` VALUES (423,'wp-phpmyadmin-extension_transl_lastvers','5.2.2.01','off');
INSERT INTO `wp_options` VALUES (484,'acf_pro_license','YToyOntzOjM6ImtleSI7czo4OiIqKioqKioqKiI7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg4NyI7fQ==','auto');
INSERT INTO `wp_options` VALUES (485,'acf_pro_license_status','a:2:{s:6:"status";s:6:"active";s:10:"next_check";i:15791823225;}','auto');
INSERT INTO `wp_options` VALUES (486,'acf_first_activated_version','6.3.12','on');
INSERT INTO `wp_options` VALUES (487,'acf_site_health','{"version":"6.3.12","plugin_type":"PRO","update_source":"ACF Direct","activated":true,"activated_url":"http:\\/\\/localhost:8887","license_type":"","license_status":"active","subscription_expires":"","wp_version":"6.8.2","mysql_version":"3.40.1","is_multisite":false,"active_theme":{"name":"Sparkyes","version":"1.0","theme_uri":"https:\\/\\/sparkyes.com\\/","stylesheet":false},"active_plugins":{"advanced-custom-fields-pro\\/acf.php":{"name":"Advanced Custom Fields PRO","version":"6.3.12","plugin_uri":"https:\\/\\/www.advancedcustomfields.com"},"akismet\\/akismet.php":{"name":"Akismet Anti-spam: Spam Protection","version":"5.3.7","plugin_uri":"https:\\/\\/akismet.com\\/"},"classic-editor\\/classic-editor.php":{"name":"Classic Editor","version":"1.6.7","plugin_uri":"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/"},"contact-form-7\\/wp-contact-form-7.php":{"name":"Contact Form 7","version":"6.1","plugin_uri":"https:\\/\\/contactform7.com\\/"},"contact-form-cfdb7\\/contact-form-cfdb-7.php":{"name":"Contact Form CFDB7","version":"1.3.2","plugin_uri":"https:\\/\\/ciphercoin.com\\/"},"copy-delete-posts\\/copy-delete-posts.php":{"name":"Copy & Delete Posts","version":"1.5.0","plugin_uri":"https:\\/\\/copy-delete-posts.com"},"wordpress-seo\\/wp-seo.php":{"name":"Yoast SEO","version":"25.4","plugin_uri":"https:\\/\\/yoa.st\\/1uj"}},"ui_field_groups":"1","php_field_groups":"0","json_field_groups":"0","rest_field_groups":"0","number_of_fields_by_type":{"text":1,"wysiwyg":1,"image":1},"number_of_third_party_fields_by_type":[],"post_types_enabled":true,"ui_post_types":"4","json_post_types":"0","ui_taxonomies":"3","json_taxonomies":"0","ui_options_pages_enabled":true,"ui_options_pages":"0","json_options_pages":"0","php_options_pages":"0","rest_api_format":"light","registered_acf_blocks":"0","blocks_per_api_version":[],"blocks_per_acf_block_version":[],"blocks_using_post_meta":"0","preload_blocks":true,"admin_ui_enabled":true,"field_type-modal_enabled":true,"field_settings_tabs_enabled":false,"shortcode_enabled":false,"registered_acf_forms":"0","json_save_paths":1,"json_load_paths":1,"event_first_activated_pro":1752742289,"event_first_created_field_group":1752743691,"last_updated":1754647005}','off');
INSERT INTO `wp_options` VALUES (489,'acf_version','6.3.12','auto');
INSERT INTO `wp_options` VALUES (919,'_site_transient_update_themes','O:8:"stdClass":5:{s:12:"last_checked";i:1754646996;s:7:"checked";a:1:{s:9:"spark-yes";s:3:"1.0";}s:8:"response";a:0:{}s:9:"no_update";a:0:{}s:12:"translations";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1000,'_site_transient_timeout_browser_7ddeda88d0c599cc494da0dece6554d5',1754877811,'off');
INSERT INTO `wp_options` VALUES (1001,'_site_transient_browser_7ddeda88d0c599cc494da0dece6554d5','a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:9:"138.0.0.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}','off');
INSERT INTO `wp_options` VALUES (1002,'_site_transient_timeout_php_check_4c859340bb9514bb6ad1b4f22204fd77',1754877812,'off');
INSERT INTO `wp_options` VALUES (1003,'_site_transient_php_check_4c859340bb9514bb6ad1b4f22204fd77','a:5:{s:19:"recommended_version";s:3:"8.3";s:15:"minimum_version";s:6:"7.2.24";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}','off');
INSERT INTO `wp_options` VALUES (1063,'_site_transient_timeout_browser_4bae80ccfdd945c393e4eecd0379e874',1754904527,'off');
INSERT INTO `wp_options` VALUES (1064,'_site_transient_browser_4bae80ccfdd945c393e4eecd0379e874','a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:9:"138.0.0.0";s:8:"platform";s:7:"Android";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:1;}','off');
INSERT INTO `wp_options` VALUES (1099,'analyst_cache','s:6:"a:0:{}";','auto');
INSERT INTO `wp_options` VALUES (1101,'_cdp_review','a:2:{s:9:"installed";i:1754299966;s:5:"users";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (1102,'_cdp_globals','a:1:{s:6:"others";a:14:{s:17:"cdp-content-pages";s:4:"true";s:17:"cdp-content-posts";s:4:"true";s:18:"cdp-content-custom";s:4:"true";s:17:"cdp-display-posts";s:4:"true";s:16:"cdp-display-edit";s:4:"true";s:17:"cdp-display-admin";s:4:"true";s:16:"cdp-display-bulk";s:4:"true";s:21:"cdp-display-gutenberg";s:4:"true";s:19:"cdp-references-post";s:5:"false";s:19:"cdp-references-edit";s:5:"false";s:18:"cdp-premium-import";s:5:"false";s:24:"cdp-premium-hide-tooltip";s:5:"false";s:26:"cdp-premium-replace-domain";s:5:"false";s:20:"cdp-menu-in-settings";s:5:"false";}}','auto');
INSERT INTO `wp_options` VALUES (1103,'_cdp_profiles','a:1:{s:7:"default";a:25:{s:5:"title";s:4:"true";s:4:"date";s:5:"false";s:6:"status";s:5:"false";s:4:"slug";s:4:"true";s:7:"excerpt";s:4:"true";s:7:"content";s:4:"true";s:7:"f_image";s:4:"true";s:8:"template";s:4:"true";s:6:"format";s:4:"true";s:6:"author";s:4:"true";s:8:"password";s:4:"true";s:11:"attachments";s:5:"false";s:8:"children";s:5:"false";s:8:"comments";s:5:"false";s:10:"menu_order";s:4:"true";s:8:"category";s:4:"true";s:8:"post_tag";s:4:"true";s:8:"taxonomy";s:4:"true";s:8:"nav_menu";s:4:"true";s:13:"link_category";s:4:"true";s:12:"all_metadata";s:5:"false";s:5:"names";a:5:{s:6:"prefix";s:0:"";s:6:"suffix";s:10:"#[Counter]";s:6:"format";s:1:"1";s:6:"custom";s:5:"m/d/Y";s:7:"display";s:7:"Default";}s:9:"usmplugin";s:5:"false";s:5:"yoast";s:5:"false";s:3:"woo";s:5:"false";}}','auto');
INSERT INTO `wp_options` VALUES (1104,'_cdp_default_setup',1,'auto');
INSERT INTO `wp_options` VALUES (1105,'_irb_h_bn_review','a:2:{s:5:"users";a:0:{}s:17:"copy-delete-posts";i:1754299966;}','auto');
INSERT INTO `wp_options` VALUES (1106,'_tifm_force_disable_feature_update',1,'auto');
INSERT INTO `wp_options` VALUES (1113,'_cdp_preselections','a:1:{i:1;s:7:"default";}','auto');
INSERT INTO `wp_options` VALUES (1118,'cdp_copy_logs_times','a:1:{i:0;a:6:{s:6:"amount";s:2:"30";s:4:"time";d:2.2100000381469727;s:6:"perOne";d:0.07366666793823243;s:4:"data";i:1754300002;s:6:"memory";i:50644960;s:4:"peak";i:52953088;}}','auto');
INSERT INTO `wp_options` VALUES (1128,'wp_calendar_block_has_published_posts',1,'auto');
INSERT INTO `wp_options` VALUES (1178,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (1217,'_site_transient_timeout_wp_theme_files_patterns-5eb2e8be76f18556ca4f2606b4232db0',1754648693,'off');
INSERT INTO `wp_options` VALUES (1218,'_site_transient_wp_theme_files_patterns-5eb2e8be76f18556ca4f2606b4232db0','a:2:{s:7:"version";s:3:"1.0";s:8:"patterns";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1223,'_site_transient_timeout_theme_roots',1754648795,'off');
INSERT INTO `wp_options` VALUES (1224,'_site_transient_theme_roots','a:1:{s:9:"spark-yes";s:7:"/themes";}','off');

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
	`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
	`meta_key` varchar(255) DEFAULT NULL,
	`meta_value` longtext,
	PRIMARY KEY (`meta_id`),
	KEY `meta_key` (`meta_key`(100)),
	KEY `post_id` (`post_id`)
);

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,10,'_form','[text* your_name placeholder "Name (Required)"]\n<div class="flex flex-wrap lg:flex-nowrap gap-[20px]">\n    <div class="lg:w-6/12">\n        [email* email placeholder "Email (Required)"]\n    </div>\n    <div class="lg:w-6/12">\n        [tel* tel placeholder "Contact Number (Required)"]\n    </div>\n</div>\n[textarea* message placeholder] Message [/textarea*]\n[submit class:red_btn "Submit"]');
INSERT INTO `wp_postmeta` VALUES (8,10,'_mail','a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:35:"[_site_title] <admin@localhost.com>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:17:"Reply-To: [email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:1;}');
INSERT INTO `wp_postmeta` VALUES (9,10,'_mail_2','a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:35:"[_site_title] <admin@localhost.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:1;}');
INSERT INTO `wp_postmeta` VALUES (10,10,'_messages','a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}');
INSERT INTO `wp_postmeta` VALUES (11,10,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (12,10,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (13,10,'_hash','20a6980ded3c8cd31a2d574277189a7716aab633a1c5d41b834c72620a0f9ef7');
INSERT INTO `wp_postmeta` VALUES (14,11,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (15,11,'_edit_lock','1752826143:1');
INSERT INTO `wp_postmeta` VALUES (16,11,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (17,11,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (18,11,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (19,12,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (20,12,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (21,12,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (22,12,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (23,12,'_edit_lock','1752029477:1');
INSERT INTO `wp_postmeta` VALUES (24,13,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (25,13,'_edit_lock','1752029476:1');
INSERT INTO `wp_postmeta` VALUES (26,13,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (27,13,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (28,13,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (29,20,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (30,20,'_wp_page_template','page-blogs.php');
INSERT INTO `wp_postmeta` VALUES (31,20,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (32,20,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (33,20,'_edit_lock','1754301512:1');
INSERT INTO `wp_postmeta` VALUES (34,19,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (35,19,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (36,19,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (37,19,'_edit_lock','1752029496:1');
INSERT INTO `wp_postmeta` VALUES (38,18,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (39,18,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (40,18,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (41,18,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (42,18,'_edit_lock','1752029497:1');
INSERT INTO `wp_postmeta` VALUES (43,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (44,24,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (45,24,'_menu_item_object_id',18);
INSERT INTO `wp_postmeta` VALUES (46,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (47,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (48,24,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (49,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (50,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (52,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (53,25,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (54,25,'_menu_item_object_id',19);
INSERT INTO `wp_postmeta` VALUES (55,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (56,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (57,25,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (58,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (59,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (61,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,26,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (63,26,'_menu_item_object_id',20);
INSERT INTO `wp_postmeta` VALUES (64,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,26,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (67,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_object_id',13);
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_object_id',12);
INSERT INTO `wp_postmeta` VALUES (82,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (90,29,'_menu_item_object_id',11);
INSERT INTO `wp_postmeta` VALUES (91,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (93,29,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (94,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (95,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,30,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (102,30,'_menu_item_object_id',18);
INSERT INTO `wp_postmeta` VALUES (103,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,30,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (106,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (110,31,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (111,31,'_menu_item_object_id',19);
INSERT INTO `wp_postmeta` VALUES (112,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (113,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,31,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (115,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (118,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,32,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (120,32,'_menu_item_object_id',20);
INSERT INTO `wp_postmeta` VALUES (121,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,32,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (124,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (128,33,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (129,33,'_menu_item_object_id',13);
INSERT INTO `wp_postmeta` VALUES (130,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (131,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (132,33,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (133,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (134,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (136,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (137,34,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (138,34,'_menu_item_object_id',12);
INSERT INTO `wp_postmeta` VALUES (139,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (140,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (141,34,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (142,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (143,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (144,34,'_menu_item_orphaned',1752134070);
INSERT INTO `wp_postmeta` VALUES (145,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (146,35,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (147,35,'_menu_item_object_id',11);
INSERT INTO `wp_postmeta` VALUES (148,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (149,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (150,35,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (151,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (152,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (154,36,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (155,36,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (156,36,'_menu_item_object_id',36);
INSERT INTO `wp_postmeta` VALUES (157,36,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (158,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (159,36,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (160,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (161,36,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (163,37,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (164,37,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (165,37,'_menu_item_object_id',37);
INSERT INTO `wp_postmeta` VALUES (166,37,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (167,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (168,37,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (169,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (170,37,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (172,38,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (173,38,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (174,38,'_menu_item_object_id',38);
INSERT INTO `wp_postmeta` VALUES (175,38,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (176,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (177,38,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (178,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (179,38,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (181,39,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (182,39,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (183,39,'_menu_item_object_id',39);
INSERT INTO `wp_postmeta` VALUES (184,39,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (185,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (186,39,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (187,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (188,39,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (190,40,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (191,40,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (192,40,'_menu_item_object_id',40);
INSERT INTO `wp_postmeta` VALUES (193,40,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (194,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (195,40,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (196,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (197,40,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (199,41,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (200,41,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (201,41,'_menu_item_object_id',41);
INSERT INTO `wp_postmeta` VALUES (202,41,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (203,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (204,41,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (205,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (206,41,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (208,42,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (209,42,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (210,42,'_menu_item_object_id',42);
INSERT INTO `wp_postmeta` VALUES (211,42,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (212,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (213,42,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (214,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (215,42,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (219,43,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (220,43,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (221,43,'_menu_item_object_id',43);
INSERT INTO `wp_postmeta` VALUES (222,43,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (223,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (224,43,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (225,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (226,43,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (227,43,'_menu_item_orphaned',1752562447);
INSERT INTO `wp_postmeta` VALUES (228,44,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (229,44,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (230,44,'_menu_item_object_id',44);
INSERT INTO `wp_postmeta` VALUES (231,44,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (232,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (233,44,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (234,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (235,44,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (236,44,'_menu_item_orphaned',1752562451);
INSERT INTO `wp_postmeta` VALUES (237,45,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (238,45,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (239,45,'_menu_item_object_id',45);
INSERT INTO `wp_postmeta` VALUES (240,45,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (241,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (242,45,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (243,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (244,45,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (245,45,'_menu_item_orphaned',1752562455);
INSERT INTO `wp_postmeta` VALUES (246,46,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (247,46,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (248,46,'_menu_item_object_id',46);
INSERT INTO `wp_postmeta` VALUES (249,46,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (250,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (251,46,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (252,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (253,46,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (254,46,'_menu_item_orphaned',1752562459);
INSERT INTO `wp_postmeta` VALUES (255,47,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (256,47,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (257,47,'_menu_item_object_id',47);
INSERT INTO `wp_postmeta` VALUES (258,47,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (259,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (260,47,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (261,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (262,47,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (263,47,'_menu_item_orphaned',1752562463);
INSERT INTO `wp_postmeta` VALUES (264,48,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (265,48,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (266,48,'_menu_item_object_id',48);
INSERT INTO `wp_postmeta` VALUES (267,48,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (268,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (269,48,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (270,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (271,48,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (272,48,'_menu_item_orphaned',1752562467);
INSERT INTO `wp_postmeta` VALUES (273,49,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (274,49,'_menu_item_menu_item_parent',0);
INSERT INTO `wp_postmeta` VALUES (275,49,'_menu_item_object_id',49);
INSERT INTO `wp_postmeta` VALUES (276,49,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (277,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (278,49,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (279,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (280,49,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (281,49,'_menu_item_orphaned',1752562473);
INSERT INTO `wp_postmeta` VALUES (282,50,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (283,50,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (284,50,'_menu_item_object_id',50);
INSERT INTO `wp_postmeta` VALUES (285,50,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (286,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (287,50,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (288,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (289,50,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (291,51,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (292,51,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (293,51,'_menu_item_object_id',51);
INSERT INTO `wp_postmeta` VALUES (294,51,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (295,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (296,51,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (297,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (298,51,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (300,52,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (301,52,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (302,52,'_menu_item_object_id',52);
INSERT INTO `wp_postmeta` VALUES (303,52,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (304,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (305,52,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (306,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (307,52,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (309,53,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (310,53,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (311,53,'_menu_item_object_id',53);
INSERT INTO `wp_postmeta` VALUES (312,53,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (313,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (314,53,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (315,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (316,53,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (318,54,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (319,54,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (320,54,'_menu_item_object_id',54);
INSERT INTO `wp_postmeta` VALUES (321,54,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (322,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (323,54,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (324,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (325,54,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (327,55,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (328,55,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (329,55,'_menu_item_object_id',55);
INSERT INTO `wp_postmeta` VALUES (330,55,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (331,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (332,55,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (333,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (334,55,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (336,56,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (337,56,'_menu_item_menu_item_parent',28);
INSERT INTO `wp_postmeta` VALUES (338,56,'_menu_item_object_id',56);
INSERT INTO `wp_postmeta` VALUES (339,56,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (340,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (341,56,'_menu_item_classes','a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES (342,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (343,56,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (345,29,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (346,28,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (347,27,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (348,26,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (349,25,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (350,24,'_wp_old_date','2025-07-09');
INSERT INTO `wp_postmeta` VALUES (351,58,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (352,58,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (353,58,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (354,58,'_yoast_wpseo_estimated-reading-time-minutes',0);
INSERT INTO `wp_postmeta` VALUES (355,58,'_edit_lock','1752742055:1');
INSERT INTO `wp_postmeta` VALUES (358,61,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (359,61,'_edit_lock','1754301512:1');
INSERT INTO `wp_postmeta` VALUES (360,64,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (361,64,'_edit_lock','1752825540:1');
INSERT INTO `wp_postmeta` VALUES (362,64,'_wp_page_template','page-terms-and-condition.php');
INSERT INTO `wp_postmeta` VALUES (363,64,'_yoast_wpseo_content_score',60);
INSERT INTO `wp_postmeta` VALUES (364,64,'_yoast_wpseo_estimated-reading-time-minutes',4);
INSERT INTO `wp_postmeta` VALUES (365,64,'banner_header','Lorem ipsum dolor sit amet consectetur.');
INSERT INTO `wp_postmeta` VALUES (366,64,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (367,64,'banner_content','Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin');
INSERT INTO `wp_postmeta` VALUES (368,64,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (369,68,'banner_header','Lorem ipsum dolor sit amet consectetur.');
INSERT INTO `wp_postmeta` VALUES (370,68,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (371,68,'banner_content','Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin.');
INSERT INTO `wp_postmeta` VALUES (372,68,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (373,69,'_wp_attached_file','2025/07/Terms-and-Conditions.jpg');
INSERT INTO `wp_postmeta` VALUES (374,69,'_wp_attachment_metadata','a:6:{s:5:"width";i:1920;s:6:"height";i:600;s:4:"file";s:32:"2025/07/Terms-and-Conditions.jpg";s:8:"filesize";i:988217;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:31:"Terms-and-Conditions-300x94.jpg";s:5:"width";i:300;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8089;}s:5:"large";a:5:{s:4:"file";s:33:"Terms-and-Conditions-1024x320.jpg";s:5:"width";i:1024;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58290;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"Terms-and-Conditions-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6167;}s:12:"medium_large";a:5:{s:4:"file";s:32:"Terms-and-Conditions-768x240.jpg";s:5:"width";i:768;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36634;}s:9:"1536x1536";a:5:{s:4:"file";s:33:"Terms-and-Conditions-1536x480.jpg";s:5:"width";i:1536;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:112192;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (375,64,'banner_background_image',69);
INSERT INTO `wp_postmeta` VALUES (376,64,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (377,70,'banner_header','Lorem ipsum dolor sit amet consectetur.');
INSERT INTO `wp_postmeta` VALUES (378,70,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (379,70,'banner_content','Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin.');
INSERT INTO `wp_postmeta` VALUES (380,70,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (381,70,'banner_background_image',69);
INSERT INTO `wp_postmeta` VALUES (382,70,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (383,71,'banner_header','Lorem ipsum dolor sit amet consectetur.');
INSERT INTO `wp_postmeta` VALUES (384,71,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (385,71,'banner_content','Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin.\n\nLorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin.\n\n&nbsp;');
INSERT INTO `wp_postmeta` VALUES (386,71,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (387,71,'banner_background_image',69);
INSERT INTO `wp_postmeta` VALUES (388,71,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (389,72,'banner_header','Lorem ipsum dolor sit amet consectetur.');
INSERT INTO `wp_postmeta` VALUES (390,72,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (391,72,'banner_content','Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin');
INSERT INTO `wp_postmeta` VALUES (392,72,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (393,72,'banner_background_image',69);
INSERT INTO `wp_postmeta` VALUES (394,72,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (395,73,'_wp_attached_file','2025/07/banner1.jpg');
INSERT INTO `wp_postmeta` VALUES (396,73,'_wp_attachment_metadata','a:6:{s:5:"width";i:1920;s:6:"height";i:1000;s:4:"file";s:19:"2025/07/banner1.jpg";s:8:"filesize";i:276681;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:19:"banner1-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11865;}s:5:"large";a:5:{s:4:"file";s:20:"banner1-1024x533.jpg";s:5:"width";i:1024;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87344;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"banner1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6513;}s:12:"medium_large";a:5:{s:4:"file";s:19:"banner1-768x400.jpg";s:5:"width";i:768;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:54609;}s:9:"1536x1536";a:5:{s:4:"file";s:20:"banner1-1536x800.jpg";s:5:"width";i:1536;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:167022;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (397,11,'banner_header','Lorem ipsum dolor sit amet consectetur');
INSERT INTO `wp_postmeta` VALUES (398,11,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (399,11,'banner_content','Lorem ipsum dolor sit amet consectetur. Lectus sit vivamus cras nibh. Leo quisque diam at et. Eu nibh fringilla nibh iaculis fermentum. Neque donec nullam elementum lacinia morbi ultricies viverra nulla dictumst. Facilisis bibendum elementum potenti nisi. Lectus viverra lacus pulvinar scelerisque. Mauris at tempus pharetra porta eleifend amet.');
INSERT INTO `wp_postmeta` VALUES (400,11,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (401,11,'banner_background_image',73);
INSERT INTO `wp_postmeta` VALUES (402,11,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (403,74,'banner_header','Lorem ipsum dolor sit amet consectetur');
INSERT INTO `wp_postmeta` VALUES (404,74,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (405,74,'banner_content','Lorem ipsum dolor sit amet consectetur. Lectus sit vivamus cras nibh. Leo quisque diam at et. Eu nibh fringilla nibh iaculis fermentum. Neque donec nullam elementum lacinia morbi ultricies viverra nulla dictumst. Facilisis bibendum elementum potenti nisi. Lectus viverra lacus pulvinar scelerisque. Mauris at tempus pharetra porta eleifend amet.');
INSERT INTO `wp_postmeta` VALUES (406,74,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (407,74,'banner_background_image',73);
INSERT INTO `wp_postmeta` VALUES (408,74,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (410,1,'_edit_lock','1754299831:1');
INSERT INTO `wp_postmeta` VALUES (411,78,'_wp_attached_file','2025/07/Blogs-Banner.jpg');
INSERT INTO `wp_postmeta` VALUES (412,78,'_wp_attachment_metadata','a:6:{s:5:"width";i:1920;s:6:"height";i:600;s:4:"file";s:24:"2025/07/Blogs-Banner.jpg";s:8:"filesize";i:789947;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:23:"Blogs-Banner-300x94.jpg";s:5:"width";i:300;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6086;}s:5:"large";a:5:{s:4:"file";s:25:"Blogs-Banner-1024x320.jpg";s:5:"width";i:1024;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34366;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"Blogs-Banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5090;}s:12:"medium_large";a:5:{s:4:"file";s:24:"Blogs-Banner-768x240.jpg";s:5:"width";i:768;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22530;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"Blogs-Banner-1536x480.jpg";s:5:"width";i:1536;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61917;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (413,1,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (414,1,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (417,1,'_yoast_wpseo_primary_category','');
INSERT INTO `wp_postmeta` VALUES (418,1,'_yoast_wpseo_content_score',90);
INSERT INTO `wp_postmeta` VALUES (419,1,'_yoast_wpseo_estimated-reading-time-minutes',1);
INSERT INTO `wp_postmeta` VALUES (420,80,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (421,80,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (422,80,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (423,80,'_cdp_counter',2);
INSERT INTO `wp_postmeta` VALUES (424,80,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (425,81,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (426,81,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (427,81,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (428,81,'_cdp_counter',3);
INSERT INTO `wp_postmeta` VALUES (429,81,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (430,82,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (431,82,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (432,82,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (433,82,'_cdp_counter',4);
INSERT INTO `wp_postmeta` VALUES (434,82,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (435,83,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (436,83,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (437,83,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (438,83,'_cdp_counter',5);
INSERT INTO `wp_postmeta` VALUES (439,83,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (440,84,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (441,84,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (442,84,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (443,84,'_cdp_counter',6);
INSERT INTO `wp_postmeta` VALUES (444,84,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (445,85,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (446,85,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (447,85,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (448,85,'_cdp_counter',7);
INSERT INTO `wp_postmeta` VALUES (449,85,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (450,86,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (451,86,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (452,86,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (453,86,'_cdp_counter',8);
INSERT INTO `wp_postmeta` VALUES (454,86,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (455,87,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (456,87,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (457,87,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (458,87,'_cdp_counter',9);
INSERT INTO `wp_postmeta` VALUES (459,87,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (460,88,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (461,88,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (462,88,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (463,88,'_cdp_counter',10);
INSERT INTO `wp_postmeta` VALUES (464,88,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (465,89,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (466,89,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (467,89,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (468,89,'_cdp_counter',11);
INSERT INTO `wp_postmeta` VALUES (469,89,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (470,90,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (471,90,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (472,90,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (473,90,'_cdp_counter',12);
INSERT INTO `wp_postmeta` VALUES (474,90,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (475,91,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (476,91,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (477,91,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (478,91,'_cdp_counter',13);
INSERT INTO `wp_postmeta` VALUES (479,91,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (480,92,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (481,92,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (482,92,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (483,92,'_cdp_counter',14);
INSERT INTO `wp_postmeta` VALUES (484,92,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (485,93,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (486,93,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (487,93,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (488,93,'_cdp_counter',15);
INSERT INTO `wp_postmeta` VALUES (489,93,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (490,94,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (491,94,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (492,94,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (493,94,'_cdp_counter',16);
INSERT INTO `wp_postmeta` VALUES (494,94,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (495,95,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (496,95,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (497,95,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (498,95,'_cdp_counter',17);
INSERT INTO `wp_postmeta` VALUES (499,95,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (500,96,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (501,96,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (502,96,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (503,96,'_cdp_counter',18);
INSERT INTO `wp_postmeta` VALUES (504,96,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (505,97,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (506,97,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (507,97,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (508,97,'_cdp_counter',19);
INSERT INTO `wp_postmeta` VALUES (509,97,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (510,98,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (511,98,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (512,98,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (513,98,'_cdp_counter',20);
INSERT INTO `wp_postmeta` VALUES (514,98,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (515,99,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (516,99,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (517,99,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (518,99,'_cdp_counter',21);
INSERT INTO `wp_postmeta` VALUES (519,99,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (520,100,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (521,100,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (522,100,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (523,100,'_cdp_counter',22);
INSERT INTO `wp_postmeta` VALUES (524,100,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (525,101,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (526,101,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (527,101,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (528,101,'_cdp_counter',23);
INSERT INTO `wp_postmeta` VALUES (529,101,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (530,102,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (531,102,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (532,102,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (533,102,'_cdp_counter',24);
INSERT INTO `wp_postmeta` VALUES (534,102,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (535,103,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (536,103,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (537,103,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (538,103,'_cdp_counter',25);
INSERT INTO `wp_postmeta` VALUES (539,103,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (540,104,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (541,104,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (542,104,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (543,104,'_cdp_counter',26);
INSERT INTO `wp_postmeta` VALUES (544,104,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (545,105,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (546,105,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (547,105,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (548,105,'_cdp_counter',27);
INSERT INTO `wp_postmeta` VALUES (549,105,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (550,106,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (551,106,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (552,106,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (553,106,'_cdp_counter',28);
INSERT INTO `wp_postmeta` VALUES (554,106,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (555,107,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (556,107,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (557,107,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (558,107,'_cdp_counter',29);
INSERT INTO `wp_postmeta` VALUES (559,107,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (560,108,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (561,108,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (562,108,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (563,108,'_cdp_counter',30);
INSERT INTO `wp_postmeta` VALUES (564,108,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (565,109,'_cdp_origin',1);
INSERT INTO `wp_postmeta` VALUES (566,109,'_cdp_origin_site',-1);
INSERT INTO `wp_postmeta` VALUES (567,109,'_cdp_origin_title',' Lorem ipsum dolor #[Counter]');
INSERT INTO `wp_postmeta` VALUES (568,109,'_cdp_counter',31);
INSERT INTO `wp_postmeta` VALUES (569,109,'_thumbnail_id',78);
INSERT INTO `wp_postmeta` VALUES (572,109,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (573,109,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (576,108,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (577,108,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (580,107,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (581,107,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (584,106,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (585,106,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (588,105,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (589,105,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (592,104,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (593,104,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (596,103,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (597,103,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (600,102,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (601,102,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (604,101,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (605,101,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (608,100,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (609,100,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (612,99,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (613,99,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (616,98,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (617,98,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (620,97,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (621,97,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (624,96,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (625,96,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (628,95,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (629,95,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (632,94,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (633,94,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (636,93,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (637,93,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (640,92,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (641,92,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (644,91,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (645,91,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (648,90,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (649,90,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (652,89,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (653,89,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (656,88,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (657,88,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (660,87,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (661,87,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (664,86,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (665,86,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (668,85,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (669,85,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (672,84,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (673,84,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (676,83,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (677,83,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (680,82,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (681,82,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (684,81,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (685,81,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (688,80,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (689,80,'_edit_last',1);
INSERT INTO `wp_postmeta` VALUES (692,141,'_wp_attached_file','2025/08/Blogs-Banner.jpg');
INSERT INTO `wp_postmeta` VALUES (693,141,'_wp_attachment_metadata','a:6:{s:5:"width";i:1920;s:6:"height";i:600;s:4:"file";s:24:"2025/08/Blogs-Banner.jpg";s:8:"filesize";i:789947;s:5:"sizes";a:5:{s:6:"medium";a:5:{s:4:"file";s:23:"Blogs-Banner-300x94.jpg";s:5:"width";i:300;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6086;}s:5:"large";a:5:{s:4:"file";s:25:"Blogs-Banner-1024x320.jpg";s:5:"width";i:1024;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34366;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"Blogs-Banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5090;}s:12:"medium_large";a:5:{s:4:"file";s:24:"Blogs-Banner-768x240.jpg";s:5:"width";i:768;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22530;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"Blogs-Banner-1536x480.jpg";s:5:"width";i:1536;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61917;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (694,20,'banner_header','Lorem ipsum dolor sit amet consectetur');
INSERT INTO `wp_postmeta` VALUES (695,20,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (696,20,'banner_content','Lorem ipsum dolor sit amet consectetur. Lectus sit vivamus cras nibh. Leo quisque diam at et. Eu nibh fringilla nibh iaculis fermentum. Neque donec nullam elementum lacinia morbi ultricies viverra nulla dictumst. Facilisis bibendum elementum potenti nisi. Lectus viverra lacus pulvinar scelerisque. Mauris at tempus pharetra porta eleifend amet.');
INSERT INTO `wp_postmeta` VALUES (697,20,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (698,20,'banner_background_image',141);
INSERT INTO `wp_postmeta` VALUES (699,20,'_banner_background_image','field_6878c0282a415');
INSERT INTO `wp_postmeta` VALUES (700,142,'banner_header','Lorem ipsum dolor sit amet consectetur');
INSERT INTO `wp_postmeta` VALUES (701,142,'_banner_header','field_6878b9a9adbe3');
INSERT INTO `wp_postmeta` VALUES (702,142,'banner_content','Lorem ipsum dolor sit amet consectetur. Lectus sit vivamus cras nibh. Leo quisque diam at et. Eu nibh fringilla nibh iaculis fermentum. Neque donec nullam elementum lacinia morbi ultricies viverra nulla dictumst. Facilisis bibendum elementum potenti nisi. Lectus viverra lacus pulvinar scelerisque. Mauris at tempus pharetra porta eleifend amet.');
INSERT INTO `wp_postmeta` VALUES (703,142,'_banner_content','field_6878b9c3adbe4');
INSERT INTO `wp_postmeta` VALUES (704,142,'banner_background_image',141);
INSERT INTO `wp_postmeta` VALUES (705,142,'_banner_background_image','field_6878c0282a415');

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
	`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
	`post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content` longtext NOT NULL DEFAULT '',
	`post_title` text NOT NULL DEFAULT '',
	`post_excerpt` text NOT NULL DEFAULT '',
	`post_status` varchar(20) NOT NULL DEFAULT 'publish',
	`comment_status` varchar(20) NOT NULL DEFAULT 'open',
	`ping_status` varchar(20) NOT NULL DEFAULT 'open',
	`post_password` varchar(255) NOT NULL DEFAULT '',
	`post_name` varchar(200) NOT NULL DEFAULT '',
	`to_ping` text NOT NULL DEFAULT '',
	`pinged` text NOT NULL DEFAULT '',
	`post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content_filtered` longtext NOT NULL DEFAULT '',
	`post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
	`guid` varchar(255) NOT NULL DEFAULT '',
	`menu_order` int(11) NOT NULL DEFAULT '0',
	`post_type` varchar(20) NOT NULL DEFAULT 'post',
	`post_mime_type` varchar(100) NOT NULL DEFAULT '',
	`comment_count` bigint(20) NOT NULL DEFAULT '0',
	PRIMARY KEY (`ID`),
	KEY `post_author` (`post_author`),
	KEY `post_parent` (`post_parent`),
	KEY `type_status_date` (`post_type`(20), `post_status`(20), `post_date`, `ID`),
	KEY `post_name` (`post_name`(100))
);

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` VALUES (1,1,'2025-07-09 02:40:31','2025-07-09 02:40:31','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',0,'http://localhost:8887/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-07-09 02:40:31','2025-07-09 02:40:31','<!-- wp:paragraph -->\n<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8887/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-07-09 02:40:31','2025-07-09 02:40:31','',0,'http://localhost:8887/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-07-09 02:40:31','2025-07-09 02:40:31','<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost:8887.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-07-09 02:40:31','2025-07-09 02:40:31','',0,'http://localhost:8887/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2025-07-09 02:40:33','2025-07-09 02:40:33','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-07-09 02:40:33','2025-07-09 02:40:33','',0,'http://localhost:8887/?p=4',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2025-07-09 02:52:52','2025-07-09 02:52:52','[text* your_name placeholder "Name (Required)"]\n<div class="flex flex-wrap lg:flex-nowrap gap-[20px]">\n    <div class="lg:w-6/12">\n        [email* email placeholder "Email (Required)"]\n    </div>\n    <div class="lg:w-6/12">\n        [tel* tel placeholder "Contact Number (Required)"]\n    </div>\n</div>\n[textarea* message placeholder] Message [/textarea*]\n[submit class:red_btn "Submit"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <admin@localhost.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [email]\n\n1\n1\n\n[_site_title] "[your-subject]"\n[_site_title] <admin@localhost.com>\n[your-email]\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n1\n1\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','Contact Us (Home page)','','publish','closed','closed','','contact-form-1','','','2025-07-28 01:37:43','2025-07-28 01:37:43','',0,'http://localhost:8887/?post_type=wpcf7_contact_form&#038;p=10',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-07-09 02:53:28','2025-07-09 02:53:28','','About Us','','publish','closed','closed','','about-us','','','2025-07-18 08:08:58','2025-07-18 08:08:58','',0,'http://localhost:8887/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-07-09 02:53:31','2025-07-09 02:53:31','','Core Programs','','publish','closed','closed','','core-programs','','','2025-07-09 02:53:31','2025-07-09 02:53:31','',0,'http://localhost:8887/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-07-09 02:53:38','2025-07-09 02:53:38','','Our Coaches','','publish','closed','closed','','our-coaches','','','2025-07-09 02:53:38','2025-07-09 02:53:38','',0,'http://localhost:8887/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-07-09 02:53:28','2025-07-09 02:53:28','','About Us','','inherit','closed','closed','','11-revision-v1','','','2025-07-09 02:53:28','2025-07-09 02:53:28','',11,'http://localhost:8887/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-07-09 02:53:31','2025-07-09 02:53:31','','Core Programs','','inherit','closed','closed','','12-revision-v1','','','2025-07-09 02:53:31','2025-07-09 02:53:31','',12,'http://localhost:8887/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-07-09 02:53:38','2025-07-09 02:53:38','','Our Coaches','','inherit','closed','closed','','13-revision-v1','','','2025-07-09 02:53:38','2025-07-09 02:53:38','',13,'http://localhost:8887/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-07-09 02:53:58','2025-07-09 02:53:58','','Contact Us','','publish','closed','closed','','contact-us','','','2025-07-09 02:53:58','2025-07-09 02:53:58','',0,'http://localhost:8887/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-07-09 02:53:53','2025-07-09 02:53:53','','Podcasts','','publish','closed','closed','','podcasts','','','2025-07-09 02:53:53','2025-07-09 02:53:53','',0,'http://localhost:8887/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-07-09 02:53:50','2025-07-09 02:53:50','','Blogs','','publish','closed','closed','','blogs','','','2025-08-04 09:36:10','2025-08-04 09:36:10','',0,'http://localhost:8887/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-07-09 02:53:50','2025-07-09 02:53:50','','Blogs','','inherit','closed','closed','','20-revision-v1','','','2025-07-09 02:53:50','2025-07-09 02:53:50','',20,'http://localhost:8887/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-07-09 02:53:53','2025-07-09 02:53:53','','Podcasts','','inherit','closed','closed','','19-revision-v1','','','2025-07-09 02:53:53','2025-07-09 02:53:53','',19,'http://localhost:8887/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-07-09 02:53:58','2025-07-09 02:53:58','','Contact Us','','inherit','closed','closed','','18-revision-v1','','','2025-07-09 02:53:58','2025-07-09 02:53:58','',18,'http://localhost:8887/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-07-15 06:57:18','2025-07-09 02:57:05',' ','','','publish','closed','closed','',24,'','','2025-07-15 06:57:18','2025-07-15 06:57:18','',0,'http://localhost:8887/?p=24',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-07-15 06:57:17','2025-07-09 02:57:05',' ','','','publish','closed','closed','',25,'','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=25',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-07-15 06:57:17','2025-07-09 02:57:05',' ','','','publish','closed','closed','',26,'','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=26',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-07-15 06:57:17','2025-07-09 02:57:05',' ','','','publish','closed','closed','',27,'','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=27',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-07-15 06:57:17','2025-07-09 02:57:05',' ','','','publish','closed','closed','',28,'','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=28',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-07-15 06:57:17','2025-07-09 02:57:05',' ','','','publish','closed','closed','',29,'','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-07-10 07:56:55','2025-07-10 07:55:00',' ','','','publish','closed','closed','',30,'','','2025-07-10 07:56:55','2025-07-10 07:56:55','',0,'http://localhost:8887/?p=30',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2025-07-10 07:56:55','2025-07-10 07:54:59',' ','','','publish','closed','closed','',31,'','','2025-07-10 07:56:55','2025-07-10 07:56:55','',0,'http://localhost:8887/?p=31',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-07-10 07:56:55','2025-07-10 07:54:59',' ','','','publish','closed','closed','',32,'','','2025-07-10 07:56:55','2025-07-10 07:56:55','',0,'http://localhost:8887/?p=32',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-07-10 07:56:55','2025-07-10 07:54:59',' ','','','publish','closed','closed','',33,'','','2025-07-10 07:56:55','2025-07-10 07:56:55','',0,'http://localhost:8887/?p=33',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-07-10 07:54:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-07-10 07:54:30','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-07-10 07:56:55','2025-07-10 07:54:59',' ','','','publish','closed','closed','',35,'','','2025-07-10 07:56:55','2025-07-10 07:56:55','',0,'http://localhost:8887/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-07-10 08:04:47','2025-07-10 08:04:47','','Team Building Activities','','publish','closed','closed','','team-building-activities','','','2025-07-10 08:04:47','2025-07-10 08:04:47','',0,'http://localhost:8887/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-07-10 08:04:47','2025-07-10 08:04:47','','Organizational Development','','publish','closed','closed','','organizational-development','','','2025-07-10 08:04:47','2025-07-10 08:04:47','',0,'http://localhost:8887/?p=37',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-07-10 08:04:47','2025-07-10 08:04:47','','Micro-Credentials Certification','','publish','closed','closed','','micro-credentials-certification','','','2025-07-10 08:04:47','2025-07-10 08:04:47','',0,'http://localhost:8887/?p=38',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-07-10 08:04:47','2025-07-10 08:04:47','','Culture and Leadership Formation','','publish','closed','closed','','culture-and-leadership-formation','','','2025-07-10 08:04:47','2025-07-10 08:04:47','',0,'http://localhost:8887/?p=39',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-07-10 08:04:47','2025-07-10 08:04:47','','Personal Development Training','','publish','closed','closed','','personal-development-training','','','2025-07-10 08:04:48','2025-07-10 08:04:48','',0,'http://localhost:8887/?p=40',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-07-10 08:04:48','2025-07-10 08:04:48','','Youth Development','','publish','closed','closed','','youth-development','','','2025-07-10 08:04:48','2025-07-10 08:04:48','',0,'http://localhost:8887/?p=41',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-07-10 08:04:48','2025-07-10 08:04:48','','Continuing Professional Development','','publish','closed','closed','','continuing-professional-development','','','2025-07-10 08:04:48','2025-07-10 08:04:48','',0,'http://localhost:8887/?p=42',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-07-15 06:54:07','0000-00-00 00:00:00','','Team Development','','draft','closed','closed','','','','','2025-07-15 06:54:07','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-07-15 06:54:11','0000-00-00 00:00:00','','Organizational Development','','draft','closed','closed','','','','','2025-07-15 06:54:11','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-07-15 06:54:15','0000-00-00 00:00:00','','Micro-Credentials Certification','','draft','closed','closed','','','','','2025-07-15 06:54:15','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-07-15 06:54:19','0000-00-00 00:00:00','','Culture and Leadership Formation','','draft','closed','closed','','','','','2025-07-15 06:54:19','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-07-15 06:54:23','0000-00-00 00:00:00','','Personal and Professional Development Training','','draft','closed','closed','','','','','2025-07-15 06:54:23','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=47',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-07-15 06:54:27','0000-00-00 00:00:00','','Youth Development','','draft','closed','closed','','','','','2025-07-15 06:54:27','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2025-07-15 06:54:32','0000-00-00 00:00:00','','Continuing Professional Development','','draft','closed','closed','','','','','2025-07-15 06:54:32','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=49',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Team Development','','publish','closed','closed','','team-development','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=50',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Organizational Development','','publish','closed','closed','','organizational-development-2','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=51',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Micro-Credentials Certification','','publish','closed','closed','','micro-credentials-certification-2','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=52',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Culture and Leadership Formation','','publish','closed','closed','','culture-and-leadership-formation-2','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=53',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Personal and Professional Development Training','','publish','closed','closed','','personal-and-professional-development-training','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=54',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Youth Development','','publish','closed','closed','','youth-development-2','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=55',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-07-15 06:57:17','2025-07-15 06:57:17','','Continuing Professional Development','','publish','closed','closed','','continuing-professional-development-2','','','2025-07-15 06:57:17','2025-07-15 06:57:17','',0,'http://localhost:8887/?p=56',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-07-17 07:39:22','2025-07-17 07:39:22','','Thank You','','publish','closed','closed','','thank-you','','','2025-07-17 07:39:22','2025-07-17 07:39:22','',0,'http://localhost:8887/?page_id=58',0,'page','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2025-07-17 07:39:22','2025-07-17 07:39:22','','Thank You','','inherit','closed','closed','','58-revision-v1','','','2025-07-17 07:39:22','2025-07-17 07:39:22','',58,'http://localhost:8887/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2025-07-17 09:14:51','2025-07-17 09:14:51','a:8:{s:8:"location";a:3:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"64";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";}}i:2;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"20";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}','Section Banner','section-banner','publish','closed','closed','','group_6878b9a8eb988','','','2025-08-04 09:35:38','2025-08-04 09:35:38','',0,'http://localhost:8887/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-07-17 09:14:51','2025-07-17 09:14:51','a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}','Banner Header','banner_header','publish','closed','closed','','field_6878b9a9adbe3','','','2025-07-17 09:14:51','2025-07-17 09:14:51','',61,'http://localhost:8887/?post_type=acf-field&p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-07-17 09:14:51','2025-07-17 09:14:51','a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:17:"allow_in_bindings";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}','Banner Content','banner_content','publish','closed','closed','','field_6878b9c3adbe4','','','2025-07-17 09:14:51','2025-07-17 09:14:51','',61,'http://localhost:8887/?post_type=acf-field&p=63',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-07-17 09:18:24','2025-07-17 09:18:24','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium. Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper. Eget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing […]','publish','closed','closed','','terms-and-conditions','','','2025-07-18 06:40:44','2025-07-18 06:40:44','',0,'http://localhost:8887/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-07-17 09:18:24','2025-07-17 09:18:24','','Terms and Conditions','','inherit','closed','closed','','64-revision-v1','','','2025-07-17 09:18:24','2025-07-17 09:18:24','',64,'http://localhost:8887/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-07-17 09:19:52','2025-07-17 09:19:52','a:17:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"allow_in_bindings";i:0;s:12:"preview_size";s:6:"medium";}','Banner Background Image','banner_background_image','publish','closed','closed','','field_6878c0282a415','','','2025-07-17 09:19:52','2025-07-17 09:19:52','',61,'http://localhost:8887/?post_type=acf-field&p=66',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-07-17 09:22:34','2025-07-17 09:22:34','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>\nLorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>\nLorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>\nLorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>\nLorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','','inherit','closed','closed','','64-autosave-v1','','','2025-07-17 09:22:34','2025-07-17 09:22:34','',64,'http://localhost:8887/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-07-17 09:22:45','2025-07-17 09:22:45','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>\nLorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>\nLorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>\nLorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>\nLorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','','inherit','closed','closed','','64-revision-v1','','','2025-07-17 09:22:45','2025-07-17 09:22:45','',64,'http://localhost:8887/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-07-17 09:26:53','2025-07-17 09:26:53','','Terms and Conditions','','inherit','open','closed','','terms-and-conditions-2','','','2025-07-17 09:26:53','2025-07-17 09:26:53','',64,'http://localhost:8887/wp-content/uploads/2025/07/Terms-and-Conditions.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-07-17 09:27:00','2025-07-17 09:27:00','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium. Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper. Eget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing […]','inherit','closed','closed','','64-revision-v1','','','2025-07-17 09:27:00','2025-07-17 09:27:00','',64,'http://localhost:8887/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-07-18 06:40:09','2025-07-18 06:40:09','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium. Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper. Eget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing […]','inherit','closed','closed','','64-revision-v1','','','2025-07-18 06:40:09','2025-07-18 06:40:09','',64,'http://localhost:8887/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2025-07-18 06:40:44','2025-07-18 06:40:44','<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Volutpat cras tincidunt mauris id vitae vitae tincidunt fermentum. Id vitae sit sed odio tellus. Feugiat nulla nisi volutpat accumsan non consectetur ullamcorper amet. Amet rhoncus in id odio eget viverra. Feugiat dictum donec elit feugiat facilisis.\n\nEuismod iaculis feugiat interdum justo eu ornare. Tincidunt nisl lacus commodo at libero nam hendrerit. Egestas id accumsan aliquam sed. Lorem malesuada commodo dui lacus iaculis lectus quis consequat. Gravida accumsan ipsum dolor eu at libero velit mollis. Auctor commodo amet id aliquet. At nulla dui gravida aliquet mi integer sed turpis ipsum. Etiam maecenas consequat quam tortor egestas. Sodales fames mattis quis maecenas magna sed urna odio. Etiam iaculis bibendum tincidunt pulvinar et nunc lectus donec lobortis. Eget cursus sagittis ut interdum posuere mauris diam. Commodo velit feugiat ultricies metus adipiscing. Dolor fermentum vivamus tincidunt adipiscing aliquam consequat. Tempor porta elementum magna elit iaculis quam vehicula.\n\nPlacerat nisl vitae nec lacinia turpis. In laoreet vestibulum ac convallis congue hac cras condimentum. Senectus orci tincidunt urna dignissim in purus feugiat sit. Consectetur nisl eget lorem pharetra. Sed ac venenatis et sit vulputate sit tristique.\n\nPorttitor urna quam amet suspendisse quam. Odio quam phasellus venenatis sit a risus eros. Nibh dolor in ac amet a tellus turpis molestie sit. Nulla sed facilisis nulla eu ultricies. Tempus in amet suspendisse sagittis pharetra praesent. Imperdiet sed diam gravida morbi sit. Vel amet auctor quam tristique nunc erat mauris viverra ac. Mauris gravida nunc sagittis varius at nibh. Eleifend sit orci pharetra vel sed ac. Urna lorem sed tortor lectus ultrices.\n\nEuismod cras risus eleifend a convallis a id amet scelerisque. Amet ut sed adipiscing sed risus. Tempor varius nec euismod diam tellus. Cursus fusce in maecenas enim. Sed tellus integer auctor porttitor lacus. Lacinia scelerisque morbi eu neque consequat imperdiet at tortor. Pellentesque viverra a sit suspendisse nibh consectetur sapien cursus. Proin neque ultrices ullamcorper nisl diam sollicitudin.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h3>Lorem ipsum dolor sit amet consectetur</h3>\nLorem ipsum dolor sit amet consectetur. Eget rutrum non nisl mattis sit dignissim. Sollicitudin imperdiet praesent a lectus. Amet ut ultrices ac nunc eu dui in vitae. Adipiscing egestas ut maecenas condimentum sem imperdiet orci quis. Erat egestas ultrices in id nam in nunc viverra ultrices. Mi proin purus mattis lectus elementum dignissim pharetra. Blandit ac fringilla massa diam duis risus ornare id amet. Morbi semper pellentesque arcu vitae. Enim malesuada ac at ultricies pellentesque. Leo odio bibendum urna sed. Sapien sed a lorem vel non in in enim.\n<h2>Lorem ipsum dolor sit amet consectetur</h2>\nLorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.\n\nEget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.','Terms and Conditions','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Viverra odio luctus orci neque suspendisse fames egestas tincidunt. Augue aliquam cursus turpis aliquam morbi risus venenatis. Malesuada tellus elit quam interdum et magna integer proin tristique. Eu tincidunt varius tellus pretium. Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper. Eget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing […]','inherit','closed','closed','','64-revision-v1','','','2025-07-18 06:40:44','2025-07-18 06:40:44','',64,'http://localhost:8887/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2025-07-18 08:02:54','2025-07-18 08:02:54','','banner1','','inherit','open','closed','','banner1','','','2025-07-18 08:02:54','2025-07-18 08:02:54','',11,'http://localhost:8887/wp-content/uploads/2025/07/banner1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2025-07-18 08:03:03','2025-07-18 08:03:03','','About Us','','inherit','closed','closed','','11-revision-v1','','','2025-07-18 08:03:03','2025-07-18 08:03:03','',11,'http://localhost:8887/?p=74',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-08-04 06:29:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2025-08-04 06:29:13','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=76',0,'post','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2025-08-04 09:31:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2025-08-04 09:31:05','0000-00-00 00:00:00','',0,'http://localhost:8887/?p=77',0,'post','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-08-04 09:31:48','2025-08-04 09:31:48','','Blogs Banner','','inherit','open','closed','','blogs-banner','','','2025-08-04 09:31:48','2025-08-04 09:31:48','',1,'http://localhost:8887/wp-content/uploads/2025/07/Blogs-Banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-08-04 09:31:55','2025-08-04 09:31:55','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','1-revision-v1','','','2025-08-04 09:31:55','2025-08-04 09:31:55','',1,'http://localhost:8887/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #2','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-31','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',0,'http://localhost:8887/?p=80',0,'post','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #3','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-30','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',0,'http://localhost:8887/?p=81',0,'post','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #4','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-29','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',0,'http://localhost:8887/?p=82',0,'post','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #5','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-28','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #6','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-27','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=84',0,'post','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #7','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-26','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #8','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-25','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=86',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #9','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-24','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=87',0,'post','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #10','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-23','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=88',0,'post','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #11','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-22','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=89',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #12','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-21','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #13','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-20','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',0,'http://localhost:8887/?p=91',0,'post','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #14','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-19','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=92',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #15','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-18','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #16','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-17','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=94',0,'post','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #17','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-16','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=95',0,'post','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #18','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-15','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=96',0,'post','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #19','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-14','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=97',0,'post','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #20','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-13','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=98',0,'post','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #21','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-12','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=99',0,'post','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #22','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-11','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=100',0,'post','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #23','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-10','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',0,'http://localhost:8887/?p=101',0,'post','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #24','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-9','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=102',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #25','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-8','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=103',0,'post','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #26','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-7','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=104',0,'post','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #27','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-6','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=105',0,'post','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #28','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-5','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=106',0,'post','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #29','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-4','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=107',0,'post','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #30','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-3','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=108',0,'post','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #31','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','publish','open','open','','hello-world-2','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',0,'http://localhost:8887/?p=109',0,'post','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #31','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','109-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',109,'http://localhost:8887/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #30','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','108-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',108,'http://localhost:8887/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #29','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','107-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',107,'http://localhost:8887/?p=112',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #28','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','106-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',106,'http://localhost:8887/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #27','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','105-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',105,'http://localhost:8887/?p=114',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #26','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','104-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',104,'http://localhost:8887/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #25','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','103-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',103,'http://localhost:8887/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2025-08-04 09:33:48','2025-08-04 09:33:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #24','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','102-revision-v1','','','2025-08-04 09:33:48','2025-08-04 09:33:48','',102,'http://localhost:8887/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #23','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','101-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',101,'http://localhost:8887/?p=118',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #22','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','100-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',100,'http://localhost:8887/?p=119',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #21','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','99-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',99,'http://localhost:8887/?p=120',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #20','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','98-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',98,'http://localhost:8887/?p=121',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #19','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','97-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',97,'http://localhost:8887/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #18','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','96-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',96,'http://localhost:8887/?p=123',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #17','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','95-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',95,'http://localhost:8887/?p=124',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #16','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','94-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',94,'http://localhost:8887/?p=125',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #15','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','93-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',93,'http://localhost:8887/?p=126',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2025-08-04 09:33:49','2025-08-04 09:33:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #14','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','92-revision-v1','','','2025-08-04 09:33:49','2025-08-04 09:33:49','',92,'http://localhost:8887/?p=127',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #13','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','91-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',91,'http://localhost:8887/?p=128',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #12','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','90-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',90,'http://localhost:8887/?p=129',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #11','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','89-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',89,'http://localhost:8887/?p=130',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #10','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','88-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',88,'http://localhost:8887/?p=131',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #9','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','87-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',87,'http://localhost:8887/?p=132',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #8','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','86-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',86,'http://localhost:8887/?p=133',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #7','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','85-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',85,'http://localhost:8887/?p=134',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #6','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','84-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',84,'http://localhost:8887/?p=135',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2025-08-04 09:33:50','2025-08-04 09:33:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #5','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','83-revision-v1','','','2025-08-04 09:33:50','2025-08-04 09:33:50','',83,'http://localhost:8887/?p=136',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #4','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','82-revision-v1','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',82,'http://localhost:8887/?p=137',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #3','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','81-revision-v1','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',81,'http://localhost:8887/?p=138',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2025-08-04 09:33:51','2025-08-04 09:33:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Lorem ipsum dolor #2','<p>Lorem ipsum dolor sit amet consectetur. Rhoncus imperdiet et purus at malesuada. Aliquam lobortis sed morbi integer.</p>','inherit','closed','closed','','80-revision-v1','','','2025-08-04 09:33:51','2025-08-04 09:33:51','',80,'http://localhost:8887/?p=139',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2025-08-04 09:35:47','2025-08-04 09:35:47','','Blogs','','inherit','closed','closed','','20-autosave-v1','','','2025-08-04 09:35:47','2025-08-04 09:35:47','',20,'http://localhost:8887/?p=140',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2025-08-04 09:36:03','2025-08-04 09:36:03','','Blogs Banner','','inherit','open','closed','','blogs-banner-2','','','2025-08-04 09:36:03','2025-08-04 09:36:03','',20,'http://localhost:8887/wp-content/uploads/2025/08/Blogs-Banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (142,1,'2025-08-04 09:36:10','2025-08-04 09:36:10','','Blogs','','inherit','closed','closed','','20-revision-v1','','','2025-08-04 09:36:10','2025-08-04 09:36:10','',20,'http://localhost:8887/?p=142',0,'revision','',0);

--
-- Table structure for table `wp_db7_forms`
--

DROP TABLE IF EXISTS `wp_db7_forms`;
CREATE TABLE `wp_db7_forms` (
	`form_id` bigint(20) NOT NULL AUTO_INCREMENT,
	`form_post_id` bigint(20) NOT NULL DEFAULT 0,
	`form_value` longtext NOT NULL DEFAULT '',
	`form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	PRIMARY KEY (`form_id`)
);

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
CREATE TABLE `wp_yoast_migrations` (
	`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`version` varchar(191),
	PRIMARY KEY (`id`)
);

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` VALUES (1,20171228151840);
INSERT INTO `wp_yoast_migrations` VALUES (2,20171228151841);
INSERT INTO `wp_yoast_migrations` VALUES (3,20190529075038);
INSERT INTO `wp_yoast_migrations` VALUES (4,20191011111109);
INSERT INTO `wp_yoast_migrations` VALUES (5,20200408101900);
INSERT INTO `wp_yoast_migrations` VALUES (6,20200420073606);
INSERT INTO `wp_yoast_migrations` VALUES (7,20200428123747);
INSERT INTO `wp_yoast_migrations` VALUES (8,20200428194858);
INSERT INTO `wp_yoast_migrations` VALUES (9,20200429105310);
INSERT INTO `wp_yoast_migrations` VALUES (10,20200430075614);
INSERT INTO `wp_yoast_migrations` VALUES (11,20200430150130);
INSERT INTO `wp_yoast_migrations` VALUES (12,20200507054848);
INSERT INTO `wp_yoast_migrations` VALUES (13,20200513133401);
INSERT INTO `wp_yoast_migrations` VALUES (14,20200609154515);
INSERT INTO `wp_yoast_migrations` VALUES (15,20200616130143);
INSERT INTO `wp_yoast_migrations` VALUES (16,20200617122511);
INSERT INTO `wp_yoast_migrations` VALUES (17,20200702141921);
INSERT INTO `wp_yoast_migrations` VALUES (18,20200728095334);
INSERT INTO `wp_yoast_migrations` VALUES (19,20201202144329);
INSERT INTO `wp_yoast_migrations` VALUES (20,20201216124002);
INSERT INTO `wp_yoast_migrations` VALUES (21,20201216141134);
INSERT INTO `wp_yoast_migrations` VALUES (22,20210817092415);
INSERT INTO `wp_yoast_migrations` VALUES (23,20211020091404);
INSERT INTO `wp_yoast_migrations` VALUES (24,20230417083836);

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
	`indexable_id` int(11) UNSIGNED,
	`ancestor_id` int(11) UNSIGNED,
	`depth` int(11) UNSIGNED,
	`blog_id`  NOT NULL DEFAULT 1,
	PRIMARY KEY (`indexable_id`, `ancestor_id`)
);

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE `wp_yoast_seo_links` (
	`id` bigint(20) UNSIGNED AUTO_INCREMENT,
	`url` varchar(255),
	`post_id` bigint(20) UNSIGNED,
	`target_post_id` bigint(20) UNSIGNED,
	`type` varchar(8),
	`indexable_id` ,
	`target_indexable_id` ,
	`height` ,
	`width` ,
	`size` ,
	`language` ,
	`region` ,
	PRIMARY KEY (`id`)
);

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
CREATE TABLE `wp_yoast_indexable` (
	`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`permalink` mediumtext,
	`permalink_hash` varchar(40),
	`object_id` bigint(20),
	`object_type` varchar(32) NOT NULL DEFAULT '',
	`object_sub_type` varchar(32),
	`author_id` bigint(20),
	`post_parent` bigint(20),
	`title` text,
	`description` text,
	`breadcrumb_title` text,
	`post_status` varchar(20),
	`is_public` tinyint(1),
	`is_protected` tinyint(1) DEFAULT '0',
	`has_public_posts` tinyint(1),
	`number_of_pages` int(11) UNSIGNED,
	`canonical` mediumtext,
	`primary_focus_keyword` varchar(191),
	`primary_focus_keyword_score` int(3),
	`readability_score` int(3),
	`is_cornerstone` tinyint(1) DEFAULT '0',
	`is_robots_noindex` tinyint(1) DEFAULT '0',
	`is_robots_nofollow` tinyint(1) DEFAULT '0',
	`is_robots_noarchive` tinyint(1) DEFAULT '0',
	`is_robots_noimageindex` tinyint(1) DEFAULT '0',
	`is_robots_nosnippet` tinyint(1) DEFAULT '0',
	`twitter_title` text,
	`twitter_image` mediumtext,
	`twitter_description` mediumtext,
	`twitter_image_id` varchar(191),
	`twitter_image_source` text,
	`open_graph_title` text,
	`open_graph_description` mediumtext,
	`open_graph_image` mediumtext,
	`open_graph_image_id` varchar(191),
	`open_graph_image_source` text,
	`open_graph_image_meta` text,
	`link_count` int(11),
	`incoming_link_count` int(11),
	`prominent_words_version` int(11) UNSIGNED,
	`created_at` ,
	`updated_at`  NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`blog_id`  NOT NULL DEFAULT 1,
	`language` ,
	`region` ,
	`schema_page_type` ,
	`schema_article_type` ,
	`has_ancestors`  DEFAULT '0',
	`estimated_reading_time_minutes` ,
	`version`  DEFAULT 1,
	`object_last_modified` ,
	`object_published_at` ,
	`inclusive_language_score` ,
	PRIMARY KEY (`id`)
);

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
CREATE TABLE `wp_yoast_primary_term` (
	`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`post_id` bigint(20),
	`term_id` bigint(20),
	`taxonomy` varchar(32) NOT NULL DEFAULT '',
	`created_at` ,
	`updated_at`  NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`blog_id`  NOT NULL DEFAULT 1,
	PRIMARY KEY (`id`)
);

--
-- Table structure for table `wp_wp_phpmyadmin_extension__errors_log`
--

DROP TABLE IF EXISTS `wp_wp_phpmyadmin_extension__errors_log`;
CREATE TABLE `wp_wp_phpmyadmin_extension__errors_log` (
	`id` int(50) NOT NULL AUTO_INCREMENT,
	`gmdate` datetime,
	`function_name` longtext NOT NULL DEFAULT '',
	`function_args` longtext NOT NULL DEFAULT '',
	`message` longtext NOT NULL DEFAULT '',
	PRIMARY KEY (`id`),
	UNIQUE KEY `id` (`id`)
);

-- Dump completed on 2025-08-08T09:57:05+00:00