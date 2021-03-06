-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: testv3blank
-- ------------------------------------------------------
-- Server version	5.1.69-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zzzsys_access_level`
--

DROP TABLE IF EXISTS `zzzsys_access_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_access_level` (
  `zzzsys_access_level_id` varchar(25) NOT NULL DEFAULT '',
  `sal_code` varchar(50) DEFAULT NULL,
  `sal_description` varchar(200) DEFAULT NULL,
  `sal_zzzsys_form_id` varchar(25) NOT NULL,
  `zzzsys_access_level_log_added_at` datetime NOT NULL,
  `zzzsys_access_level_log_added_by` varchar(25) NOT NULL,
  `zzzsys_access_level_log_changed_at` datetime NOT NULL,
  `zzzsys_access_level_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_access_level_log_viewed_at` datetime NOT NULL,
  `zzzsys_access_level_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_access_level_id`),
  KEY `sal_name` (`sal_code`),
  KEY `sal_zzzsys_form_id` (`sal_zzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_access_level`
--

LOCK TABLES `zzzsys_access_level` WRITE;
/*!40000 ALTER TABLE `zzzsys_access_level` DISABLE KEYS */;
INSERT INTO `zzzsys_access_level` VALUES ('nufastformlevel','FF','Fast Forms','nuhome','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `zzzsys_access_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_access_level_form`
--

DROP TABLE IF EXISTS `zzzsys_access_level_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_access_level_form` (
  `zzzsys_access_level_form_id` varchar(25) NOT NULL DEFAULT '',
  `slf_zzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slf_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `slf_add_button` varchar(1) NOT NULL,
  `slf_save_button` varchar(1) NOT NULL,
  `slf_delete_button` varchar(1) NOT NULL,
  `slf_clone_button` varchar(1) NOT NULL,
  `slf_new_button` varchar(1) NOT NULL,
  `slf_print_button` varchar(1) NOT NULL,
  `zzzsys_access_level_form_log_added_at` datetime NOT NULL,
  `zzzsys_access_level_form_log_added_by` varchar(25) NOT NULL,
  `zzzsys_access_level_form_log_changed_at` datetime NOT NULL,
  `zzzsys_access_level_form_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_access_level_form_log_viewed_at` datetime NOT NULL,
  `zzzsys_access_level_form_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_access_level_form_id`),
  KEY `saf_zzzsys_access_level_id` (`slf_zzzsys_access_level_id`),
  KEY `slf_zzzsys_form_id` (`slf_zzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_access_level_form`
--

LOCK TABLES `zzzsys_access_level_form` WRITE;
/*!40000 ALTER TABLE `zzzsys_access_level_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_access_level_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_access_level_php`
--

DROP TABLE IF EXISTS `zzzsys_access_level_php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_access_level_php` (
  `zzzsys_access_level_php_id` varchar(25) NOT NULL,
  `slp_zzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slp_zzzsys_php_id` varchar(25) DEFAULT NULL,
  `zzzsys_access_level_php_log_added_at` datetime NOT NULL,
  `zzzsys_access_level_php_log_added_by` varchar(25) NOT NULL,
  `zzzsys_access_level_php_log_changed_at` datetime NOT NULL,
  `zzzsys_access_level_php_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_access_level_php_log_viewed_at` datetime NOT NULL,
  `zzzsys_access_level_php_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_access_level_php_id`),
  KEY `slp_zzzsys_access_level_id` (`slp_zzzsys_access_level_id`),
  KEY `slp_zzzsys_library_id` (`slp_zzzsys_php_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_access_level_php`
--

LOCK TABLES `zzzsys_access_level_php` WRITE;
/*!40000 ALTER TABLE `zzzsys_access_level_php` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_access_level_php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_access_level_report`
--

DROP TABLE IF EXISTS `zzzsys_access_level_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_access_level_report` (
  `zzzsys_access_level_report_id` varchar(25) NOT NULL,
  `slr_zzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `slr_zzzsys_report_id` varchar(25) DEFAULT NULL,
  `zzzsys_access_level_report_log_added_at` datetime NOT NULL,
  `zzzsys_access_level_report_log_added_by` varchar(25) NOT NULL,
  `zzzsys_access_level_report_log_changed_at` datetime NOT NULL,
  `zzzsys_access_level_report_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_access_level_report_log_viewed_at` datetime NOT NULL,
  `zzzsys_access_level_report_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_access_level_report_id`),
  KEY `slr_zzzsys_access_level_id` (`slr_zzzsys_access_level_id`),
  KEY `slr_zzzsys_report_id` (`slr_zzzsys_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_access_level_report`
--

LOCK TABLES `zzzsys_access_level_report` WRITE;
/*!40000 ALTER TABLE `zzzsys_access_level_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_access_level_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_browse`
--

DROP TABLE IF EXISTS `zzzsys_browse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_browse` (
  `zzzsys_browse_id` varchar(25) NOT NULL DEFAULT '',
  `sbr_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `sbr_title` varchar(100) DEFAULT NULL,
  `sbr_display` varchar(512) DEFAULT NULL,
  `sbr_align` char(1) DEFAULT NULL,
  `sbr_format` varchar(10) DEFAULT NULL,
  `sbr_searchable` char(1) DEFAULT NULL,
  `sbr_sort` varchar(512) DEFAULT NULL,
  `sbr_sortable` char(1) DEFAULT NULL,
  `sbr_visible` char(1) DEFAULT NULL,
  `sbr_order` int(11) DEFAULT NULL,
  `sbr_width` int(11) DEFAULT NULL,
  `zzzsys_browse_log_added_at` datetime NOT NULL,
  `zzzsys_browse_log_added_by` varchar(25) NOT NULL,
  `zzzsys_browse_log_changed_at` datetime NOT NULL,
  `zzzsys_browse_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_browse_log_viewed_at` datetime NOT NULL,
  `zzzsys_browse_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_browse_id`),
  KEY `sbr_zzzsys_form_id` (`sbr_zzzsys_form_id`),
  KEY `sbr_sort` (`sbr_sort`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_browse`
--

LOCK TABLES `zzzsys_browse` WRITE;
/*!40000 ALTER TABLE `zzzsys_browse` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_browse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_debug`
--

DROP TABLE IF EXISTS `zzzsys_debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_debug` (
  `zzzsys_debug_id` varchar(25) NOT NULL,
  `deb_message` longtext,
  `deb_added` datetime NOT NULL,
  PRIMARY KEY (`zzzsys_debug_id`),
  KEY `deb_added` (`deb_added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_debug`
--

LOCK TABLES `zzzsys_debug` WRITE;
/*!40000 ALTER TABLE `zzzsys_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_event`
--

DROP TABLE IF EXISTS `zzzsys_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_event` (
  `zzzsys_event_id` varchar(25) NOT NULL,
  `sev_zzzsys_object_id` varchar(25) NOT NULL,
  `sev_name` varchar(50) NOT NULL,
  `sev_javascript` varchar(3000) NOT NULL,
  `zzzsys_event_log_added_at` datetime NOT NULL,
  `zzzsys_event_log_added_by` varchar(25) NOT NULL,
  `zzzsys_event_log_changed_at` datetime NOT NULL,
  `zzzsys_event_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_event_log_viewed_at` datetime NOT NULL,
  `zzzsys_event_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_event_id`),
  KEY `sev_zzzsys_objecct_id` (`sev_zzzsys_object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_event`
--

LOCK TABLES `zzzsys_event` WRITE;
/*!40000 ALTER TABLE `zzzsys_event` DISABLE KEYS */;
INSERT INTO `zzzsys_event` VALUES ('542b88536bfcf13','','ondblclick','nuOpenAce(\"SQL\", this.id, \"\");','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `zzzsys_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_file`
--

DROP TABLE IF EXISTS `zzzsys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_file` (
  `zzzsys_file_id` varchar(25) NOT NULL DEFAULT '',
  `sfi_filepicker` varchar(2000) NOT NULL,
  `sfi_code` varchar(10) DEFAULT NULL,
  `sfi_description` text,
  `sfi_type` varchar(50) NOT NULL,
  `sfi_size` varchar(10) NOT NULL,
  `sfi_name` varchar(255) NOT NULL,
  `sfi_group` varchar(200) DEFAULT NULL,
  `sfi_blob` longblob,
  `zzzsys_file_log_added_at` datetime NOT NULL,
  `zzzsys_file_log_added_by` varchar(25) NOT NULL,
  `zzzsys_file_log_changed_at` datetime NOT NULL,
  `zzzsys_file_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_file_log_viewed_at` datetime NOT NULL,
  `zzzsys_file_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_file_id`),
  KEY `sfi_code` (`sfi_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_file`
--

LOCK TABLES `zzzsys_file` WRITE;
/*!40000 ALTER TABLE `zzzsys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_form`
--

DROP TABLE IF EXISTS `zzzsys_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_form` (
  `zzzsys_form_id` varchar(25) NOT NULL DEFAULT '',
  `sfo_type` varchar(20) NOT NULL,
  `sfo_name` varchar(50) DEFAULT NULL,
  `sfo_title` varchar(50) DEFAULT NULL,
  `sfo_sql` mediumtext,
  `sfo_table` varchar(100) DEFAULT NULL,
  `sfo_primary_key` varchar(100) DEFAULT NULL,
  `sfo_width` int(11) NOT NULL,
  `sfo_height` int(11) NOT NULL,
  `sfo_breadcrumb` varchar(1000) NOT NULL,
  `sfo_add_button` char(1) DEFAULT NULL,
  `sfo_save_button` char(1) DEFAULT NULL,
  `sfo_delete_button` char(1) DEFAULT NULL,
  `sfo_clone_button` char(1) DEFAULT NULL,
  `sfo_new_button` char(1) DEFAULT NULL,
  `sfo_print_button` char(1) DEFAULT NULL,
  `sfo_add_title` varchar(50) DEFAULT NULL,
  `sfo_save_title` varchar(50) DEFAULT NULL,
  `sfo_delete_title` varchar(50) DEFAULT NULL,
  `sfo_clone_title` varchar(50) DEFAULT NULL,
  `sfo_new_title` varchar(50) DEFAULT NULL,
  `sfo_print_title` varchar(50) DEFAULT NULL,
  `sfo_add_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_save_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_delete_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_clone_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_new_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_print_button_display_condition` varchar(255) DEFAULT NULL,
  `sfo_custom_code_run_before_save` mediumtext,
  `sfo_custom_code_run_before_browse` mediumtext,
  `sfo_custom_code_run_before_delete` mediumtext NOT NULL,
  `sfo_custom_code_run_before_open` mediumtext,
  `sfo_custom_code_run_after_save` mediumtext,
  `sfo_custom_code_run_after_delete` mediumtext,
  `sfo_custom_code_run_javascript` mediumtext,
  `sfo_redirect_form_id` varchar(25) DEFAULT NULL,
  `sfo_row_height` int(11) NOT NULL,
  `sfo_rows` int(11) NOT NULL,
  `zzzsys_form_log_added_at` datetime NOT NULL,
  `zzzsys_form_log_added_by` varchar(25) NOT NULL,
  `zzzsys_form_log_changed_at` datetime NOT NULL,
  `zzzsys_form_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_form_log_viewed_at` datetime NOT NULL,
  `zzzsys_form_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_form_id`),
  KEY `sfo_name` (`sfo_name`),
  KEY `sfo_title` (`sfo_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_form`
--

LOCK TABLES `zzzsys_form` WRITE;
/*!40000 ALTER TABLE `zzzsys_form` DISABLE KEYS */;
INSERT INTO `zzzsys_form` VALUES ('nuindex','browse','ind','Index','SELECT * FROM zzzsys_debug','zzzsys_debug','zzzsys_debug_id',900,0,'','0','0','0','0','','','','','','','','','','','','','','','','','','$s = \"\n\n    SELECT * \n    FROM zzzsys_setup\n    WHERE zzzsys_setup_id = \'1\'\n\n\";\n\n$t = nuRunQuery($s);\n\n$r = db_fetch_object($t);\n\nif($r->set_splash != \'1\'){\n\n    $nb = \'<strong><strong><span style=\"color: #78C13A; text-shadow: 1px 1px #D0D7D1;\">nu</span><span style=\"color: #03AAE9; text-shadow: 1px 1px #D0D7D1;\">Builder</span></strong><span style=\"color: #FB0003; text-shadow: 1px 1px #D0D7D1;\"><i>Pro</i></span></strong>\';\n\n    $h = \'<img id=\"talkingmike\" style=\"position:absolute;left:10px;top:10px\" src=\"mike.png\" width=\"64\" height=\"133\">\';\n    $h = $h . \'<div id=\"miketalking\" style=\"position:absolute;left:100px;top:10px\">\';\n    $h = $h . \'Hi, welcome to \' . $nb . \'.<br><br>The easiest way to get started<br>with \' . $nb . \' is with a <strong>Fast Form</strong>.<br><br>\';\n    $h = $h . \'To learn how to create a <strong>Fast Form</strong> please<br>check out this video.<br><br>\';\n    $h = $h . \'<a href=\"https://www.youtube.com/watch?v=P7SHJtikcTM\" target=\"_blank\"><strong>Here</strong></a>\';\n    $h = $h . \'</div>\';\n    $h = $h . \'<div  style=\"position:absolute;left:50px;top:200px\"><input type=\"checkbox\" id=\"nuCheckClose\"> Do not show this message again</div>\';\n    $h = $h . \'<input id=\"closesplash\" onclick=\"nuCloseSplash()\" type=\"button\" value=\"OK\" style=\"background-color:#7CC342;color:white;padding:2px;position:absolute;left:350px;top:200px;width:50px\"/>\';\n\n    \n    $j = \"\n\n	var e = document.createElement(\'div\');\n	\n	e.setAttribute(\'id\', \'nuSplash\');\n	\n	$(\'#nu_tab_area0\').append(e);\n	\n	$(\'#nuSplash\').css({\n		\'width\'            : 450,\n		\'height\'           : 250,\n		\'top\'              : -10,\n		\'left\'             : 250,\n		\'position\'         : \'absolute\',\n		\'background-color\' : \'white\',\n		\'color\'            : \'black\',\n		\'z-index\'          : 5000,\n		\'border-width\'     : \'1px\',\n		\'border-color\'     : \'black\',\n		\'border-style\'     : \'solid\',\n		\'filter\'           : \'Alpha(Opacity=100)\',\n		\'opacity\'          : \'1\',\n		\'box-shadow\'       : \'5px 5px 5px #888888\'\n	})\n\n	$(\'#nuSplash\').html(\'$h\');\n\n    \n    \";\n\n    nuAddJavascript($j);\n    \n}\n\n','nuRunQuery(\"UPDATE zzzsys_setup SET set_splash = \'1\'\");','','function nuLoadEdit() { \n    \n    $(\'#homeform\').css(\'background-color\',\'#7CC342\');\n    \n    $(\'#fafbtn\').attr(\'title\',\"Create a Form and it\'s Table with no programming\");\n\n}\n\nfunction nuCloseSplash(){\n    \n    var s = $(\'#nuCheckClose\').is(\':checked\');\n    \n    $(\'#nuSplash\').remove();\n\n    if(s){\n        nuSaveForm();        \n    }\n\n}','',0,0,'0000-00-00 00:00:00','','2015-04-20 10:12:37','globeadmin','2015-04-20 10:12:37','globeadmin'),('nuemail','browse','EMAIL','Email','select * from zzzsys_debug','zzzsys_debug','zzzsys_debug_id',500,300,'','','1','','','','','','Send Email','','','','','','','','','','','if(\'#replyto#\' == \'\'){\r\n    nuDisplayError(\'User must have an Email Address\');\r\n    return;\r\n}\r\n\r\n\r\n\r\nif(\'#nu_pdf_code#\'!=\'\') {\r\n    nuEmail(\'#nu_pdf_code#\', \'#to#\', \'#subject#\',\'#message#\', $hashData);\r\n}\r\nelse if(\'#nu_php_code#\'!=\'\') {\r\n    nuEmail(\'#nu_php_code#\', \'#to#\', \'#subject#\',\'#message#\', $hashData);\r\n}\r\nelse {\r\n    nuEmail(\'\', \'#to#\', \'#subject#\',\'#message#\', $hashData);\r\n}','','','','','','function nuLoadEdit(){\n\n   nuFORM.record_id = nuFORM.nu_previous_record_id;   //-- so pdf and php use the previous record_id\n\n   if(nuFORM.closedown != undefined){\n      nuRemoveModal();\n   }\n\n\n   nuFORM.closedown = 1;\n   if(nuFORM.nu_pdf_code != \'\'){\n\n	   var mess = nuValidatePDF(nuFORM.nu_pdf_code);\n	   var m    = \'\';\n\n	   if(mess.length > 0){\n\n		  for(var i = 0 ; i < mess.length ; i++){\n			  m = m + mess[i] + \"\\r\";\n		  }\n\n		  alert(m);\n		  nuRemoveModal();\n		  return;\n		  \n	   }\n	}\n\n   if(nuFORM.nu_php_code != \'\'){\n\n	   var mess = nuValidatePHP(nuFORM.nu_php_code);\n	   var m    = \'\';\n\n	   if(mess.length > 0){\n\n		  for(var i = 0 ; i < mess.length ; i++){\n			  m = m + mess[i] + \"\\r\";\n		  }\n\n		  alert(m);\n		  nuRemoveModal();\n		  return;\n		  \n	   }\n\n   }\n}',NULL,0,0,'2014-01-20 14:22:15','globeadmin','2014-02-06 12:53:51','globeadmin','2014-02-06 12:53:52','globeadmin');
/*!40000 ALTER TABLE `zzzsys_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_form_action`
--

DROP TABLE IF EXISTS `zzzsys_form_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_form_action` (
  `zzzsys_form_action_id` varchar(25) NOT NULL DEFAULT '',
  `sfa_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `sfa_button_title` varchar(50) DEFAULT NULL,
  `sfa_button_javascript` mediumtext,
  `sfa_button_display_condition` varchar(255) DEFAULT NULL,
  `zzzsys_form_action_log_added_at` datetime NOT NULL,
  `zzzsys_form_action_log_added_by` varchar(25) NOT NULL,
  `zzzsys_form_action_log_changed_at` datetime NOT NULL,
  `zzzsys_form_action_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_form_action_log_viewed_at` datetime NOT NULL,
  `zzzsys_form_action_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_form_action_id`),
  KEY `sfa_zzzsys_form_id` (`sfa_zzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_form_action`
--

LOCK TABLES `zzzsys_form_action` WRITE;
/*!40000 ALTER TABLE `zzzsys_form_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_form_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_lookup`
--

DROP TABLE IF EXISTS `zzzsys_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_lookup` (
  `zzzsys_lookup_id` varchar(25) NOT NULL DEFAULT '',
  `slo_zzzsys_object_id` varchar(25) DEFAULT NULL,
  `zzzsys_slo_table_field_name` varchar(100) DEFAULT NULL,
  `zzzsys_slo_object_name` varchar(100) DEFAULT NULL,
  `zzzsys_slo_field_function_name` varchar(2000) NOT NULL,
  `zzzsys_lookup_log_added_at` datetime NOT NULL,
  `zzzsys_lookup_log_added_by` varchar(25) NOT NULL,
  `zzzsys_lookup_log_changed_at` datetime NOT NULL,
  `zzzsys_lookup_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_lookup_log_viewed_at` datetime NOT NULL,
  `zzzsys_lookup_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_lookup_id`),
  KEY `slo_zzzsys_object_id` (`slo_zzzsys_object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_lookup`
--

LOCK TABLES `zzzsys_lookup` WRITE;
/*!40000 ALTER TABLE `zzzsys_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_object`
--

DROP TABLE IF EXISTS `zzzsys_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_object` (
  `zzzsys_object_id` varchar(25) NOT NULL DEFAULT '',
  `sob_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `sob_all_access_key` char(1) DEFAULT NULL,
  `sob_all_admin_only` char(1) DEFAULT NULL,
  `sob_all_clone` char(1) DEFAULT NULL,
  `sob_all_column_number` int(11) DEFAULT NULL,
  `sob_all_display_condition` text,
  `sob_all_name` varchar(200) DEFAULT NULL,
  `sob_all_order_number` int(11) DEFAULT NULL,
  `sob_all_tab_number` int(11) DEFAULT NULL,
  `sob_all_tab_title` varchar(200) DEFAULT NULL,
  `sob_all_title` varchar(200) DEFAULT NULL,
  `sob_all_type` varchar(200) DEFAULT NULL,
  `sob_all_top` int(11) DEFAULT NULL,
  `sob_all_left` int(11) DEFAULT NULL,
  `sob_all_width` int(11) NOT NULL,
  `sob_all_height` int(11) NOT NULL,
  `sob_all_align` varchar(1) NOT NULL,
  `sob_all_no_blanks` varchar(1) NOT NULL,
  `sob_all_read_only` varchar(1) NOT NULL,
  `sob_all_default_value_sql` mediumtext NOT NULL,
  `sob_all_no_duplicates` varchar(1) NOT NULL,
  `sob_button_admin_only` char(1) DEFAULT NULL,
  `sob_button_left` int(11) DEFAULT NULL,
  `sob_button_skip_browse_record_id` varchar(200) DEFAULT NULL,
  `sob_button_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `sob_button_browse_filter` varchar(255) DEFAULT NULL,
  `sob_browse_filter` varchar(500) NOT NULL,
  `sob_browse_zzzsys_form_id` varchar(25) NOT NULL,
  `sob_display_sql` mediumtext,
  `sob_dropdown_sql` mediumtext,
  `sob_html_code` longtext,
  `sob_iframe_zzzsys_php_id` varchar(25) NOT NULL,
  `sob_iframe_zzzsys_report_id` varchar(25) NOT NULL,
  `sob_listbox_sql` mediumtext,
  `sob_lookup_code_field` varchar(100) DEFAULT NULL,
  `sob_lookup_default_value_sql` mediumtext,
  `sob_lookup_description_field` varchar(255) DEFAULT NULL,
  `sob_lookup_sql` mediumtext,
  `sob_lookup_zzzsys_form_id` varchar(25) DEFAULT NULL,
  `sob_lookup_id_field` varchar(50) DEFAULT NULL,
  `sob_lookup_javascript` mediumtext,
  `sob_lookup_php` mediumtext NOT NULL,
  `sob_lookup_autocomplete` char(1) DEFAULT NULL,
  `sob_subform_row_height` int(11) DEFAULT NULL,
  `sob_subform_deletable` char(1) DEFAULT NULL,
  `sob_subform_addable` varchar(1) NOT NULL,
  `sob_subform_foreign_key` varchar(50) DEFAULT NULL,
  `sob_subform_primary_key` varchar(50) DEFAULT NULL,
  `sob_subform_sql` mediumtext,
  `sob_subform_table` varchar(100) DEFAULT NULL,
  `sob_text_format` varchar(50) DEFAULT NULL,
  `sob_text_type` varchar(50) NOT NULL,
  `sob_text_password` char(1) DEFAULT NULL,
  `sob_subform_type` varchar(1) NOT NULL,
  `sob_lookup_code_width` int(11) NOT NULL,
  `sob_lookup_description_width` int(11) NOT NULL,
  `zzzsys_object_log_added_at` datetime NOT NULL,
  `zzzsys_object_log_added_by` varchar(25) NOT NULL,
  `zzzsys_object_log_changed_at` datetime NOT NULL,
  `zzzsys_object_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_object_log_viewed_at` datetime NOT NULL,
  `zzzsys_object_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_object_id`),
  KEY `sob_all_order_number` (`sob_all_order_number`),
  KEY `sob_all_tab_number` (`sob_all_tab_number`),
  KEY `sob_all_tab_title` (`sob_all_tab_title`),
  KEY `sob_zzzsys_form_id` (`sob_zzzsys_form_id`),
  KEY `sob_all_column_number` (`sob_all_column_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_object`
--

LOCK TABLES `zzzsys_object` WRITE;
/*!40000 ALTER TABLE `zzzsys_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_php`
--

DROP TABLE IF EXISTS `zzzsys_php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_php` (
  `zzzsys_php_id` varchar(25) NOT NULL DEFAULT '',
  `slp_code` varchar(250) NOT NULL,
  `slp_description` varchar(250) NOT NULL,
  `slp_group` varchar(250) NOT NULL,
  `slp_php` text NOT NULL,
  `slp_zzzsys_form_id` varchar(25) NOT NULL,
  `slp_nonsecure` varchar(1) DEFAULT '0',
  `slp_list` varchar(1) NOT NULL,
  `zzzsys_php_log_added_at` datetime NOT NULL,
  `zzzsys_php_log_added_by` varchar(25) NOT NULL,
  `zzzsys_php_log_changed_at` datetime NOT NULL,
  `zzzsys_php_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_php_log_viewed_at` datetime NOT NULL,
  `zzzsys_php_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_php_id`),
  KEY `sat_all_code` (`slp_code`),
  KEY `sat_all_description` (`slp_description`),
  KEY `slp_zzzsys_form_id` (`slp_zzzsys_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_php`
--

LOCK TABLES `zzzsys_php` WRITE;
/*!40000 ALTER TABLE `zzzsys_php` DISABLE KEYS */;
INSERT INTO `zzzsys_php` VALUES ('52c0da99b95c264','FILE','Upload File','nubuilder','$h = \"\n\n<html>\n<body style=\'background-color:lightgrey\'>\n\n<form enctype=\'multipart/form-data\' action=\'nuupload.php\' method=\'POST\'>\n     <input name=\'userfile\' type=\'file\' />\n    <input type=\'submit\' value=\'Send File\' />\n</form>\n\n</body>\n</html> \n\n\";\n\nprint $h;\n','51bf99ca103dbd5','0','1','2013-12-30 13:29:45','globeadmin','2014-02-19 09:41:13','globeadmin','2014-02-19 09:48:38','globeadmin'),('530a8f8e78111c4','TESTEMAIL','Test Email Settings','nubuilder','echo \"<pre>\";\necho \"Testing Email Settings<br>======================<br>\";\n\n$setup                      = $GLOBALS[\'nuSetup\'];                                      //-- Read SMTP AUTH Settings from zzsys_setup table	\n\nif (!empty($setup->set_smtp_username))          { $setup->set_smtp_username = trim($setup->set_smtp_username);}                       else{$errorText .= \"SMTP Username not set.<br>\";}\nif (!empty($setup->set_smtp_password)) 	        { $setup->set_smtp_password = trim($setup->set_smtp_password);}                       else{$errorText .= \"SMTP Password not set.<br>\";}\nif (!empty($setup->set_smtp_host))              { $setup->set_smtp_host = trim($setup->set_smtp_host);}                               else{$errorText .= \"SMTP Host not set.<br>\";}\nif (!empty($setup->set_smtp_from_address))      { $setup->set_smtp_from_address = trim($setup->set_smtp_from_address);}               else{$errorText .= \"SMTP From Address not set.<br>\";}\nif (!empty($setup->set_smtp_port))              { $setup->set_smtp_port = intval($setup->set_smtp_port);}                             else{$errorText .= \"SMTP PORT not set.<br>\";}\nif (!empty($setup->set_smtp_use_ssl))           { $setup->set_smtp_use_ssl = (intval($setup->set_smtp_use_ssl) == 1) ? true : false;} else{$setup->set_smtp_use_ssl = false;}\nif (!empty($setup->set_smtp_from_name))         { $SMTPname = trim($setup->set_smtp_from_name);}	                              else{$SMTPname = \"nuBuilder\";}\n\nif ($errorText != \'\') {\n	nuDisplayError(\"Unable to send SMTP Email, the following error(s) occured:<br>\" . $errorText);\n	return;\n	\n}else{\n\n	echo \"<br>SMTPhost: \" .$setup->set_smtp_host;\n	echo \"<br>SMTPport: \" .$setup->set_smtp_port;\n	echo \"<br>SMTPauth: \" .$setup->set_smtp_use_ssl;\n	echo \"<br>SMTPuser: \" .$setup->set_smtp_username;\n	echo \"<br>SMTPpass: \" .$setup->set_smtp_password;\n	echo \"<br>SMTPfrom: \" .$setup->set_smtp_from_address;\n	echo \"<br>SMTPfnam: \" .$setup->set_smtp_from_name;\n\n	$content = \"<H1>Test Email Settings</h1>\";\n	$subject = \"Test Email Settings\";\n\n	require_once(\"phpmailer/class.phpmailer.php\");\n\n	$mail                    = new PHPMailer();\n	$mail->IsSMTP();\n	$mail->Host              = $setup->set_smtp_host;\n	$mail->Port              = $setup->set_smtp_port;\n	$mail->SMTPSecure        = $setup->set_smtp_use_ssl ? \'ssl\' : \'\';\n	$mail->SMTPAuth          = $setup->set_smtp_use_ssl;\n\n	if ($setup->set_smtp_use_ssl) {\n		$mail->Username  = $setup->set_smtp_username;\n		$mail->Password  = $setup->set_smtp_password;\n	}\n\n	$mail->From              = $setup->set_smtp_from_address;\n	$mail->FromName          = $setup->set_smtp_from_name;\n\n	$mail->AddAddress($setup->set_smtp_from_address,$setup->set_smtp_from_name);\n	$mail->AddReplyTo($setup->set_smtp_from_address,$setup->set_smtp_from_name);\n\n	$mail->AddReplyTo        = $setup->set_smtp_from_address;\n	$mail->AddAddress        = $setup->set_smtp_from_address;\n	$mail->WordWrap          = 80;\n	$mail->IsHTML(true);\n	$mail->Subject           = $subject;\n	$mail->Body              = $content;\n\n	echo \"<br><br>PhpMailer Says:<br>================<br><br>\";\n\n	if(!$mail->Send()) {\n		echo \"Error sending: \" . $mail->ErrorInfo;;\n	} else {\n		echo \"Test sent\";\n	} \n\n}\n	\necho \"</pre>\";\n','51bf99ca103dbd5','0','1','2014-02-24 11:17:18','globeadmin','2014-02-24 13:35:10','globeadmin','2014-02-24 13:35:10','globeadmin');
/*!40000 ALTER TABLE `zzzsys_php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_report`
--

DROP TABLE IF EXISTS `zzzsys_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_report` (
  `zzzsys_report_id` varchar(25) NOT NULL,
  `sre_code` varchar(250) NOT NULL,
  `sre_description` varchar(250) NOT NULL,
  `sre_group` varchar(250) NOT NULL,
  `sre_zzzsys_sql` text NOT NULL,
  `sre_zzzsys_php_id` varchar(25) NOT NULL,
  `sre_zzzsys_form_id` varchar(25) NOT NULL,
  `sre_layout` longtext NOT NULL,
  `zzzsys_report_log_added_at` datetime NOT NULL,
  `zzzsys_report_log_added_by` varchar(25) NOT NULL,
  `zzzsys_report_log_changed_at` datetime NOT NULL,
  `zzzsys_report_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_report_log_viewed_at` datetime NOT NULL,
  `zzzsys_report_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_report_id`),
  KEY `sre_zzzsys_php_id` (`sre_zzzsys_php_id`),
  KEY `sre_zzzsys_form_id` (`sre_zzzsys_form_id`),
  KEY `sre_code` (`sre_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_report`
--

LOCK TABLES `zzzsys_report` WRITE;
/*!40000 ALTER TABLE `zzzsys_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_session`
--

DROP TABLE IF EXISTS `zzzsys_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_session` (
  `zzzsys_session_id` varchar(25) NOT NULL DEFAULT '',
  `sss_zzzsys_user_id` varchar(25) DEFAULT NULL,
  `sss_timeout` bigint(20) NOT NULL,
  `zzzsys_session_log_added_at` datetime NOT NULL,
  `zzzsys_session_log_added_by` varchar(25) NOT NULL,
  `zzzsys_session_log_changed_at` datetime NOT NULL,
  `zzzsys_session_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_session_log_viewed_at` datetime NOT NULL,
  `zzzsys_session_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_session`
--

LOCK TABLES `zzzsys_session` WRITE;
/*!40000 ALTER TABLE `zzzsys_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_setup`
--

DROP TABLE IF EXISTS `zzzsys_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_setup` (
  `zzzsys_setup_id` varchar(25) NOT NULL DEFAULT '',
  `set_title` varchar(100) DEFAULT NULL,
  `set_time_out_minutes` int(11) DEFAULT NULL,
  `set_timezone` varchar(255) DEFAULT NULL,
  `set_smtp_username` varchar(255) DEFAULT NULL,
  `set_smtp_password` varchar(255) DEFAULT NULL,
  `set_smtp_host` varchar(255) DEFAULT NULL,
  `set_smtp_from_address` varchar(255) DEFAULT NULL,
  `set_smtp_from_name` varchar(255) DEFAULT NULL,
  `set_smtp_port` int(4) DEFAULT NULL,
  `set_smtp_use_ssl` char(1) DEFAULT '1',
  `set_fonts` text NOT NULL,
  `set_language` varchar(20) NOT NULL,
  `set_css` longtext NOT NULL,
  `set_denied` varchar(255) NOT NULL,
  `set_splash` varchar(1) NOT NULL,
  `set_inkfilepicker_key` varchar(500) NOT NULL,
  `zzzsys_setup_log_added_at` datetime NOT NULL,
  `zzzsys_setup_log_added_by` varchar(25) NOT NULL,
  `zzzsys_setup_log_changed_at` datetime NOT NULL,
  `zzzsys_setup_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_setup_log_viewed_at` datetime NOT NULL,
  `zzzsys_setup_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_setup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_setup`
--

LOCK TABLES `zzzsys_setup` WRITE;
/*!40000 ALTER TABLE `zzzsys_setup` DISABLE KEYS */;
INSERT INTO `zzzsys_setup` VALUES ('default','NOT USED DELETED THIS FIELD',120,'Australia/Adelaide','','','','','',0,'','','','<script>\r\nfunction nuLoadEditGlobal(){\r\n	nuOnLoad();\r\n}\r\nfunction nuLoadBrowseGlobal(){\r\n	nuOnLoad();\r\n}\r\nfunction nuOnLoad() {                 //-- display a logo\r\n    if (window.top === window.self) {\r\n        var logoWidth = 167;\r\n        var logoLeft  = parseInt($(\'#nuActionButtonHolder\').css(\'width\')) - logoWidth - 10;\r\n        if (logoLeft > 500) {\r\n            var im        = document.createElement(\'img\');\r\n            im.setAttribute(\'id\', \'thislogo\');\r\n            im.setAttribute(\'src\', \'nuBuilder-Logo-medium.png\');\r\n            $(\'#nuActionButtonHolder\').append(im);\r\n            $(\'#\' + im.id).css( \'width\', logoWidth + \'px\');\r\n            $(\'#\' + im.id).css( \'height\', \'33px\');\r\n            $(\'#\' + im.id).css( \'left\',  logoLeft  + \'px\');\r\n            $(\'#\' + im.id).css( \'position\', \'absolute\');\r\n            $(\'#\' + im.id).css( \'border-style\', \'none\');\r\n            $(\'#\' + im.id).css( \'z-index\', \'0\');\r\n            $(\'#\' + im.id).css( \'top\', \'0px\');\r\n        }\r\n    } else {\r\n           if ( !window.parent.document.getElementById(\'nuDrag\') ) {\r\n               document.body.style.backgroundColor = \'#EDEDED\';\r\n           }      \r\n    }\r\n}\r\n</script>\r\n<style>\r\nb                            {color: #666666;}\r\na:focus, \r\na:visited, \r\na:hover, \r\na:active                     {outline: thin dotted #333;outline: 5px auto -webkit-focus-ring-color;outline-offset: -2px;color: #666666;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);text-decoration: none;}\r\ntable                        {padding:0px;margin:0px;text-align:center;vertical-align:top;margin-left:auto;margin-right:auto;width:100%;cellspacing:0px;cellpadding:0px}\r\ntr                           {padding:0px;margin:0px;text-align:top;vertical-align:top;}\r\ntd                           {padding:0px;margin:0px}\r\ndiv                          {padding:0px;margin:0px}\r\nimg                          {padding:0px;margin:0px;}\r\nselect                       {padding:0px;margin:0px; font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;}\r\ntextarea                     {padding:0px;margin:0px;font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;}\r\niframe                       {border: 0px;margin: 0px;padding: 0px;}\r\nbody                         {margin: 0;font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;font-size: 13px;line-height: 18px;color: #202020;background-color: ##f4f4f4;}\r\n.ui-widget                   {font-size: 0.8em;}\r\n.ui-autocomplete             {max-height: 200px; overflow-y: auto; overflow-x: hidden; }\r\ninput {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\nselect {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\ntextarea {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nuLookup    {\r\n	background-color: #93C8F9;\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nuReadOnly  {\r\n	background-color: #CCCCCC;\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nu_browse                   {background-color : #8de2e2}\r\n.nu_button                   {background-color : #98AFC7}\r\n.nu_checkbox                 {background-color : #FF6633}\r\n.nu_display                  {background-color : #C7B097}\r\n.nu_dropdown                 {background-color : #7bce98}\r\n.nu_html                     {background-color : #c497a6}\r\n.nu_iframe                   {background-color : #89C35C}\r\n.nu_listbox                  {background-color : #caa5f6}\r\n.nu_lookup                   {background-color : #EDDA74}\r\n.nu_subform                  {background-color : #fa9b96}\r\n.nu_text                     {background-color : #cbc287}\r\n.nu_textarea                 {background-color : #a0a7d6}\r\n.nu_words                    {background-color : #ffc082}   \r\n.nuError                     {background-color: #FF8080;}\r\n.nuHolder                    {position:relative;margin:auto;width:1100px;height:800px}\r\n.nuFileShadow                {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 1px 1px 1px #888888;position:relative;top:170px;left:100px;margin:auto;width:280px;height:200px;font-size:16px;font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;background-color:white}\r\n.nuShadeHolder               {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 0px 0px 0px #888888;position:absolute;top:70px;left:0px;margin:auto;width:1002px;height:542px}\r\n.nuDialogHolder              {position:absolute;left:0px;width:1020px;height:700px;border-style:solid;border-width:0px 0px 0px 0px;border-color:grey;-moz-border-radius: 0px;border-radius: 0px;}\r\n.nuActionButtonHolder        {position:absolute;top:15px;left:0px;width:1100px;text-align:center}\r\n.nuTabAreaHolder             {position:absolute;top:23px;left:0px;}\r\n.nuBrowseTabAreaHolder       {position:absolute;top:60px;left:0px;}\r\n.nuBrowseSearch              {color:red}\r\n.nuBreadCrumbHolder {\r\n	position:absolute;\r\n	left:0px;\r\n	top:45px;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	color:#f7961c;\r\n	*zoom: 1;\r\n	margin-bottom: 0;\r\n	font-size: 15px;\r\n	line-height: 18px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle \r\n}\r\n.nuBreadCrumbSection {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	*zoom: 1;\r\n	margin-bottom: 2px;\r\n	font-size: 15px;\r\n	line-height: 23px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	text-decoration: underline;\r\n	vertical-align: middle; \r\n	cursor: pointer;\r\n}\r\n.nuBreadCrumbPointer {\r\n	color: #F7961C;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	*zoom: 1;\r\n	margin-bottom: 2px;\r\n	font-size: 15px;\r\n    line-height: 23px;\r\n    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n    vertical-align: middle; \r\n}\r\n.nuBreadCrumbSectionEnd {\r\n    font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n    color: #F7961C;\r\n    *zoom: 1;\r\n    margin-bottom: 2px;\r\n    font-size: 15px;\r\n    line-height: 23px;\r\n    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n    vertical-align: middle; \r\n}\r\n.nuTabTitleHolder {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-left-radius:0px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-left-radius:0px;\r\n	border-top-right-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px;border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderL {\r\n	font-family:\"Helvetica Neue\", \r\n	Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n    position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-left-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px; \r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderR {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-right-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px; \r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderC {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	border-style:solid;\r\n	border-width:0px;\r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px\r\n}\r\n.nuStatusHolder {\r\n	position:absolute;\r\n	top:520px;\r\n	left:0px;\r\n	width:1100px;\r\n	height:20px;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	-moz-border-bottom-left-radius:0px;\r\n	-moz-border-bottom-right-radius:0px;\r\n	border-bottom-left-radius:0px;\r\n	border-bottom-right-radius:0px;\r\n	font-size:16px;\r\n	border-style:solid;\r\n	border-width:0px;\r\n	border-color:grey;\r\n}\r\n.nuTabTitle {\r\n	*zoom: 1;\r\n	padding: 4px 10px 4px;\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	color: #202020;\r\n	text-align: center;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n}\r\n.nuSearchColumn {\r\n	*zoom: 1;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n\r\n}\r\n.nuBrowseCell {\r\n	*zoom: 1;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	color: #202020;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	border-style:solid;\r\n	border-width: 0.082em 0.082em 0.082em 0.082em; \r\n	border-color: #D3D3D3; \r\n}\r\n.nuGradient {\r\n         background: #CCCCCC;\r\n/*\r\n	background: #e0f3fa; \r\n	background: -moz-linear-gradient(top,  #e0f3fa 0%, #a6daea 23%, #01A6F5 100%); \r\n	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e0f3fa), color-stop(23%,#a6daea), color-stop(100%,#01A6F5)); \r\n	background: -webkit-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: -o-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: -ms-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: linear-gradient(to bottom,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0f3fa\', endColorstr=\'#01A6F5\',GradientType=0 ); \r\n*/\r\n}\r\n.nuTabArea {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	position:absolute;\r\n	top:0px;\r\n	left:0px;\r\n	width:1100px;\r\n	height:605px;\r\n	border-style:solid;\r\n	border-width:0px 0px 0px 0px; \r\n	border-color:grey;\r\n	overflow:hidden;\r\n}\r\n.nuLoginBox {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	position:absolute;\r\n	top:0px;\r\n	left:0px;\r\n	width:310px;\r\n	height:300px;\r\n	/* border-style:solid;\r\n	border-width: 1px 1px 1px 1px; \r\n	border-color:grey; */\r\n	overflow:hidden;\r\n	background-color:#EDEDED;\r\n}\r\n.nuSelectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	/* background-color:#EDEDED; */\r\n	background-color: #f0f0f0;\r\n	color: #666666;\r\n	text-align:center;\r\n	vertical-align:top;\r\n	margin-left:auto;\r\n	margin-right:auto;\r\n\r\n}\r\n.nuUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	color: #666666;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuGreenUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #4FFF4F;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuYellowUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #FFFE28;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuSearch {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #abd886;\r\n	padding: 6px 12px;\r\n    margin-bottom: 0;\r\n    font-size: 13px;\r\n    font-weight: normal;\r\n    line-height: 1.42857143;\r\n    text-align: left;\r\n    white-space: nowrap;\r\n    vertical-align: middle;	\r\n	color: #666666;\r\n	border: 1px solid transparent;\r\n}\r\n.nuSelectedTabTitle {\r\n	height:22px;\r\n	-moz-border-top-left-radius:0px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-left-radius:0px;\r\n	border-top-right-radius:0px;\r\n	/* border-style:solid;\r\n	border-width:1px 1px 0px 1px; */\r\n	border-color: #01A6F5; \r\n}\r\n.nuButtonSent {\r\n	display: inline-block;\r\n	*display: inline;\r\n	/* IE7 inline-block hack */\r\n	*zoom: 1;\r\n	/* padding: 4px 10px 4px; */\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	text-align: center;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	color: #202020;\r\n	background-color: #CCCCCC;\r\n	background-image: -moz-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -ms-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#FF4A4A), to(#FD0000));\r\n	background-image: -webkit-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -o-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-repeat: repeat-x;\r\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#FF4A4A\', endColorstr=\'#FD0000\', GradientType=0);\r\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\r\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n	-webkit-border-radius: 0px;\r\n	-moz-border-radius: 0px;\r\n	border-radius: 0px;\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	cursor: pointer;\r\n	*margin-left: .3em;\r\n}\r\n.nuClose {\r\n	display: inline-block;\r\n	*display: inline;\r\n	/* IE7 inline-block hack */\r\n	*zoom: 1;\r\n	padding: 0px;\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	font-weight: bold;\r\n	line-height: 18px;\r\n	text-align: center;\r\n	text-shadow: 0 2px 2px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	color: #01A6F5;\r\n	background-color: #B9CACE;\r\n	background-image: -moz-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -ms-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E7E7E7), to(#B9CACE));\r\n	background-image: -webkit-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -o-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-repeat: repeat-x;\r\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#E7E7E7\', endColorstr=\'#B9CACE\', GradientType=0);\r\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\r\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n	-webkit-border-radius: 0px;\r\n	-moz-border-radius: 0px;\r\n	border-radius: 0px;\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	cursor: pointer;\r\n}\r\n.nuClose:hover {\r\n	font-weight: normal;\r\n	color: #202020;\r\n	background-color: #e9f3fa;\r\n	background-image: -moz-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -ms-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#a6daea), to(#01A6F5));\r\n	background-image: -webkit-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -o-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: linear-gradient(top, #a6daea, #01A6F5);\r\n	background-repeat: repeat-x;\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n}\r\n.nuSaveMessageProgress {\r\n	font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	width:100px;\r\n	height:22px;\r\n	top:10px;\r\n	left:0px;\r\n	color: #202020;\r\n	position:absolute;\r\n	font-size: 14px;\r\n	line-height: 20px;\r\n	text-align: left;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n}\r\n.nuBrowseRowSelected         {background-color: #93C8F9;}\r\n.nuSaveMessage {\r\n	top:10px;\r\n	left:0px;\r\n	position:absolute;\r\n	/*\r\n	width:110px;\r\n	height:20px; \r\n	opacity:0.7\r\n	*/\r\n	display: inline-block;\r\n    padding: 6px 12px;\r\n    margin-bottom: 0;\r\n	font-size: 13px;\r\n	font-weight: normal;\r\n	line-height: 1.42857143;\r\n	text-align: center;\r\n	white-space: nowrap;\r\n	vertical-align: middle;\r\n	cursor: pointer;\r\n	-webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n	background-image: none;\r\n	border: 1px solid transparent;\r\n	border-radius: 0px;\r\n	color: #ffffff;\r\n	background-color: #abd886;\r\n	border-color: #abd886;\r\n}\r\n.nuNotSaved {\r\n  display: inline-block;\r\n  padding: 6px 12px;\r\n  margin-bottom: 0;\r\n  font-size: 13px;\r\n  font-weight: normal;\r\n  line-height: 1.42857143;\r\n  text-align: center;\r\n  white-space: nowrap;\r\n  vertical-align: middle;\r\n  cursor: pointer;\r\n  -webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n  background-image: none;\r\n  border: 1px solid transparent;\r\n  border-radius: 0px;\r\n  color: #ffffff;\r\n  background-color: #ff6969;\r\n  border-color: #ff6969;\r\n}\r\n.nuButton {\r\n  display: inline-block;\r\n  margin-bottom: 0;\r\n  font-size: 13px;\r\n  font-weight: normal;\r\n  line-height: 1.42857143;\r\n  text-align: center;\r\n  white-space: nowrap;\r\n  vertical-align: middle;\r\n  cursor: pointer;\r\n  -webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n  background-image: none;\r\n  border: 1px solid transparent;\r\n  border-radius: 0px;\r\n  \r\n  color: #ffffff;\r\n  background-color: #5bcaf5;\r\n  border-color: #5bcaf5;\r\n  \r\n}\r\n.nuActionButton {\r\n  padding: 6px 12px;\r\n\r\n}\r\n.nuButton:focus,\r\n.nuButton:active:focus,\r\n.nuButton.active:focus {\r\n  outline: thin dotted;\r\n  outline: 5px auto -webkit-focus-ring-color;\r\n  outline-offset: -2px;\r\n  color: #ffffff;\r\n  background-color: #00adef;\r\n  border-color: #00adef;\r\n}\r\n.nuButton:hover,\r\n.nuButton:focus {\r\n    text-decoration: none;\r\ncolor: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n  \r\n}\r\n.nuButton:active,\r\n.nuButton.active {\r\n  background-image: none;\r\n  outline: 0;\r\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\r\n          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\r\n		  \r\n  color: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n		  \r\n}\r\n.nuButton.disabled {\r\n  pointer-events: none;\r\n  cursor: not-allowed;\r\n  filter: alpha(opacity=65);\r\n  -webkit-box-shadow: none;\r\n          box-shadow: none;\r\n  opacity: .65;\r\n  \r\ncolor: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n    \r\n}\r\n</style>','nu%','','','0000-00-00 00:00:00','','2013-09-24 10:21:59','globeadmin','2013-09-24 10:21:59','globeadmin'),('1','NOT USED DELETED THIS FIELD',120,'Australia/Adelaide','','','','','',0,'','','','<script>\r\nfunction nuLoadEditGlobal(){\r\n	nuOnLoad();\r\n}\r\nfunction nuLoadBrowseGlobal(){\r\n	nuOnLoad();\r\n}\r\nfunction nuOnLoad() {                 //-- display a logo\r\n    if (window.top === window.self) {\r\n        var logoWidth = 167;\r\n        var logoLeft  = parseInt($(\'#nuActionButtonHolder\').css(\'width\')) - logoWidth - 10;\r\n        if (logoLeft > 500) {\r\n            var im        = document.createElement(\'img\');\r\n            im.setAttribute(\'id\', \'thislogo\');\r\n            im.setAttribute(\'src\', \'nuBuilder-Logo-medium.png\');\r\n            $(\'#nuActionButtonHolder\').append(im);\r\n            $(\'#\' + im.id).css( \'width\', logoWidth + \'px\');\r\n            $(\'#\' + im.id).css( \'height\', \'33px\');\r\n            $(\'#\' + im.id).css( \'left\',  logoLeft  + \'px\');\r\n            $(\'#\' + im.id).css( \'position\', \'absolute\');\r\n            $(\'#\' + im.id).css( \'border-style\', \'none\');\r\n            $(\'#\' + im.id).css( \'z-index\', \'0\');\r\n            $(\'#\' + im.id).css( \'top\', \'0px\');\r\n        }\r\n    } else {\r\n           if ( !window.parent.document.getElementById(\'nuDrag\') ) {\r\n               document.body.style.backgroundColor = \'#EDEDED\';\r\n           }      \r\n    }\r\n}\r\n</script>\r\n<style>\r\nb                            {color: #666666;}\r\na:focus, \r\na:visited, \r\na:hover, \r\na:active                     {outline: thin dotted #333;outline: 5px auto -webkit-focus-ring-color;outline-offset: -2px;color: #666666;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);text-decoration: none;}\r\ntable                        {padding:0px;margin:0px;text-align:center;vertical-align:top;margin-left:auto;margin-right:auto;width:100%;cellspacing:0px;cellpadding:0px}\r\ntr                           {padding:0px;margin:0px;text-align:top;vertical-align:top;}\r\ntd                           {padding:0px;margin:0px}\r\ndiv                          {padding:0px;margin:0px}\r\nimg                          {padding:0px;margin:0px;}\r\nselect                       {padding:0px;margin:0px; font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;}\r\ntextarea                     {padding:0px;margin:0px;font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;}\r\niframe                       {border: 0px;margin: 0px;padding: 0px;}\r\nbody                         {margin: 0;font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;font-size: 13px;line-height: 18px;color: #202020;background-color: ##f4f4f4;}\r\n.ui-widget                   {font-size: 0.8em;}\r\n.ui-autocomplete             {max-height: 200px; overflow-y: auto; overflow-x: hidden; }\r\ninput {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\nselect {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\ntextarea {\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nuLookup    {\r\n	background-color: #93C8F9;\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nuReadOnly  {\r\n	background-color: #CCCCCC;\r\n	padding:0px;\r\n	margin:0px; \r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	border: 1px solid #e1e8ea;\r\n  	outline: none;\r\n	box-shadow: none;\r\n	padding: 0px;\r\n}\r\n.nu_browse                   {background-color : #8de2e2}\r\n.nu_button                   {background-color : #98AFC7}\r\n.nu_checkbox                 {background-color : #FF6633}\r\n.nu_display                  {background-color : #C7B097}\r\n.nu_dropdown                 {background-color : #7bce98}\r\n.nu_html                     {background-color : #c497a6}\r\n.nu_iframe                   {background-color : #89C35C}\r\n.nu_listbox                  {background-color : #caa5f6}\r\n.nu_lookup                   {background-color : #EDDA74}\r\n.nu_subform                  {background-color : #fa9b96}\r\n.nu_text                     {background-color : #cbc287}\r\n.nu_textarea                 {background-color : #a0a7d6}\r\n.nu_words                    {background-color : #ffc082}   \r\n.nuError                     {background-color: #FF8080;}\r\n.nuHolder                    {position:relative;margin:auto;width:1100px;height:800px}\r\n.nuFileShadow                {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 1px 1px 1px #888888;position:relative;top:170px;left:100px;margin:auto;width:280px;height:200px;font-size:16px;font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;background-color:white}\r\n.nuShadeHolder               {border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-top-right-radius:0px;border-top-left-radius:0px;box-shadow: 0px 0px 0px #888888;position:absolute;top:70px;left:0px;margin:auto;width:1002px;height:542px}\r\n.nuDialogHolder              {position:absolute;left:0px;width:1020px;height:700px;border-style:solid;border-width:0px 0px 0px 0px;border-color:grey;-moz-border-radius: 0px;border-radius: 0px;}\r\n.nuActionButtonHolder        {position:absolute;top:15px;left:0px;width:1100px;text-align:center}\r\n.nuTabAreaHolder             {position:absolute;top:23px;left:0px;}\r\n.nuBrowseTabAreaHolder       {position:absolute;top:60px;left:0px;}\r\n.nuBrowseSearch              {color:red}\r\n.nuBreadCrumbHolder {\r\n	position:absolute;\r\n	left:0px;\r\n	top:45px;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	color:#f7961c;\r\n	*zoom: 1;\r\n	margin-bottom: 0;\r\n	font-size: 15px;\r\n	line-height: 18px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle \r\n}\r\n.nuBreadCrumbSection {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	*zoom: 1;\r\n	margin-bottom: 2px;\r\n	font-size: 15px;\r\n	line-height: 23px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	text-decoration: underline;\r\n	vertical-align: middle; \r\n	cursor: pointer;\r\n}\r\n.nuBreadCrumbPointer {\r\n	color: #F7961C;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	*zoom: 1;\r\n	margin-bottom: 2px;\r\n	font-size: 15px;\r\n    line-height: 23px;\r\n    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n    vertical-align: middle; \r\n}\r\n.nuBreadCrumbSectionEnd {\r\n    font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n    color: #F7961C;\r\n    *zoom: 1;\r\n    margin-bottom: 2px;\r\n    font-size: 15px;\r\n    line-height: 23px;\r\n    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n    vertical-align: middle; \r\n}\r\n.nuTabTitleHolder {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-left-radius:0px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-left-radius:0px;\r\n	border-top-right-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px;border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderL {\r\n	font-family:\"Helvetica Neue\", \r\n	Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n    position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-left-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px; \r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderR {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	min-height:18px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-right-radius:0px;\r\n	border-style:solid;\r\n	border-width:0px; \r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px \r\n}\r\n.nuTabTitleHolderC {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	font-size:16px;\r\n	position:absolute;\r\n	left:0px;\r\n	top:0px;\r\n	width:1100px;\r\n	border-style:solid;\r\n	border-width:0px;\r\n	border-color:grey;\r\n	width:1100px;\r\n	border-width:0px 0px 0px 0px\r\n}\r\n.nuStatusHolder {\r\n	position:absolute;\r\n	top:520px;\r\n	left:0px;\r\n	width:1100px;\r\n	height:20px;\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	-moz-border-bottom-left-radius:0px;\r\n	-moz-border-bottom-right-radius:0px;\r\n	border-bottom-left-radius:0px;\r\n	border-bottom-right-radius:0px;\r\n	font-size:16px;\r\n	border-style:solid;\r\n	border-width:0px;\r\n	border-color:grey;\r\n}\r\n.nuTabTitle {\r\n	*zoom: 1;\r\n	padding: 4px 10px 4px;\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	color: #202020;\r\n	text-align: center;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n}\r\n.nuSearchColumn {\r\n	*zoom: 1;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n\r\n}\r\n.nuBrowseCell {\r\n	*zoom: 1;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	color: #202020;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	border-style:solid;\r\n	border-width: 0.082em 0.082em 0.082em 0.082em; \r\n	border-color: #D3D3D3; \r\n}\r\n.nuGradient {\r\n         background: #CCCCCC;\r\n/*\r\n	background: #e0f3fa; \r\n	background: -moz-linear-gradient(top,  #e0f3fa 0%, #a6daea 23%, #01A6F5 100%); \r\n	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e0f3fa), color-stop(23%,#a6daea), color-stop(100%,#01A6F5)); \r\n	background: -webkit-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: -o-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: -ms-linear-gradient(top,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	background: linear-gradient(to bottom,  #e0f3fa 0%,#a6daea 23%,#01A6F5 100%); \r\n	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#e0f3fa\', endColorstr=\'#01A6F5\',GradientType=0 ); \r\n*/\r\n}\r\n.nuTabArea {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	position:absolute;\r\n	top:0px;\r\n	left:0px;\r\n	width:1100px;\r\n	height:605px;\r\n	border-style:solid;\r\n	border-width:0px 0px 0px 0px; \r\n	border-color:grey;\r\n	overflow:hidden;\r\n}\r\n.nuLoginBox {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	position:absolute;\r\n	top:0px;\r\n	left:0px;\r\n	width:310px;\r\n	height:300px;\r\n	/* border-style:solid;\r\n	border-width: 1px 1px 1px 1px; \r\n	border-color:grey; */\r\n	overflow:hidden;\r\n	background-color:#EDEDED;\r\n}\r\n.nuSelectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	/* background-color:#EDEDED; */\r\n	background-color: #f0f0f0;\r\n	color: #666666;\r\n	text-align:center;\r\n	vertical-align:top;\r\n	margin-left:auto;\r\n	margin-right:auto;\r\n\r\n}\r\n.nuUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	color: #666666;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuGreenUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #4FFF4F;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuYellowUnselectedTab {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #FFFE28;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); \r\n	cursor: pointer;\r\n}\r\n.nuSearch {\r\n	font-family:\"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	background-color: #abd886;\r\n	padding: 6px 12px;\r\n    margin-bottom: 0;\r\n    font-size: 13px;\r\n    font-weight: normal;\r\n    line-height: 1.42857143;\r\n    text-align: left;\r\n    white-space: nowrap;\r\n    vertical-align: middle;	\r\n	color: #666666;\r\n	border: 1px solid transparent;\r\n}\r\n.nuSelectedTabTitle {\r\n	height:22px;\r\n	-moz-border-top-left-radius:0px;\r\n	-moz-border-top-right-radius:0px;\r\n	border-top-left-radius:0px;\r\n	border-top-right-radius:0px;\r\n	/* border-style:solid;\r\n	border-width:1px 1px 0px 1px; */\r\n	border-color: #01A6F5; \r\n}\r\n.nuButtonSent {\r\n	display: inline-block;\r\n	*display: inline;\r\n	/* IE7 inline-block hack */\r\n	*zoom: 1;\r\n	/* padding: 4px 10px 4px; */\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	line-height: 18px;\r\n	text-align: center;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	color: #202020;\r\n	background-color: #CCCCCC;\r\n	background-image: -moz-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -ms-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#FF4A4A), to(#FD0000));\r\n	background-image: -webkit-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: -o-linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-image: linear-gradient(top, #FF4A4A, #FD0000);\r\n	background-repeat: repeat-x;\r\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#FF4A4A\', endColorstr=\'#FD0000\', GradientType=0);\r\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\r\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n	-webkit-border-radius: 0px;\r\n	-moz-border-radius: 0px;\r\n	border-radius: 0px;\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	cursor: pointer;\r\n	*margin-left: .3em;\r\n}\r\n.nuClose {\r\n	display: inline-block;\r\n	*display: inline;\r\n	/* IE7 inline-block hack */\r\n	*zoom: 1;\r\n	padding: 0px;\r\n	margin-bottom: 0;\r\n	font-size: 13px;\r\n	font-weight: bold;\r\n	line-height: 18px;\r\n	text-align: center;\r\n	text-shadow: 0 2px 2px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n	color: #01A6F5;\r\n	background-color: #B9CACE;\r\n	background-image: -moz-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -ms-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#E7E7E7), to(#B9CACE));\r\n	background-image: -webkit-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: -o-linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-image: linear-gradient(top, #E7E7E7, #B9CACE);\r\n	background-repeat: repeat-x;\r\n	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#E7E7E7\', endColorstr=\'#B9CACE\', GradientType=0);\r\n	border-color: #e7e7e7 #e7e7e7 #bfbfbf;\r\n	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n	-webkit-border-radius: 0px;\r\n	-moz-border-radius: 0px;\r\n	border-radius: 0px;\r\n	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);\r\n	cursor: pointer;\r\n}\r\n.nuClose:hover {\r\n	font-weight: normal;\r\n	color: #202020;\r\n	background-color: #e9f3fa;\r\n	background-image: -moz-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -ms-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#a6daea), to(#01A6F5));\r\n	background-image: -webkit-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: -o-linear-gradient(top, #a6daea, #01A6F5);\r\n	background-image: linear-gradient(top, #a6daea, #01A6F5);\r\n	background-repeat: repeat-x;\r\n	filter: progid:dximagetransform.microsoft.gradient(enabled=false);\r\n	border: 1px solid #A8A8A8;\r\n	border-bottom-color: #999999;\r\n}\r\n.nuSaveMessageProgress {\r\n	font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif;\r\n	width:100px;\r\n	height:22px;\r\n	top:10px;\r\n	left:0px;\r\n	color: #202020;\r\n	position:absolute;\r\n	font-size: 14px;\r\n	line-height: 20px;\r\n	text-align: left;\r\n	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);\r\n	vertical-align: middle;\r\n}\r\n.nuBrowseRowSelected         {background-color: #93C8F9;}\r\n.nuSaveMessage {\r\n	top:10px;\r\n	left:0px;\r\n	position:absolute;\r\n	/*\r\n	width:110px;\r\n	height:20px; \r\n	opacity:0.7\r\n	*/\r\n	display: inline-block;\r\n    padding: 6px 12px;\r\n    margin-bottom: 0;\r\n	font-size: 13px;\r\n	font-weight: normal;\r\n	line-height: 1.42857143;\r\n	text-align: center;\r\n	white-space: nowrap;\r\n	vertical-align: middle;\r\n	cursor: pointer;\r\n	-webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n	background-image: none;\r\n	border: 1px solid transparent;\r\n	border-radius: 0px;\r\n	color: #ffffff;\r\n	background-color: #abd886;\r\n	border-color: #abd886;\r\n}\r\n.nuNotSaved {\r\n  display: inline-block;\r\n  padding: 6px 12px;\r\n  margin-bottom: 0;\r\n  font-size: 13px;\r\n  font-weight: normal;\r\n  line-height: 1.42857143;\r\n  text-align: center;\r\n  white-space: nowrap;\r\n  vertical-align: middle;\r\n  cursor: pointer;\r\n  -webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n  background-image: none;\r\n  border: 1px solid transparent;\r\n  border-radius: 0px;\r\n  color: #ffffff;\r\n  background-color: #ff6969;\r\n  border-color: #ff6969;\r\n}\r\n.nuButton {\r\n  display: inline-block;\r\n  margin-bottom: 0;\r\n  font-size: 13px;\r\n  font-weight: normal;\r\n  line-height: 1.42857143;\r\n  text-align: center;\r\n  white-space: nowrap;\r\n  vertical-align: middle;\r\n  cursor: pointer;\r\n  -webkit-user-select: none;\r\n     -moz-user-select: none;\r\n      -ms-user-select: none;\r\n          user-select: none;\r\n  background-image: none;\r\n  border: 1px solid transparent;\r\n  border-radius: 0px;\r\n  \r\n  color: #ffffff;\r\n  background-color: #5bcaf5;\r\n  border-color: #5bcaf5;\r\n  \r\n}\r\n.nuActionButton {\r\n  padding: 6px 12px;\r\n\r\n}\r\n.nuButton:focus,\r\n.nuButton:active:focus,\r\n.nuButton.active:focus {\r\n  outline: thin dotted;\r\n  outline: 5px auto -webkit-focus-ring-color;\r\n  outline-offset: -2px;\r\n  color: #ffffff;\r\n  background-color: #00adef;\r\n  border-color: #00adef;\r\n}\r\n.nuButton:hover,\r\n.nuButton:focus {\r\n    text-decoration: none;\r\ncolor: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n  \r\n}\r\n.nuButton:active,\r\n.nuButton.active {\r\n  background-image: none;\r\n  outline: 0;\r\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\r\n          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);\r\n		  \r\n  color: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n		  \r\n}\r\n.nuButton.disabled {\r\n  pointer-events: none;\r\n  cursor: not-allowed;\r\n  filter: alpha(opacity=65);\r\n  -webkit-box-shadow: none;\r\n          box-shadow: none;\r\n  opacity: .65;\r\n  \r\ncolor: #ffffff;\r\nbackground-color: #00adef;\r\nborder-color: #00adef;\r\n    \r\n}\r\n</style>','nu%','','','0000-00-00 00:00:00','','2013-09-24 10:21:59','globeadmin','2013-09-24 10:21:59','globeadmin');
/*!40000 ALTER TABLE `zzzsys_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_timezone`
--

DROP TABLE IF EXISTS `zzzsys_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_timezone` (
  `zzzsys_timezone_id` varchar(25) NOT NULL,
  `stz_timezone` mediumtext NOT NULL,
  PRIMARY KEY (`zzzsys_timezone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_timezone`
--

LOCK TABLES `zzzsys_timezone` WRITE;
/*!40000 ALTER TABLE `zzzsys_timezone` DISABLE KEYS */;
INSERT INTO `zzzsys_timezone` VALUES ('5281a1c4af3715e','Pacific/Saipan'),('5281a1c3ae74c55','Pacific/Rarotonga'),('5281a1e6d64f54c','WET'),('5281a1e7d719d77','Zulu'),('5281a1c2adaeefc','Pacific/Port_Moresby'),('5281a1e5d5896c1','W-SU'),('5281a1c1ac7d9a4','Pacific/Ponape'),('5281a1c0abb94a6','Pacific/Pohnpei'),('5281a1bfaaf8959','Pacific/Pitcairn'),('5281a1beaa37ad1','Pacific/Palau'),('5281a1968236672','Jamaica'),('5281a1978349c3b','Japan'),('5281a1958174e03','Israel'),('5281a19480b8eb3','Iran'),('5281a1bda973ea9','Pacific/Pago_Pago'),('5281a18f7335833','Indian/Mahe'),('5281a1937ffce01','Indian/Reunion'),('5281a1927f358dc','Indian/Mayotte'),('5281a1917e7a840','Indian/Mauritius'),('5281a1907dbe28e','Indian/Maldives'),('5281a18d716cac2','Indian/Comoro'),('5281a18b6ef1055','Indian/Christmas'),('5281a18e727f96b','Indian/Kerguelen'),('5281a18c6fa914a','Indian/Cocos'),('5281a18469c9b45','GMT0'),('5281a18a6e38d94','Indian/Chagos'),('5281a1896d7af41','Indian/Antananarivo'),('5281a18167364aa','GMT'),('5281a1876bf5f3f','HST'),('5281a1886cbc018','Iceland'),('5281a18267f39f3','GMT+0'),('5281a1866b3a73f','Hongkong'),('5281a1d2c5cc7f0','ROK'),('5281a180667b0ff','GB-Eire'),('5281a1856a822c1','Greenwich'),('5281a183690a029','GMT-0'),('5281a17e64b04e6','Factory'),('5281a17f6566ce7','GB'),('5281a17d6394bdc','Europe/Zurich'),('5281a17b621c391','Europe/Zagreb'),('5281a17c62d8149','Europe/Zaporozhye'),('5281a17a61653f3','Europe/Warsaw'),('5281a17960a75a5','Europe/Volgograd'),('5281a1785fee51e','Europe/Vilnius'),('5281a1765e7ec77','Europe/Vatican'),('5281a1755dc75a3','Europe/Vaduz'),('5281a1775f33528','Europe/Vienna'),('5281a1725b981dd','Europe/Tirane'),('5281a1745d0c5ff','Europe/Uzhgorod'),('5281a1715ada39c','Europe/Tallinn'),('5281a17059b7e00','Europe/Stockholm'),('5281a1735c520ab','Europe/Tiraspol'),('5281a16b55183d6','Europe/San_Marino'),('5281a16d567a909','Europe/Simferopol'),('5281a16c55c3e49','Europe/Sarajevo'),('5281a16e578c5ca','Europe/Skopje'),('5281a16f58a0561','Europe/Sofia'),('5281a16a546eb1c','Europe/Samara'),('5281a1e4d4c2232','UTC'),('5281a16953c1632','Europe/Rome'),('5281a1675297098','Europe/Prague'),('5281a1c7b7d1d5a','Pacific/Tarawa'),('5281a1c8b88aa9e','Pacific/Tongatapu'),('5281a1c6b0be317','Pacific/Tahiti'),('5281a1e3d3f844f','US/Samoa'),('5281a1e2d332a62','US/Pacific-New'),('5281a1e1d267cf9','US/Pacific'),('5281a1decfb3884','US/Indiana-Starke'),('5281a1e0d1a0e86','US/Mountain'),('5281a1dfd0d95b2','US/Michigan'),('5281a1ddcee9e3c','US/Hawaii'),('5281a1dcce1ad1c','US/Eastern'),('5281a1d5c82280a','UCT'),('5281a1d9cb7bad5','US/Arizona'),('5281a1dacc37651','US/Central'),('5281a1dbccf3617','US/East-Indiana'),('5281a1d8cabf7f1','US/Aleutian'),('5281a1d7c9af2ed','US/Alaska'),('5281a1d6c8ec435','Universal'),('5281a1d3c69078e','Singapore'),('5281a121045accb','Etc/GMT+0'),('5281a119f3e04e9','Cuba'),('5281a11f031f564','EST5EDT'),('5281a11b005e55d','EET'),('5281a11d01970ad','Eire'),('5281a11c00fa005','Egypt'),('5281a11e027c729','EST'),('5281a112e94ed84','Canada/Pacific'),('5281a118f33df3d','CST6CDT'),('5281a115f1557e0','CET'),('5281a116f1f4f2e','Chile/Continental'),('5281a113e9f0daa','Canada/Saskatchewan'),('5281a117f296fd5','Chile/EasterIsland'),('5281a110e80412c','Canada/Mountain'),('5281a111e8ab026','Canada/Newfoundland'),('5281a114f0b9085','Canada/Yukon'),('5281a10fe75f2c4','Canada/Eastern'),('5281a10ee6bf449','Canada/East-Saskatchewan'),('5281a106e10f94a','Australia/West'),('5281a10ae43d03b','Brazil/East'),('5281a10ce57f01e','Canada/Atlantic'),('5281a10be4de708','Brazil/West'),('5281a109e3d5d6e','Brazil/DeNoronha'),('5281a10de622257','Canada/Central'),('5281a107e1b7664','Australia/Yancowinna'),('5281a108e25bc93','Brazil/Acre'),('5281a105e06a9b6','Australia/Victoria'),('5281a103df20a58','Australia/Sydney'),('5281a104dfc5885','Australia/Tasmania'),('5281a100dd385a2','Australia/Perth'),('5281a102de7b7a9','Australia/South'),('5281a0fedbfa7e6','Australia/North'),('5281a0ffdc99118','Australia/NSW'),('5281a101ddd8257','Australia/Queensland'),('5281a0f7d793413','Australia/Darwin'),('5281a0fbda115d9','Australia/Lindeman'),('5281a0fcdab0d34','Australia/Lord_Howe'),('5281a0fad975081','Australia/LHI'),('5281a0fddb58517','Australia/Melbourne'),('5281a0f9d8d96a3','Australia/Hobart'),('5281a0f8d837181','Australia/Eucla'),('5281a0f6d6f2fcb','Australia/Currie'),('5281a0f1d34022d','Australia/ACT'),('5281a0f3d50b948','Australia/Brisbane'),('5281a0f2d414c2c','Australia/Adelaide'),('5281a0f4d5ad53b','Australia/Broken_Hill'),('5281a0f5d6511b5','Australia/Canberra'),('5281a0ebd023d83','Atlantic/Jan_Mayen'),('5281a0efd1f32fb','Atlantic/St_Helena'),('5281a0edd11319e','Atlantic/Reykjavik'),('5281a0f0d28596b','Atlantic/Stanley'),('5281a0e9cee78d7','Atlantic/Faeroe'),('5281a0eacf865b6','Atlantic/Faroe'),('5281a0ecd083a61','Atlantic/Madeira'),('5281a0eed19481b','Atlantic/South_Georgia'),('5281a0e8cdf71cd','Atlantic/Cape_Verde'),('5281a0e7cd08d1f','Atlantic/Canary'),('5281a0e4cb41fb8','Asia/Yerevan'),('5281a0e6cc39d74','Atlantic/Bermuda'),('5281a0e0c8a8864','Asia/Vientiane'),('5281a0e2c9f8bff','Asia/Yakutsk'),('5281a0dec72d2c8','Asia/Urumqi'),('5281a0e5cbd2ab3','Atlantic/Azores'),('5281a0dfc802643','Asia/Ust-Nera'),('5281a0dac410be3','Asia/Tokyo'),('5281a0e3ca96355','Asia/Yekaterinburg'),('5281a0ddc5cffcb','Asia/Ulan_Bator'),('5281a0dbc498d19','Asia/Ujung_Pandang'),('5281a0e1c97ee98','Asia/Vladivostok'),('5281a0dcc5452d8','Asia/Ulaanbaatar'),('5281a0d8b7ca13e','Asia/Thimbu'),('5281a0d4b5675f0','Asia/Tashkent'),('5281a0d0b310ab9','Asia/Seoul'),('5281a0d7b738dfa','Asia/Tel_Aviv'),('5281a0d6b6a9048','Asia/Tehran'),('5281a0d2b43caed','Asia/Singapore'),('5281a0d3b4ce508','Asia/Taipei'),('5281a0d5b6195f2','Asia/Tbilisi'),('5281a0d1b3a71fe','Asia/Shanghai'),('5281a0d9c3af580','Asia/Thimphu'),('5281a0cfb27e770','Asia/Samarkand'),('5281a0cdb14f26f','Asia/Saigon'),('5281a0cbb029a0f','Asia/Rangoon'),('5281a0ceb1e6900','Asia/Sakhalin'),('5281a0c7add4a83','Asia/Pontianak'),('5281a0ccb0b8ed7','Asia/Riyadh'),('5281a0caaf9a3f7','Asia/Qyzylorda'),('5281a0c8ae6fc1d','Asia/Pyongyang'),('5281a0c6ad3a016','Asia/Phnom_Penh'),('5281a0c4a6cfff2','Asia/Omsk'),('5281a0c9af084a7','Asia/Qatar'),('5281a0c3a63e893','Asia/Novosibirsk'),('5281a0c1a513266','Asia/Nicosia'),('5281a0bb9995a61','Asia/Macao'),('5281a0c5ac5370d','Asia/Oral'),('5281a0c0a47b670','Asia/Muscat'),('5281a0bfa3e3403','Asia/Manila'),('5281a0bc9b6658f','Asia/Macau'),('5281a0b984900e1','Asia/Kuching'),('5281a0c2a5a914a','Asia/Novokuznetsk'),('5281a0bea353642','Asia/Makassar'),('5281a0b682d7c6b','Asia/Kolkata'),('5281a0bda2c3f39','Asia/Magadan'),('5281a0b883fc097','Asia/Kuala_Lumpur'),('5281a0b481b3f82','Asia/Katmandu'),('5281a0ba9625309','Asia/Kuwait'),('5281a0b582467de','Asia/Khandyga'),('5281a0b7836a737','Asia/Krasnoyarsk'),('5281a0b2808875b','Asia/Kashgar'),('5281a0b07f60fbd','Asia/Kamchatka'),('5281a0b17ff7b93','Asia/Karachi'),('5281a0b38121eec','Asia/Kathmandu'),('5281a0ae77f9979','Asia/Jerusalem'),('5281a0af7888b2a','Asia/Kabul'),('5281a0ad7762040','Asia/Jayapura'),('5281a0a975249f9','Asia/Hovd'),('5281a0aa75b1122','Asia/Irkutsk'),('5281a0ac76d0bba','Asia/Jakarta'),('5281a0ab763ee82','Asia/Istanbul'),('5281a0a87491a25','Asia/Hong_Kong'),('5281a0a55af5fb5','Asia/Harbin'),('5281a0a6683a809','Asia/Hebron'),('5281a0a768ccd66','Asia/Ho_Chi_Minh'),('5281a0a051ccb15','Asia/Dhaka'),('5281a0a45a5d9dd','Asia/Gaza'),('5281a0a359c69e6','Asia/Dushanbe'),('5281a09e50a0bc7','Asia/Dacca'),('5281a0a25931d48','Asia/Dubai'),('5281a0963f77c2f','Asia/Beirut'),('5281a0a15264929','Asia/Dili'),('5281a09c434d7a2','Asia/Chungking'),('5281a09f5139227','Asia/Damascus'),('5281a09d5004cfc','Asia/Colombo'),('5281a09b42b4a59','Asia/Chongqing'),('5281a0994183708','Asia/Calcutta'),('5281a09740551ac','Asia/Bishkek'),('5281a0953ee5155','Asia/Bangkok'),('5281a0943e4d693','Asia/Baku'),('5281a09a421c122','Asia/Choibalsan'),('5281a08d3a9af97','Asia/Anadyr'),('5281a08c39bfc99','Asia/Amman'),('5281a0933db361c','Asia/Bahrain'),('5281a09840eba22','Asia/Brunei'),('5281a0913cad956','Asia/Ashkhabad'),('5281a08f3b8ffbf','Asia/Aqtobe'),('5281a0923d493e0','Asia/Baghdad'),('5281a0872dca2fd','Antarctica/Syowa'),('5281a0903c1eb18','Asia/Ashgabat'),('5281a0882e5a3db','Antarctica/Vostok'),('5281a08a2f8c58e','Asia/Aden'),('5281a0852cac95d','Antarctica/Rothera'),('5281a08e3afe663','Asia/Aqtau'),('5281a0842c1a6a4','Antarctica/Palmer'),('5281a0862d3c98a','Antarctica/South_Pole'),('5281a08b392c116','Asia/Almaty'),('5281a0892ef8f3e','Arctic/Longyearbyen'),('5281a080261a293','Antarctica/DumontDUrville'),('5281a0832b865db','Antarctica/McMurdo'),('5281a082274083d','Antarctica/Mawson'),('5281a07e24a3926','Antarctica/Casey'),('5281a08126af775','Antarctica/Macquarie'),('5281a07d24138e6','America/Yellowknife'),('5281a07f253cc33','Antarctica/Davis'),('5281a07a2262248','America/Whitehorse'),('5281a07b22f5dc0','America/Winnipeg'),('5281a07921a60bc','America/Virgin'),('5281a07c2387969','America/Yakutat'),('5281a0741d90667','America/Thunder_Bay'),('5281a0782119266','America/Vancouver'),('5281a0771f90738','America/Tortola'),('5281a0701b4895b','America/St_Vincent'),('5281a0751e22f0d','America/Tijuana'),('5281a0721c6d284','America/Tegucigalpa'),('5281a0761efa34f','America/Toronto'),('5281a06f1ab84cc','America/St_Thomas'),('5281a06e19dcad8','America/St_Lucia'),('5281a0731cfe848','America/Thule'),('5281a06d195ad37','America/St_Kitts'),('5281a06816b015a','America/Scoresbysund'),('5281a0691738a17','America/Shiprock'),('5281a0711bdc9cb','America/Swift_Current'),('5281a06b184793e','America/St_Barthelemy'),('5281a06a17c07af','America/Sitka'),('5281a0671001fe9','America/Sao_Paulo'),('5281a0640e7c243','America/Santarem'),('5281a0660f81e90','America/Santo_Domingo'),('5281a06c18cefca','America/St_Johns'),('5281a0650f00b2b','America/Santiago'),('5281a0620d6e73e','America/Rosario'),('5281a0630df269f','America/Santa_Isabel'),('5281a0600c2a582','America/Resolute'),('5281a0610cf1e16','America/Rio_Branco'),('5281a05e0b23bbb','America/Recife'),('5281a05f0ba9fac','America/Regina'),('5281a05c02b2d2e','America/Rainy_River'),('5281a05d0abd421','America/Rankin_Inlet'),('5281a05b02270ec','America/Puerto_Rico'),('5281a05a019da2e','America/Porto_Velho'),('5281a053e771ebf','America/Pangnirtung'),('5281a054e7f5d06','America/Paramaribo'),('5281a056f3e39a9','America/Port-au-Prince'),('5281a058008a8ad','America/Port_of_Spain'),('5281a055e87432b','America/Phoenix'),('5281a052e6eb6b1','America/Panama'),('5281a059011444a','America/Porto_Acre'),('5281a04de4621e6','America/Noronha'),('5281a051e66c226','America/Ojinaga'),('5281a04be29de22','America/Nipigon'),('5281a04ee4e9d8a','America/North_Dakota/Beulah'),('5281a04fe56a837','America/North_Dakota/Center'),('5281a04ce3791ab','America/Nome'),('5281a050e5ec3bf','America/North_Dakota/New_Salem'),('5281a049db6c822','America/Nassau'),('5281a042d7f6261','America/Mexico_City'),('5281a04adbebf83','America/New_York'),('5281a047da6f51b','America/Montreal'),('5281a048daec32f','America/Montserrat'),('5281a046d9eebc9','America/Montevideo'),('5281a045d96f56b','America/Monterrey'),('5281a041d776ec4','America/Metlakatla'),('5281a044d8f40df','America/Moncton'),('5281a040d6e2a6f','America/Merida'),('5281a043d874e50','America/Miquelon'),('5281a03fd6686ad','America/Menominee'),('5281a03ed5eb8a2','America/Mendoza'),('5281a03cd4f8d9d','America/Matamoros'),('5281a03dd56f298','America/Mazatlan'),('5281a03bd4800a8','America/Martinique'),('5281a03ad4029d7','America/Marigot'),('5281a038c9dae4d','America/Managua'),('5281a036c8dfceb','America/Lower_Princes'),('5281a039ca5fd3d','America/Manaus'),('5281a032c6ecabc','America/La_Paz'),('5281a031c67163d','America/Kralendijk'),('5281a034c7e4ccf','America/Los_Angeles'),('5281a02fc57ddcd','America/Kentucky/Monticello'),('5281a033c7667a3','America/Lima'),('5281a035c860612','America/Louisville'),('5281a037c95acd2','America/Maceio'),('5281a030c5f7f87','America/Knox_IN'),('5281a02cc3580ca','America/Jujuy'),('5281a02dc3d9b4a','America/Juneau'),('5281a028b8b5382','America/Indianapolis'),('5281a02ec4b4b08','America/Kentucky/Louisville'),('5281a027b83c7b7','America/Indiana/Winamac'),('5281a02bba2319a','America/Jamaica'),('5281a029b92b8a4','America/Inuvik'),('5281a025b743617','America/Indiana/Vevay'),('5281a023a78a9f8','America/Indiana/Petersburg'),('5281a02ab9a5642','America/Iqaluit'),('5281a024b6c65d2','America/Indiana/Tell_City'),('5281a020a60c1cb','America/Indiana/Indianapolis'),('5281a026b7bd32b','America/Indiana/Vincennes'),('5281a01d9e64a89','America/Halifax'),('5281a022a70ab7e','America/Indiana/Marengo'),('5281a01fa582b0b','America/Hermosillo'),('5281a01e9ee5729','America/Havana'),('5281a01a9ce3844','America/Guatemala'),('5281a0179b64421','America/Grand_Turk'),('5281a0199c6344a','America/Guadeloupe'),('5281a0189be3e29','America/Grenada'),('5281a01c9de431f','America/Guyana'),('5281a021a68ad1b','America/Indiana/Knox'),('5281a01b9d64472','America/Guayaquil'),('5281a0169ae60fb','America/Goose_Bay'),('5281a0159a6738f','America/Godthab'),('5281a013996e3cc','America/Fortaleza'),('5281a01499ee0d7','America/Glace_Bay'),('5281a01097ec36c','America/El_Salvador'),('5281a01298eb04c','America/Fort_Wayne'),('5281a00c95f4f78','America/Detroit'),('5281a011986a4c9','America/Ensenada'),('5281a00f976ef28','America/Eirunepe'),('5281a00e96f1a71','America/Edmonton'),('5281a00b956da59','America/Denver'),('5281a00d9672fc4','America/Dominica'),('5281a00a94e4d56','America/Dawson_Creek'),('5281a00994592a4','America/Dawson'),('5281a00893dac77','America/Danmarkshavn'),('5281a00692d3646','America/Cuiaba'),('5281a00290a5cdf','America/Coral_Harbour'),('5281a00592545ff','America/Creston'),('5281a00491d04fe','America/Costa_Rica'),('5281a007935bea0','America/Curacao'),('5281a0039121eb5','America/Cordoba'),('5281a0008fb91da','America/Chicago'),('5281a001902eacc','America/Chihuahua'),('52819fff8f3deef','America/Cayman'),('52819ffa8c9fd3d','America/Campo_Grande'),('52819ffb8d0e9f3','America/Cancun'),('52819ffe8ebf7a8','America/Cayenne'),('52819ffd8e40c54','America/Catamarca'),('52819ffc8d8294c','America/Caracas'),('52819ff78b49038','America/Boise'),('52819ff88bbf287','America/Buenos_Aires'),('52819ff98c31a7c','America/Cambridge_Bay'),('52819ff489eb768','America/Blanc-Sablon'),('52819ff3897c302','America/Belize'),('52819ff68acf15d','America/Bogota'),('52819ff58a5b604','America/Boa_Vista'),('52819ff18856b00','America/Barbados'),('52819fef7a0e5c7','America/Bahia'),('52819ff087e6620','America/Bahia_Banderas'),('52819ff2890b040','America/Belem'),('52819fee799c9bd','America/Atka'),('52819fec78b6d98','America/Asuncion'),('52819feb783abf9','America/Aruba'),('52819fed7926984','America/Atikokan'),('52819fea77c0dbe','America/Argentina/Ushuaia'),('52819fe876d4888','America/Argentina/San_Luis'),('52819fe7765b813','America/Argentina/San_Juan'),('52819fe5756aca9','America/Argentina/Rio_Gallegos'),('52819fe675e3a45','America/Argentina/Salta'),('52819fe97747d84','America/Argentina/Tucuman'),('52819fe37477a3e','America/Argentina/La_Rioja'),('52819fe474f1b3c','America/Argentina/Mendoza'),('52819fe17352bc1','America/Argentina/Cordoba'),('52819fe274021b6','America/Argentina/Jujuy'),('52819fdd71a44c6','America/Araguaina'),('52819fde7211b94','America/Argentina/Buenos_Aires'),('52819fdb70ca47b','America/Anguilla'),('52819fdc713665a','America/Antigua'),('52819fe072e958b','America/Argentina/ComodRivadavia'),('52819fd96ff36de','America/Adak'),('52819fdf727d3b7','America/Argentina/Catamarca'),('52819fda705d5db','America/Anchorage'),('52819fd46d5db96','Africa/Sao_Tome'),('52819fd86f894da','Africa/Windhoek'),('52819fd66eb1b1d','Africa/Tripoli'),('52819fd76f1d1cf','Africa/Tunis'),('52819fcf6025798','Africa/Ndjamena'),('52819fd56e465c5','Africa/Timbuktu'),('52819fce5fbef7c','Africa/Nairobi'),('52819fd36cef7d3','Africa/Porto-Novo'),('52819fd160f38e7','Africa/Nouakchott'),('52819fd0608eabc','Africa/Niamey'),('52819fcb5e82cb2','Africa/Mbabane'),('52819fd26198388','Africa/Ouagadougou'),('52819fcc5eebbe0','Africa/Mogadishu'),('52819fca5e1862c','Africa/Maseru'),('52819fcd5f56d2d','Africa/Monrovia'),('52819fc85b5ca8c','Africa/Malabo'),('52819fc95bd505d','Africa/Maputo'),('52819fc2584bf74','Africa/Lagos     '),('52819fc559d1824','Africa/Luanda'),('52819fc75ae5c44','Africa/Lusaka'),('52819fc358f7f66','Africa/Libreville'),('52819fc156a0bb9','Africa/Kinshasa'),('52819fc65a72a20','Africa/Lubumbashi'),('52819fc055a94f7','Africa/Kigali'),('52819fbf550c406','Africa/Khartoum'),('52819fc45965c0d','Africa/Lome'),('52819fbe54a483a','Africa/Kampala'),('52819fbd543bb3d','Africa/Juba'),('52819fb9527a466','Africa/Freetown'),('52819fba52e8bfe','Africa/Gaborone'),('52819fbc53cc7cb','Africa/Johannesburg'),('52819fbb535a8db','Africa/Harare'),('52819fb4505727a','Africa/Dakar'),('52819fb34feb2b9','Africa/Conakry'),('52819fb550bf3bd','Africa/Dar_es_Salaam'),('52819fb8520ef05','Africa/El_Aaiun'),('52819fb6512b354','Africa/Djibouti'),('52819fb7519de97','Africa/Douala'),('52819fb04ea2165','Africa/Cairo'),('52819fb14f0c347','Africa/Casablanca'),('52819fad4d6d2ab','Africa/Blantyre'),('52819fb24f7a1a9','Africa/Ceuta'),('52819fae4dd596d','Africa/Brazzaville'),('52819faf4e3ea69','Africa/Bujumbura'),('52819fab4c9ff3f','Africa/Banjul'),('52819fa94bc9a93','Africa/Bamako'),('52819fac4d0b2f3','Africa/Bissau'),('52819fa84b5bed6','Africa/Asmera'),('52819faa4c334ed','Africa/Bangui'),('52819fa54a1c5c4','Africa/Addis_Ababa'),('52819fa44106fdd','Africa/Accra'),('5281a14328d7e27','Europe/Amsterdam'),('52819fa74aef179','Africa/Asmara'),('52819fa64a81c45','Africa/Algiers'),('52819fa3409d46f','Africa/Abidjan'),('5281a144293e781','Europe/Andorra'),('5281a1462a2183d','Europe/Belfast'),('5281a14529a6597','Europe/Athens'),('5281a1472b27ab5','Europe/Belgrade'),('5281a14d2ef47a3','Europe/Busingen'),('5281a1482b95f9d','Europe/Berlin'),('5281a14b2de356d','Europe/Bucharest'),('5281a14c2e8003e','Europe/Budapest'),('5281a14a2d40451','Europe/Brussels'),('5281a1492c3f8d0','Europe/Bratislava'),('5281a15030f2b55','Europe/Dublin'),('5281a1513ce8a90','Europe/Gibraltar'),('5281a14f3048453','Europe/Copenhagen'),('5281a14e2f9d4cf','Europe/Chisinau'),('5281a1523d9455c','Europe/Guernsey'),('5281a1543ee5f5a','Europe/Isle_of_Man'),('5281a15640623f7','Europe/Jersey'),('5281a1553fb3f61','Europe/Istanbul'),('5281a1533e3ecc9','Europe/Helsinki'),('5281a1574109a27','Europe/Kaliningrad'),('5281a15b443824d','Europe/London'),('5281a158421be40','Europe/Kiev'),('5281a15a4387b4d','Europe/Ljubljana'),('5281a15942d2df1','Europe/Lisbon'),('5281a15c44ee825','Europe/Luxembourg'),('5281a15d459a699','Europe/Madrid'),('5281a15f4756ead','Europe/Mariehamn'),('5281a16148b02d8','Europe/Monaco'),('5281a15e46aa01e','Europe/Malta'),('5281a162495ae00','Europe/Moscow'),('5281a1634a06938','Europe/Nicosia'),('5281a16048033d3','Europe/Minsk'),('5281a1654b607a0','Europe/Paris'),('5281a1664c0a464','Europe/Podgorica'),('5281a168534cbef','Europe/Riga'),('5281a12003bd2d8','Etc/GMT'),('5281a1644ab2537','Europe/Oslo'),('5281a12406b3d0a','Etc/GMT+11'),('5281a125075e837','Etc/GMT+12'),('5281a1220508372','Etc/GMT+1'),('5281a1290a6ffbc','Etc/GMT+5'),('5281a12305b7170','Etc/GMT+10'),('5281a12a0b21a7c','Etc/GMT+6'),('5281a12e0dd3691','Etc/GMT-0'),('5281a126080e0f2','Etc/GMT+2'),('5281a12c0c747f2','Etc/GMT+8'),('5281a12708c2a64','Etc/GMT+3'),('5281a12b0bcc422','Etc/GMT+7'),('5281a128097255f','Etc/GMT+4'),('5281a131165c9a8','Etc/GMT-11'),('5281a12f14f8806','Etc/GMT-1'),('5281a12d0d21e28','Etc/GMT+9'),('5281a13015ad04a','Etc/GMT-10'),('5281a1341865467','Etc/GMT-14'),('5281a1391bd512c','Etc/GMT-6'),('5281a132170a862','Etc/GMT-12'),('5281a13619c9d77','Etc/GMT-3'),('5281a13b1dde432','Etc/GMT-8'),('5281a13317ba384','Etc/GMT-13'),('5281a1381b291ad','Etc/GMT-5'),('5281a1351915ab2','Etc/GMT-2'),('5281a13c1e901f3','Etc/GMT-9'),('5281a13a1cdc706','Etc/GMT-7'),('5281a1371a7a768','Etc/GMT-4'),('5281a13d1f4118d','Etc/GMT0'),('5281a13e1fecf31','Etc/Greenwich'),('5281a14021ecc1a','Etc/Universal'),('5281a1422870f52','Etc/Zulu'),('5281a13f20ea1f3','Etc/UCT'),('5281a141276c8dd','Etc/UTC'),('5281a19884666fe','Kwajalein'),('5281a19985161dc','Libya'),('5281a19a85d936f','MET'),('5281a19b869ac55','Mexico/BajaNorte'),('5281a19c8755b50','Mexico/BajaSur'),('5281a19d8805651','Mexico/General'),('5281a19e88c6791','MST'),('5281a1a08b568c9','Navajo'),('5281a1a48edbfe0','Pacific/Auckland'),('5281a1a28cc076a','NZ-CHAT'),('5281a19f8a9df7c','MST7MDT'),('5281a1a38db68d2','Pacific/Apia'),('5281a1a58f97f6b','Pacific/Chatham'),('5281a1a690adea0','Pacific/Chuuk'),('5281a1a18c10637','NZ'),('5281a1a992be08a','Pacific/Enderbury'),('5281a1a89202f8f','Pacific/Efate'),('5281a1aa9376832','Pacific/Fakaofo'),('5281a1ab969470b','Pacific/Fiji'),('5281a1a7914900c','Pacific/Easter'),('5281a1ac9755655','Pacific/Funafuti'),('5281a1af9991f3e','Pacific/Guadalcanal'),('5281a1ad9816446','Pacific/Galapagos'),('5281a1b09a4fddd','Pacific/Guam'),('5281a1b29faa3dd','Pacific/Johnston'),('5281a1ae98d3fae','Pacific/Gambier'),('5281a1b19b0cfd2','Pacific/Honolulu'),('5281a1b3a0d3019','Pacific/Kiritimati'),('5281a1b4a18cdc0','Pacific/Kosrae'),('5281a1b5a2a9fe4','Pacific/Kwajalein'),('5281a1b6a366199','Pacific/Majuro'),('5281a1b7a41e352','Pacific/Marquesas'),('5281a1baa7229e2','Pacific/Niue'),('5281a1b8a543c50','Pacific/Midway'),('5281a1bba7e9f84','Pacific/Norfolk'),('5281a1bca8aff1f','Pacific/Noumea'),('5281a1b9a65d08d','Pacific/Nauru'),('5281a1cec2b8c7b','Portugal'),('5281a1c9b9b4eb9','Pacific/Truk'),('5281a1cbbb03788','Pacific/Wallis'),('5281a1ccc0a2ed7','Pacific/Yap'),('5281a1caba3a73f','Pacific/Wake'),('5281a1cfc380ffd','PRC'),('5281a1cdc1ce40f','Poland'),('5281a1d4c757c4b','Turkey'),('5281a1d0c44a02a','PST8PDT'),('5281a1c5aff8b7a','Pacific/Samoa'),('5281a1d1c5090a1','ROC');
/*!40000 ALTER TABLE `zzzsys_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_translate`
--

DROP TABLE IF EXISTS `zzzsys_translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_translate` (
  `zzzsys_translate_id` varchar(25) NOT NULL DEFAULT '',
  `trl_language` varchar(20) NOT NULL,
  `trl_english` varchar(300) NOT NULL,
  `trl_translation` varchar(300) NOT NULL,
  `zzzsys_translate_log_added_at` datetime NOT NULL,
  `zzzsys_translate_log_added_by` varchar(25) NOT NULL,
  `zzzsys_translate_log_changed_at` datetime NOT NULL,
  `zzzsys_translate_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_translate_log_viewed_at` datetime NOT NULL,
  `zzzsys_translate_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_translate_id`),
  KEY `trl_language` (`trl_language`),
  KEY `trl_english` (`trl_english`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_translate`
--

LOCK TABLES `zzzsys_translate` WRITE;
/*!40000 ALTER TABLE `zzzsys_translate` DISABLE KEYS */;
INSERT INTO `zzzsys_translate` VALUES ('536f20cd04806','fr','Clone','Dupliquer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118d8ed96a2','spanish','Filetype','Tipo de fichero','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c010f','lang','Please input a filename','Please input a filename','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00a1','it','Close','Chiudi','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15029941c9cc41','it','you have been logged out','Sei stato disconnesso...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c0107','lang','Please input valid email address(es) to send to','Please input valid email address(es) to send to','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00f3','lang','To','To','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00eb','it','From','Da','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00ab','lang','Save','Save','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00d2','it','The Email Is Sending','Invio Email in corso...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00c4','lang','You are here','You are here','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00bf','it','Page','Pagina','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c011d','it','Delete','Elimina','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c0101','it','Ok','Ok','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c0101','lang','Ok','Ok','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00e8','lang','ReplyTo','Reply To','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c0104','lang','Please input an email address to send to','Please input an email address to send to','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00cc','lang','Send Email','Send Email','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00bc','it','Logout','Esci','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00c1','lang','Search','Search','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd047c4','fr','Add Record','Ajouter enregistrement','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00c9','lang','Error!','Error','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00d2','lang','The Email Is Sending','The Email Is Sending','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00d8','lang','Send Read Receipt','Send Read Receipt','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c0112','lang','No','No','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00c7','lang','Cancel','Cancel','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15029972f2bac7','it','You do not have access','Non sei autorizzato ad accedere...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00f9','lang','Yes','Yes','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118c4b6e9a5','spanish','Are You Sure?','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c011d','lang','Delete','Delete','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('5224182a7c09135','spanish','Home','INICIO','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00e0','lang','Attached Report','Attached Report','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118dcdc286c','spanish','Logout','Cerrar SesiÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00d8','it','Send Read Receipt','Inviare confema di lettura','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c010d','it','Please input a valid email address to send from','Inserire un valido indirizzo email mittente','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c010a','it','Please input an email address to send from','Inserire indirizzo email mittente','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430cf','gr','Email Successfully Sent','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00f9','it','Yes','Si','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c0104','it','Please input an email address to send to','Inserire indirizzo email destinatario','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04908','fr','You are here..','Vous ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04989','fr','Error!','ErreurÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00c7','it','Cancel','Cancella','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00e6','lang','Subject','Subject','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118cd14c455','spanish','Clone','Duplicar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00f3','it','To','A','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00e3','lang','Message','Message','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd0471f','fr','Are You Sure?','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00ab','it','Save','Salva','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00ff','it','SMTP Email Information Not Setup','Informazioni Email SMTP non configurate','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00b3','lang','Clone','Clone','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00a5','it','Are You Sure?','Confermi?','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c010f','it','Please input a filename','Inserire il nome di un file','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118d9f9c612','spanish','From','Desde','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c0112','it','No','No','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c0107','it','Please input valid email address(es) to send to','Inserire un indirizzo email destinatario valido','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00bc','lang','Logout','Logout','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be543101','gr','Ok','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be54310d','gr','Please input a valid email address to send from','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('522413ca87a3d62','spanish','Powered By','DiseÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04a89','fr','Please Wait...','Veuillez patienter...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00dd','it','Filetype','Filetype','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00c9','it','Error!','Errore!','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00b0','it','Add Record','Nuovo','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00a1','lang','Close','Close','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00b0','lang','Add Record','Add Record','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00a5','lang','Are You Sure?','Are You Sure?','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118caf98909','spanish','Attached Report','Informe Adjunto','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd046c0','fr','Close','Fermer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('522418171c52f33','gr','Home','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00fb','it','Please see your<BR>System Administrator','Contatta il tuo amministratore di sistema','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00d5','it','Please Wait...','Attendere prego...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00d5','lang','Please Wait...','Please Wait','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430e6','gr','Subject','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430d8','gr','Send Read Receipt','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430eb','gr','From','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118cfb29f04','spanish','Delete','Borrar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00f6','lang','HOME','HOME','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118de898909','spanish','No','No','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430ff','gr','SMTP Email Information Not Setup','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00da','lang','Report ID','Report ID','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430e0','gr','Attached Report','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be54310a','gr','Please input an email address to send from','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00c4','it','You are here','Ti trovi qui','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00e0','it','Attached Report','Report allegato','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('2c38dec47','ro','Close','Inchide','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2c9c823c7','ro','Print','Afisare','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d680f006','ro','You are here','Esti aici','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430bf','gr','Page','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00e6','it','Subject','Soggetto','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150299ff3507ed','it','No Such Report','Report inesistente...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00a8','lang','Print','Print','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00fb','lang','Please see your<BR>System Administrator','Please see your System Administrator','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00dd','lang','Filetype','Filetype','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00e3','it','Message','Messaggio','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00da','it','Report ID','Report ID','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430d2','gr','The Email Is Sending','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00e8','it','ReplyTo','Rispondi','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c010a','lang','Please input an email address to send from','Please input an email address to send from','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00cf','lang','Email Successfully Sent','Email Successfully Sent','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00cc','it','Send Email','Invia Email','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('52241927d04f1f0','Spanish','New Record','Nuevo Registro','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be54311d','gr','Delete','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011945e3651f','spanish','Please input valid email address(es) to send to','Introduce la(s) direccione(s) valida(s) de destino(s) del correo','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be54310f','gr','Please input a filename','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430f3','gr','To','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430f9','gr','Yes','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430cc','gr','Send Email','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror35789835d','ro','Attached Report','Ataseaza raport','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed04058e2','NDL','Ok','OK','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00b3','it','Clone','Duplica','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00ff','lang','SMTP Email Information Not Setup','SMTP Email Information Not Setup','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00a8','it','Print','Stampa','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00f6','it','HOME','HOME','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00bf','lang','Page','Page','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00c1','it','Search','Cerca','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be543107','gr','Please input valid email address(es) to send to','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430e8','gr','ReplyTo','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c010d','lang','Please input a valid email address to send from','Please input a valid email address to send from','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be543112','gr','No','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242bz8c00cf','it','Email Successfully Sent','Email inviata correttamente','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be8c00eb','lang','From','From','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430c9','gr','Error!','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2ece56c7a','ro','Send Email','Trimite Email','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec12169bf','NDL','Send Email','E-mail verzenden','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118fb84874c','spanish','Search','Buscar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror35db51a6e','ro','From','De la','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('1501190c753e67','spanish','You are here','Estas aquÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€š','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror38afacb7d','ro','Please input a filename','Va rugam sa introduceti un nume de fisier','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011905990ef7','spanish','Subject','Asunto','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430d5','gr','Please Wait...','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118fcf4874c','spanish','Send Email','Enviar Email','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011908081ad3','spanish','The Email Is Sending','El correo se esta enviando','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecbb9a6cd','NDL','To','Aan','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be543104','gr','Please input an email address to send to','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430c7','gr','Cancel','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118fa253e67','spanish','Save','Guardar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror359b9e11d','ro','Message','Mesaj','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2f09abfc2','ro','Email Successfully Sent','Email-ul a fost trimis cu succes!','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430f6','gr','HOME','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430dd','gr','Filetype','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecea976b8','NDL','Please see your<BR>System Administrator','Contacteer uw systeembeheerder','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430c4','gr','You are here','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430c1','gr','Search','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd055be','fr','Your username or password was incorrect','Utilisateur ou mot de passe incorrect','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430da','gr','Report ID','ID ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04e68','fr','Please input valid email address(es) to send to','Indiquez une(des) adresse(s) valide(s) de destination','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430a8','gr','Print','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec71c67ac','NDL','Attached Report','Ingesloten rapport','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d30b5819','ro','Page','Pagina','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05644','fr','Doing this will return you to the login screen.','Faire cela vous ramÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec7f13c9e','NDL','Message','Bericht','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec4a2c82a','NDL','Send Read Receipt','Leesbevestiging verzenden','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed5403ce0','NDL','Please input a filename','Gelieve een bestandsnaam in te geven.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecdb17312','NDL','Yes','Ja','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2c61c4e30','ro','Are You Sure?','Esti sigur?','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec9be7a6c','NDL','From','Van','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430ab','gr','Save','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec03dcf60','NDL','Error!','Fout!','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhee30c1425','NDL','ReplyTo','Antwoorden aan','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec8c0701c','NDL','Subject','Onderwerp','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed23d7e33','NDL','Please input valid email address(es) to send to','Gelieve een geldig mailadres van de geadresseerde in te vullen.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror36062dc37','ro','To','Catre','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror3832ac3ac','ro','Please input an email address to send to','Va rugam introduceti o adresa de email pentru a trimite catre','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430b3','gr','Clone','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430b0','gr','Add Record','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','2013-09-24 09:22:01','globeadmin'),('roror35c733ddf','ro','ReplyTo','Raspunde la','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2e691902f','ro','Error!','Eroare!','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror35b264f0c','ro','Subject','Subiect','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2cea74133','ro','Add Record','Adauga','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2cd09a688','ro','Delete','Sterge','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2cb8aac3e','ro','Save','Salvare','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011909ecdf87','spanish','Yes','Si','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430fb','gr','Please see your System Administrator','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecd0110c4','NDL','HOME','HOME','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011909339328','spanish','To','a','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed12a97b8','NDL','Please input an email address to send to','Gelieve een mailadres van de geadresseerde in te vullen.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04c27','fr','ReplyTo','RÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror390b27a91','ro','Users','Utilizatori','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror38c7db97d','ro','Language','Limba','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011904931916','spanish','SMTP Email Information Not Setup','No esta configurado el SMTP del correo','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d4e56895','ro','Search','Cautare','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04da7','fr','SMTP Email Information Not Setup','Serveur SMTP non configurÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror3810d5bbd','ro','Ok','Acceptare','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecb1737ee','NDL','No','Nee','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheb02c5ca7','NDL','Delete','Verwijder','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror387abd904','ro','Please input an email address to send from','Va rugam introduceti o adresa de email pentru a trimite de la','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd054b4','fr','with a value of','qui a une valeur de','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheb8aef6f7','NDL','Add Record','Item toevoegen','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd051e6','fr','Desktop','Bureau','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec616a61f','NDL','Filetype','Bestandstype','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec3a828b6','NDL','Please Wait...','Wachten aub ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec55ae5bb','NDL','Report ID','Rapport ID','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror35efca806','ro','No','Nu','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430bc','gr','Logout','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118ed66ac9c','spanish','Please input an email address to send from','Introduce la direcciÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror3755d82cd','ro','Please see your<BR>System Administrator','Contacteaza<BR>Administratorul de Sistem','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430e3','gr','Message','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror363d96034','ro','HOME','Home','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror3559d8a9b','ro','Filetype','Tip de fisier','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d847607a','ro','Cancel','Anulare','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04c67','fr','From','De','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror389590a47','ro','Please input a valid email address to send from','Va rugam sa introduceti o adresa valida de email pentru a trimite de la','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd053aa','fr','has an invalid date','a une date invalide','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05472','fr','There is already a record with a','Il y a dÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430a5','gr','Are You Sure?','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror3922c0fb3','ro','Report','Raport','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhecf8e3585','NDL','SMTP Email Information Not Setup','De SMTP e-mail instellingen zijn niet ingegeven.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheaf52807c','NDL','Are You Sure?','Ben je zeker','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04d67','fr','Please see your<BR>System Administrator','Veuillez contacter votre <BR>Administrateur SystÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec2256b7e','NDL','Email Successfully Sent','E-mail succesvol verzonden','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118f60ec7cf','spanish','Print','Imprimir','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118fef130ce','spanish','Send Read Receipt','Enviar Acuse Lectura','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d1b0868f','ro','Logout','Iesire','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror353c1a7a3','ro','Report ID','Raport ID','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror38f3eb377','ro','Access Level','Nivel de Acces','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150242be5430a1','gr','Close','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2d03da20c','ro','Clone','Cloneaza','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04ca7','fr','To','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('15011940ccee87','spanish','Please input an email address to send to','Introduce la direcciÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118e43a7d2c','spanish','Please input a filename','Introduce el nombrel del Fichero','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04be7','fr','Subject','Sujet','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheb9d2ed63','NDL','Clone','Kopieer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheb79d9c9d','NDL','Save','Bewaar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05158','fr','Record Saved','Enregistrement SauvÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2f2084ade','ro','Please Wait...','Va rugam asteptati.....','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04e28','fr','Please input an email address to send to','Indiquez une adresse de destination','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror369065eae','ro','Yes','Da','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror2f5d77bd1','ro','Send Read Receipt','Trimite confirmare de citire','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd0525b','fr','Translation','Traduction','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05539','fr','Username :','Utilisateur :','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhebd7f4111','NDL','You are here','Jij bent hier','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhebc92237d','NDL','Search','Zoeken','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05198','fr','nuBuilder Objects','Objets nuBuilder','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04de8','fr','Ok','Ok','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheb55896f8','NDL','Print','Print','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd054f7','fr','has an invalid number','a un nombre invalide','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04742','fr','Print','Imprimer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhec2e61b38','NDL','The Email Is Sending','E-mail aan het verzenden','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror377e6b885','ro','SMTP Email Information Not Setup','SMTP Informatii Email (fara setare)','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhebafa8a1c','NDL','Logout','Uitloggen','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05118','fr','Language','Langue','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04f56','fr','No','Non','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd0557c','fr','Password :','Mot de passe :','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror38dce0f69','ro','Translation','Traducere','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhheae52fdf9','NDL','Close','Sluiten','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed34e639b','NDL','Please input an email address to send from','Gelieve een mailadres van de afzender in te vullen.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04ce7','fr','Home','Racine','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd052a1','fr','New Record','Nouvel Enregistrement','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('roror385e9f0b9','ro','Please input valid email address(es) to send to','Introduceti adresa /adresele valide de email pentru a trimite catre','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhed45a72b7','NDL','Please input a valid email address to send from','Gelieve een geldig mailadres van de afzender in te vullen.','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04783','fr','Save','Sauver','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd048c8','fr','Search','Chercher','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04aca','fr','Send Read Receipt','Envoyer accusÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05601','fr','Leave This Form Without Saving?','Quitter ce formulaire sans sauver ?','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04846','fr','Logout','DÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118f4f29f04','spanish','Please Wait...','Por favor espere ...','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04ba7','fr','Message','Message','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhebf3e645a','NDL','Cancel','Annuleer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd0542f','fr','on row','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118de11e7ea','spanish','Message','Mensaje','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04b0a','fr','Report ID','ID Rapport','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04b27','fr','Filetype','Type de fichier','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118db640d3a','spanish','HOME','INICIO','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd049c9','fr','Send Email','Envoyer courriel','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd050d7','fr','Powered By','PropulsÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04ee8','fr','Please input a valid email address to send from','Indiquez une adresse d\'envoi valide','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118d56aba36','spanish','Email Successfully Sent','Correo enviado correctamente','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05363','fr','TAB','Onglet','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('hhhhhebbb43186','NDL','Page','Pagina','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04d27','fr','Yes','Oui','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118c97726af','spanish','Cancel','Cancelar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118c271e7e9','spanish','Add Record','AÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05057','fr','Report has Expired','Le rapport a expirÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04887','fr','Page','Page','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118e0cec7cf','spanish','Ok','OK','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150299f3d1c36f','it','Report has Expired','Il report ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118d71e8ac6','spanish','Error!','ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04f14','fr','Please input a filename','Indiquez un nom de fichier','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118f37ca27e','spanish','Please see your<BR>System Administrator','Ponte en contacto <BR>con el Administrador del Sistema','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04fd7','fr','you have been logged out','Vous ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05017','fr','You do not have access','Vous n\'avez pas accÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118f8f66f94','spanish','Report ID','ID del Informe','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04f97','fr','Delete','Effacer','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd053ed','fr','in subform','dans le sous-formulaire','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04ea8','fr','Please input an email address to send from','Indiquez une adresse d\'envoi','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118e90894e5','spanish','Please input a valid email address to send from','Introduce una direcciÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd05097','fr','No Such Report','Rapport inexistant','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118ce7a4024','spanish','Close','Cerrar','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd052e6','fr','cannot be left blank','ne doit pas ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118e1d16dd7','spanish','Page','PÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04a09','fr','Email Successfully Sent','Courriel envoyÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04a49','fr','The Email Is Sending','Le courriel est en cours d\'envoi','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04b67','fr','Attached Report','Rapport attachÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('536f20cd04948','fr','Cancel','Annuler','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00',''),('150118f77f41e1','spanish','ReplyTo','Respoder a ','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `zzzsys_translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_user`
--

DROP TABLE IF EXISTS `zzzsys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_user` (
  `zzzsys_user_id` varchar(25) NOT NULL DEFAULT '',
  `sus_zzzsys_user_group_id` varchar(25) DEFAULT NULL,
  `sus_name` varchar(50) DEFAULT NULL,
  `sus_email` varchar(255) DEFAULT NULL,
  `sus_login_name` varchar(20) DEFAULT NULL,
  `sus_login_password` varchar(40) DEFAULT NULL,
  `zzzsys_user_log_added_at` datetime NOT NULL,
  `zzzsys_user_log_added_by` varchar(25) NOT NULL,
  `zzzsys_user_log_changed_at` datetime NOT NULL,
  `zzzsys_user_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_user_log_viewed_at` datetime NOT NULL,
  `zzzsys_user_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_user_id`),
  KEY `sus_zzzsys_user_group_id` (`sus_zzzsys_user_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_user`
--

LOCK TABLES `zzzsys_user` WRITE;
/*!40000 ALTER TABLE `zzzsys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_user_group`
--

DROP TABLE IF EXISTS `zzzsys_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_user_group` (
  `zzzsys_user_group_id` varchar(25) NOT NULL DEFAULT '',
  `sug_code` varchar(50) DEFAULT NULL,
  `sug_description` varchar(255) DEFAULT NULL,
  `sug_zzzsys_access_level_id` varchar(25) DEFAULT NULL,
  `zzzsys_user_group_log_added_at` datetime NOT NULL,
  `zzzsys_user_group_log_added_by` varchar(25) NOT NULL,
  `zzzsys_user_group_log_changed_at` datetime NOT NULL,
  `zzzsys_user_group_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_user_group_log_viewed_at` datetime NOT NULL,
  `zzzsys_user_group_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_user_group_id`),
  KEY `sug_zzzsys_access_level_id` (`sug_zzzsys_access_level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_user_group`
--

LOCK TABLES `zzzsys_user_group` WRITE;
/*!40000 ALTER TABLE `zzzsys_user_group` DISABLE KEYS */;
INSERT INTO `zzzsys_user_group` VALUES ('nufastformgroup','FF','Fast Form Group','nufastformlevel','0000-00-00 00:00:00','','0000-00-00 00:00:00','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `zzzsys_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzsys_user_log`
--

DROP TABLE IF EXISTS `zzzsys_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzsys_user_log` (
  `zzzsys_user_log_id` varchar(25) NOT NULL DEFAULT '',
  `sul_zzzsys_user_id` varchar(25) DEFAULT NULL,
  `sul_ip` varchar(25) DEFAULT NULL,
  `sul_start` datetime DEFAULT NULL,
  `sul_end` datetime DEFAULT NULL,
  `zzzsys_user_log_log_added_at` datetime NOT NULL,
  `zzzsys_user_log_log_added_by` varchar(25) NOT NULL,
  `zzzsys_user_log_log_changed_at` datetime NOT NULL,
  `zzzsys_user_log_log_changed_by` varchar(25) NOT NULL,
  `zzzsys_user_log_log_viewed_at` datetime NOT NULL,
  `zzzsys_user_log_log_viewed_by` varchar(25) NOT NULL,
  PRIMARY KEY (`zzzsys_user_log_id`),
  KEY `sul_zzzsys_user_id` (`sul_zzzsys_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzsys_user_log`
--

LOCK TABLES `zzzsys_user_log` WRITE;
/*!40000 ALTER TABLE `zzzsys_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzsys_user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-15 11:18:38
