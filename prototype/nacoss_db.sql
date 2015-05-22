-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2015 at 12:27 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nacoss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(15) NOT NULL COMMENT 'For class_reps, this username should match their regno on users table',
  `password` varchar(255) NOT NULL,
  `type` enum('WEBMASTER','PRO','LIBRARIAN','CLASS_REP','TREASURER') NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `type`, `email`) VALUES
('1234/123456', '$2y$10$JRjBJLF1Td6e9xWVttk9juRXK7UOdIrAyF7buxloPei/8.06/GccC', 'CLASS_REP', 'example@domain.com'),
('2011/111222', '$2y$10$CkYXw5Y6.mR0GSDJCq/k..c608PGInY4YAcgNFbbBzQKq3wjk2asW', 'CLASS_REP', 'eanthony@yahoo.com'),
('2011/177392', '$2y$12$AgRzcU3Nn1QQKc4t8eZtH./4K32JNPD1CJAdM4zr79TzN67PzMoeC', 'CLASS_REP', 'anuebunwa.victor@gmail.com'),
('libraryadmin', '$2y$10$YyJfgW.y1Jrt3zyWJPFGTuKk9at.e/jLqK8n1VRELdyBJoPi3RDj6', 'LIBRARIAN', 'example@domain.com'),
('newsadmin', '$2y$10$YyJfgW.y1Jrt3zyWJPFGTuKk9at.e/jLqK8n1VRELdyBJoPi3RDj6', 'PRO', 'example@domain.com'),
('treasurer', '$2y$10$YyJfgW.y1Jrt3zyWJPFGTuKk9at.e/jLqK8n1VRELdyBJoPi3RDj6', 'TREASURER', 'example@domain.com'),
('webadmin', '$2y$12$Mp4VGDhyrnNeACZpo7PlEOmSMQo2QeNxIC860zXjI7qGFnG7ZLIne', 'WEBMASTER', 'example@domain.com');

-- --------------------------------------------------------

--
-- Table structure for table `board_members`
--

CREATE TABLE IF NOT EXISTS `board_members` (
`id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `other_names` varchar(30) NOT NULL,
  `post` varchar(60) NOT NULL,
  `session` varchar(9) NOT NULL,
  `email` text NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `user_id` varchar(11) NOT NULL COMMENT 'regno in users table'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `error_log`
--

CREATE TABLE IF NOT EXISTS `error_log` (
`id` int(11) NOT NULL,
  `time_of_error` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `trace` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `line` int(4) NOT NULL,
  `is_fixed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `error_log`
--

INSERT INTO `error_log` (`id`, `time_of_error`, `message`, `trace`, `file`, `line`, `is_fixed`) VALUES
(105, '2015-05-14 18:42:36', 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \\''1234/123456\\''\\''\\'' at line 1', '#0 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\WebsiteAdmin.php(113): AdminUtility::logMySQLError(Object(mysqli))\\n#1 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\classreps.php(43): WebsiteAdmin->updateClassRepSMSbalance(\\''\\''1234/123456\\''\\'', \\''19\\'')\\n#2 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\index.php(195): include_once(\\''C:\\\\\\\\xampp\\\\\\\\htdocs...\\'')\\n#3 {main}', 'C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\AdminUtility.php', 158, 0),
(106, '2015-05-14 18:45:03', 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \\''1234/123456\\''\\''\\'' at line 1', '#0 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\WebsiteAdmin.php(113): AdminUtility::logMySQLError(Object(mysqli))\\n#1 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\classreps.php(44): WebsiteAdmin->updateClassRepSMSbalance(\\''\\''1234/123456\\''\\'', \\''19\\'')\\n#2 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\webmaster\\\\index.php(195): include_once(\\''C:\\\\\\\\xampp\\\\\\\\htdocs...\\'')\\n#3 {main}', 'C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\AdminUtility.php', 158, 0),
(107, '2015-05-15 21:15:04', 'Column count doesn\\''t match value count at row 1', '#0 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\class_rep\\\\StudentAdmin.php(97): AdminUtility::logMySQLError(Object(mysqli))\\n#1 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\class_rep\\\\_messenger_contacts_all.php(38): StudentAdmin->createGroup(\\''Girls\\'', Array)\\n#2 C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\class_rep\\\\index.php(153): require_once(\\''C:\\\\\\\\xampp\\\\\\\\htdocs...\\'')\\n#3 {main}', 'C:\\\\xampp\\\\htdocs\\\\www\\\\website-nacoss-unn\\\\cpanel\\\\AdminUtility.php', 158, 0);

-- --------------------------------------------------------

--
-- Table structure for table `error_reports`
--

CREATE TABLE IF NOT EXISTS `error_reports` (
`id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `time_of_report` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `error_reports`
--

INSERT INTO `error_reports` (`id`, `user_id`, `subject`, `comment`, `time_of_report`, `seen`) VALUES
(1, '1234/123456', 'Report to prove if reporting bugs really works', 'I just reported a BUG!!!!', '2015-03-25 05:04:22', 0),
(2, '1234/123456', 'Report to prove if reporting bugs really works', 'I just reported a BUG again!!!!', '2015-03-25 05:04:22', 1),
(4, '1234/123456', 'Testing again', 'This is a report', '2015-04-08 20:39:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'How do I get an academic adviser?', 'Don&rsquo;t worry, one is automatically assigned to you, you simply go to the general office and see the list'),
(2, 'Must I be a programmer in order to do well in computer science?', 'hmm, Yes & No. Yes because most of your assignments and lectures will revolve around a lot of programming concept and tools (not to mention your final year project). No because most people can simply study particularly for a programming exam and pass without really knowing it. (Although it is a standard advice; to be at least average in one programming language (preferably c++ or java) even though you specialize in other aspects of computer science).'),
(3, 'How do I use this site', 'Erm.. Ask the guy near you, we don''t know anything.');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_images`
--

CREATE TABLE IF NOT EXISTS `home_page_images` (
`id` int(11) NOT NULL,
  `img_url` text NOT NULL,
  `thumb_url` text NOT NULL,
  `href` text NOT NULL,
  `caption` varchar(100) NOT NULL,
  `size` enum('LARGE','SMALL') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `home_page_images`
--

INSERT INTO `home_page_images` (`id`, `img_url`, `thumb_url`, `href`, `caption`, `size`) VALUES
(1, 'img/b6.jpg', '', 'library.php', 'Keep learning, try out our e-Library', 'LARGE'),
(2, 'img/b3.jpg', '', 'forum/', 'Sample messages', 'LARGE'),
(3, 'img/b4.jpeg', '', '#', 'Sample messages', 'LARGE'),
(4, 'img/IMG-20150324-WA0003.jpg', '', 'http://localhost/Website-NACOSS-UNN/ndg/', 'Contribute to this and future projects... <br> Join <a href = "<?=NDG_HOMEPAGE?>"> NDG </a> today.', 'SMALL'),
(5, 'img/IMG-20150324-WA0001.jpg', '', 'http://localhost/Website-NACOSS-UNN/prospectus.php', 'What do You Know about Your Department? View The NACOSS prospectus to stay informed.', 'SMALL'),
(6, 'img/IMG-20150324-WA0002.jpg', '', 'http://localhost/Website-NACOSS-UNN/library.php', 'The NACOSS online library is now available for you. Click to view materials', 'SMALL'),
(7, 'img/events-calendar-banner.jpg', '', 'news_post.php?id=7', '2015 School Academic Calendar Out', 'SMALL');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
`id` int(11) NOT NULL,
  `title` varchar(60) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `date_published` int(4) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `sub_category` varchar(50) DEFAULT NULL,
  `keywords` varchar(30) DEFAULT NULL,
  `contributor` varchar(20) DEFAULT NULL,
  `date_added` datetime DEFAULT CURRENT_TIMESTAMP,
  `file_type` varchar(10) DEFAULT NULL,
  `link` text,
  `num_of_downloads` int(11) DEFAULT '0',
  `on_shelf` int(1) DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `title`, `author`, `publisher`, `date_published`, `isbn`, `category`, `sub_category`, `keywords`, `contributor`, `date_added`, `file_type`, `link`, `num_of_downloads`, `on_shelf`) VALUES
(1, 'How to be a programmer', 'K.L Foo', NULL, NULL, NULL, NULL, NULL, 'programming', NULL, '2015-03-24 00:00:00', 'pdf', '', 0, 1),
(2, 'Java: How to Program', 'Harvey Deitel', NULL, NULL, NULL, NULL, NULL, 'java, programming', NULL, '2015-03-24 00:00:00', 'pdf', '', 0, 1),
(4, 'Database: Beginners Guide', 'Agozie Eneh', NULL, NULL, NULL, NULL, NULL, 'mysql, database', NULL, '2015-03-24 00:00:00', 'docx', '', 10, 1),
(5, 'Java: How to Program Edition 8', 'Harvey Deitel', NULL, NULL, NULL, NULL, NULL, 'java, programming', NULL, '2015-03-24 00:00:00', 'docx', '', 0, 1),
(8, 'C++: How to program Edition 6', 'Paul Deitel', NULL, NULL, NULL, NULL, NULL, 'C++, programming', NULL, '2015-03-24 00:00:00', 'pdf', '', 0, 0),
(9, 'C++: How to program Edition 9', 'Paul Deitel', NULL, NULL, NULL, NULL, NULL, 'C++, programming', NULL, '2015-03-24 00:00:00', 'pdf', '', 5, 0),
(10, 'Database: Advanced Guide', 'Agozie Eneh', NULL, NULL, NULL, NULL, NULL, 'mysql, database', NULL, '2015-03-24 00:00:00', 'pdf', '', 3, 1),
(11, 'Java: How to Program Edition 10', 'Harvey Deitel', NULL, NULL, NULL, NULL, NULL, 'java, programming', NULL, '2015-03-25 00:00:00', 'pdf', '', 0, 1),
(12, 'new video', 'me', 'me too', 2015, '', 'programming', 'java', 'hello world', 'webadmin', '2015-04-24 07:28:49', 'mp4', 'http://localhost/Website-NACOSS-UNN/uploads/1429896529553a7d51d550b.mp4', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_contacts_groups`
--

CREATE TABLE IF NOT EXISTS `messenger_contacts_groups` (
`id` int(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_members` text NOT NULL,
  `time_created` int(50) NOT NULL,
  `modified` int(50) NOT NULL,
  `is_temp` int(1) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `messenger_contacts_groups`
--

INSERT INTO `messenger_contacts_groups` (`id`, `username`, `group_name`, `group_members`, `time_created`, `modified`, `is_temp`) VALUES
(5, '2011/177392', 'Girls Only', '1234/123456,2011/111111', 1431812149, 1431858342, 0),
(6, '2011/177392', 'Guys Only', '2011/111222,2011/177392', 1431858357, 1431858357, 0),
(7, '2011/177392', 'Everybody', '2011/111222,1234/123456,2011/111111,2011/177392', 1431858378, 1431858378, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_log`
--

CREATE TABLE IF NOT EXISTS `messenger_log` (
`id` int(6) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `recipients` text NOT NULL,
  `time_created` int(50) NOT NULL,
  `is_sent` int(1) NOT NULL DEFAULT '0',
  `time_sent` int(50) NOT NULL,
  `num_delivered` int(5) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `messenger_log`
--

INSERT INTO `messenger_log` (`id`, `user_id`, `message`, `recipients`, `time_created`, `is_sent`, `time_sent`, `num_delivered`, `type`) VALUES
(1, '2011/177392', 'testing', '08133621591', 2147483647, 1, 2147483647, 1, 'sms'),
(2, '2011/177392', 'testing', '08133621591', 2147483647, 1, 2147483647, 5, 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_sms_biller`
--

CREATE TABLE IF NOT EXISTS `messenger_sms_biller` (
`id` int(3) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `units_assigned` int(5) NOT NULL,
  `units_used` int(5) NOT NULL,
  `default_sender_id` varchar(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `messenger_sms_biller`
--

INSERT INTO `messenger_sms_biller` (`id`, `user_id`, `units_assigned`, `units_used`, `default_sender_id`) VALUES
(2, '2011/177392', 999, 0, 'Class Rep 2'),
(3, '2011/111222', 10, 0, 'Class Rep'),
(5, '1234/123456', 19, 0, 'Class Rep');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `time_of_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `time_of_post`, `last_modified`, `expire_time`, `hits`, `is_deleted`) VALUES
(1, 'Microsoft founder, Bill Gates, is quoted as saying:', '', '2015-03-20 10:54:19', '0000-00-00 00:00:00', '2015-03-20 10:54:19', 0, 1),
(2, 'Microsoft founder, Bill Gates, is quoted as saying:', '', '2015-03-20 10:54:35', '2015-04-18 17:05:37', '2015-04-18 17:05:37', 23, 0),
(3, 'Software Development Day', 'Unfortunately, in these dire economic times, the ability of school systems such as ours to get the tools necessary to help our students surprise all of us beyond expectations is imperiled.  That is why we are asking for your help in donating your used computers and computer systems to [school name] so that our students may have access to simple, yet critical, learning advantages such as the internet, word processing, and spreadsheet creation, as well as the opportunity to gain lifelong computing skills.\r\n\r\nI will follow up with you shortly to answer any questions you may have.  If you wish, please take a moment to indicate that you will help sponsor this community effort by calling me at [insert local phone number] or by returning the enclosed response form.  Let me thank you in advance for your time and support.  I look forward to speaking with you soon.', '2015-03-20 11:21:26', '2015-04-22 00:40:31', '2015-05-05 23:18:26', 0, 0),
(4, 'New Post', '<table cellspacing="2" cellpadding="2">\r\n	<tbody>\r\n		<tr>\r\n			<td>With Cute Editor, you have the choice of using either a relative or <strong>absolute</strong> URL.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/oncarriagereturn.php" target="_blank">Line break</a></td>\r\n			<td>With Cute Editor, you can defines what happens when the "enter" key is pressed in the editor in the <strong>BreakElement</strong> property.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/Auto-Adjusting-Height.php" target="_blank">Auto Adjusting Height</a></td>\r\n			<td>This example shows how to use Editor.ResizeMode to make the Editor change it''s height based on the content. The Editor will now grow and shrink in height to match the content inside.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/Multiple.php" target="_blank">Multiple Editors</a></td>\r\n			<td>Need to handle mutliple rich-text fields on one page? It''s easy with CuteEditor! Check out the sample below to see how 2 instances placed on a single page.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/readonly.php" target="_blank">Read only</a></td>\r\n			<td>This example show you you can set <strong>ReadOnly</strong> property to true if you would like to display read-only content in the Cute Editor in some situations.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/localization.php" target="_blank">Localization</a></td>\r\n			<td>This example shows you CuteEditor for ASP has built in <strong>support for multiple languages</strong>.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/Edithtml.php" target="_blank">Edit static HTML</a></td>\r\n			<td>This example demonstrates you can use Cute Editor to <strong>edit static html page</strong>.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/maxlength.php" target="_blank">Setting the max length</a></td>\r\n			<td>This example demonstrates you can use <strong>MaxHTMLLength</strong> to limit the length of the user input.<br />\r\n			Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Input and Output</strong></td>\r\n			<td>Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/editoronpaste.php" target="_blank">Handle pasted text</a></td>\r\n			<td>With Cute Editor, you can specify if formatting is stripped when text is pasted into the editor.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/xmloutput.php" target="_blank">Output XHTML</a></td>\r\n			<td>Cute Editor supports output well-formed <strong>XHTML</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/templates.php" target="_blank">Load templates</a></td>\r\n			<td>Cute Editor allows the site designer to easily create and establish templates to give the site a uniform look.<br />\r\n			Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Interface Customization</strong></td>\r\n			<td>Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/ThemeSupport.php" target="_blank">Theme Support </a></td>\r\n			<td>Cute Editor provides <strong>several built in themes</strong> that are ready to use. You can choose from several predefined themes or create your own.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/FullScreen.php" target="_blank">Full Screen Mode</a></td>\r\n			<td>Full screen mode button allows you to stretch the Cute Editor control to the width and height of your browser window.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/MinimalConfiguration.php" target="_blank">Minimal Configuration</a></td>\r\n			<td>This example shows you the Minimal Configuration of editor.<br />\r\n			Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Advanced Topics</strong></td>\r\n			<td>Â </td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/Customized-Toolbar.php" target="_blank">Customized Toolbar</a></td>\r\n			<td>Developers can personalize the toolbar by playing with <strong>Template</strong> property (see the example code on side)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/custombuttons.php" target="_blank">Add custom buttons</a></td>\r\n			<td>This example shows you how easy it can be to <strong>add your own functions</strong> to the CuteEditor with the help of CuteEditor extended functionalities.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/custombuttons-popup.php" target="_blank">Add custom dialogs</a></td>\r\n			<td>This example shows you how easy it can be to <strong>add your own dialogs</strong> to the CuteEditor with the help of CuteEditor extended functionalities.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/JavaScript-API.php" target="_blank">JavaScript API</a></td>\r\n			<td>This example shows you how to use CuteEditor <strong>JavaScript API</strong> to customize the application.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/use-CuteEditor-as-image-selector.php" target="_blank">Use as image selector </a></td>\r\n			<td>This example demonstrates how to use CuteEditor as an image selector.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/use-CuteEditor-as-file-manager.php" target="_blank">Use as file manager </a></td>\r\n			<td>This example demonstrates how to use CuteEditor as a file manager.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="file:///C:/Users/Admin/Desktop/phphtmledit/Ajax-Rich-Text-Editor.php" target="_blank">Ajax Rich Text Editor </a></td>\r\n			<td>This example shows you how to use Cute Editor in Ajax.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Â </p>', '2015-04-13 01:59:19', '2015-04-18 17:06:05', '2015-04-18 17:06:05', 3, 0),
(5, 'Contact Us', 'Â <h1 class="fg-dark">Contact Us</h1><p>If you would like to get in touch with NACOSS UNN Chapter, hereâ€™s how you can reach us:</p><br /><div class="panel bg-white no-border"><strong><font face="Segoe UI Bold">CALL <em class="icon-phone-2"></em></font></strong><font face="Segoe UI Regular">                     <br /><span class="fg-lightBlue"><font color="#4390df">+2348012345678</font></span>, <span class="fg-lightBlue"><font color="#4390df"> +2347087654321</font></span>                </font></div><br /><div><p><font face="Segoe UI Bold"><strong>Email Inquiries</strong><br /></font>                        If you would prefer to contact us via email, simply fill out the form below.                     </p><br /><form action="contact.php#inquiries" enctype="multipart/form-data" method="post"><div class="container"><div class="grid"><div class="row"><label class="span2">Name<span class="fg-red"><font color="#e51400">*</font></span></label><div class="span7"><input name="name" tabindex="1" style="width: inherit;" required="" type="text" autocomplete="OFF" />                                     </div></div><div class="row"><label class="span2">Company</label><div class="span7"><input name="company" tabindex="2" style="width: inherit;" type="text" autocomplete="OFF" />                                     </div></div><div class="row"><label class="span2">Address<span class="fg-red"><font color="#e51400">*</font></span></label><div class="span7"><input name="address" tabindex="3" style="width: inherit;" required="" type="text" placeholder="Street Address" value="" autocomplete="OFF" />                                         <input name="city" tabindex="4" required="" type="text" placeholder="City" value="" autocomplete="OFF" />                                         <input name="region" tabindex="5" required="" type="text" placeholder="State / Region" value="" />                                     </div></div><div class="row"><label class="span2">Phone</label><div class="span7"><input name="phone" tabindex="6" type="tel" />                                     </div></div><div class="row"><label class="span2">Email Address<span class="fg-red"><font color="#e51400">*</font></span>                                     </label><div class="span7"><input name="email" tabindex="7" style="width: inherit;" required="" type="email" />                                     </div></div><div class="row"><label class="span2">Comments<span class="fg-red"><font color="#e51400">*</font></span>                                     </label><div class="span7"><textarea name="message" tabindex="8" style="width: inherit;" required="" rows="10"></textarea>                                     </div></div><div class="row no-phone offset2"><input name="submit" tabindex="9" class="button default bg-NACOSS-UNN bg-hover-dark" type="submit" value="Send Message" /> </div></div></div></form></div>', '2015-04-18 15:50:12', '2015-04-22 00:42:03', '2015-05-13 05:00:00', 0, 0),
(6, 'Test', 'Â Test news', '2015-04-18 15:51:41', '0000-00-00 00:00:00', '2015-04-18 23:00:00', 0, 1);
INSERT INTO `news` (`id`, `title`, `content`, `time_of_post`, `last_modified`, `expire_time`, `hits`, `is_deleted`) VALUES
(7, '2015 School Academic Calendar Out', 'Â <p>Â </p><p><!--[if gte mso 9]><xml> <o:OfficeDocumentSettings> <o:AllowPNG></o> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <o:OfficeDocumentSettings> <o:AllowPNG></o> </o:OfficeDocumentSettings> </xml><![endif]--></p><p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves></w> <w:TrackFormatting></w> <w:PunctuationKerning></w> <w:ValidateAgainstSchemas></w> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF></w> <w:LidThemeOther>EN-US</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables></w> <w:SnapToGridInCell></w> <w:WrapTextWithPunct></w> <w:UseAsianBreakRules></w> <w:DontGrowAutofit></w> <w:SplitPgBreakAndParaMark></w> <w:DontVertAlignCellWithSp></w> <w:DontBreakConstrainedForcedTables></w> <w:DontVertAlignInTxbx></w> <w:Word11KerningPairs></w> <w:CachedColBalance></w> </w:Compatibility> <m:mathPr> <m:mathFont m:val="Cambria Math"  ></m> <m:brkBin m:val="before"  ></m> <m:brkBinSub m:val=" "  ></m> <m:smallFrac m:val="off"  ></m> <m:dispDef></m> <m:lMargin m:val="0"  ></m> <m:rMargin m:val="0"  ></m> <m:defJc m:val="centerGroup"  ></m> <m:wrapIndent m:val="1440"  ></m> <m:intLim m:val="subSup"  ></m> <m:naryLim m:val="undOvr"  ></m> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves></w> <w:TrackFormatting></w> <w:PunctuationKerning></w> <w:ValidateAgainstSchemas></w> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF></w> <w:LidThemeOther>EN-US</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables></w> <w:SnapToGridInCell></w> <w:WrapTextWithPunct></w> <w:UseAsianBreakRules></w> <w:DontGrowAutofit></w> <w:SplitPgBreakAndParaMark></w> <w:DontVertAlignCellWithSp></w> <w:DontBreakConstrainedForcedTables></w> <w:DontVertAlignInTxbx></w> <w:Word11KerningPairs></w> <w:CachedColBalance></w> </w:Compatibility> <m:mathPr> <m:mathFont m:val="Cambria Math"  ></m> <m:brkBin m:val="before"  ></m> <m:brkBinSub m:val=" "  ></m> <m:smallFrac m:val="off"  ></m> <m:dispDef></m> <m:lMargin m:val="0"  ></m> <m:rMargin m:val="0"  ></m> <m:defJc m:val="centerGroup"  ></m> <m:wrapIndent m:val="1440"  ></m> <m:intLim m:val="subSup"  ></m> <m:naryLim m:val="undOvr"  ></m> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles deflockedstate="false" defunhidewhenused="true" defsemihidden="true" defqformat="false" defpriority="99" latentstylecount="267"> <w:LsdException locked="false" priority="0" semihidden="false" unhidewhenused="false" qformat="true" name="Normal"  ></w> <w:LsdException locked="false" priority="9" semihidden="false" unhidewhenused="false" qformat="true" name="heading 1"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 2"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 3"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 4"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 5"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 6"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 7"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 8"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 9"  ></w> <w:LsdException locked="false" priority="39" name="toc 1"  ></w> <w:LsdException locked="false" priority="39" name="toc 2"  ></w> <w:LsdException locked="false" priority="39" name="toc 3"  ></w> <w:LsdException locked="false" priority="39" name="toc 4"  ></w> <w:LsdException locked="false" priority="39" name="toc 5"  ></w> <w:LsdException locked="false" priority="39" name="toc 6"  ></w> <w:LsdException locked="false" priority="39" name="toc 7"  ></w> <w:LsdException locked="false" priority="39" name="toc 8"  ></w> <w:LsdException locked="false" priority="39" name="toc 9"  ></w> <w:LsdException locked="false" priority="35" qformat="true" name="caption"  ></w> <w:LsdException locked="false" priority="10" semihidden="false" unhidewhenused="false" qformat="true" name="Title"  ></w> <w:LsdException locked="false" priority="1" name="Default Paragraph Font"  ></w> <w:LsdException locked="false" priority="11" semihidden="false" unhidewhenused="false" qformat="true" name="Subtitle"  ></w> <w:LsdException locked="false" priority="22" semihidden="false" unhidewhenused="false" qformat="true" name="Strong"  ></w> <w:LsdException locked="false" priority="20" semihidden="false" unhidewhenused="false" qformat="true" name="Emphasis"  ></w> <w:LsdException locked="false" priority="59" semihidden="false" unhidewhenused="false" name="Table Grid"  ></w> <w:LsdException locked="false" unhidewhenused="false" name="Placeholder Text"  ></w> <w:LsdException locked="false" priority="1" semihidden="false" unhidewhenused="false" qformat="true" name="No Spacing"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 1"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 1"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 1"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 1"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 1"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 1"  ></w> <w:LsdException locked="false" unhidewhenused="false" name="Revision"  ></w> <w:LsdException locked="false" priority="34" semihidden="false" unhidewhenused="false" qformat="true" name="List Paragraph"  ></w> <w:LsdException locked="false" priority="29" semihidden="false" unhidewhenused="false" qformat="true" name="Quote"  ></w> <w:LsdException locked="false" priority="30" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Quote"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 1"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 1"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 1"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 1"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 1"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 1"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 1"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 1"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 2"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 2"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 2"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 2"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 2"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 2"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 2"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 2"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 2"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 2"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 2"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 2"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 2"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 2"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 3"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 3"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 3"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 3"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 3"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 3"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 3"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 3"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 3"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 3"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 3"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 3"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 3"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 3"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 4"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 4"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 4"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 4"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 4"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 4"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 4"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 4"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 4"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 4"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 4"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 4"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 4"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 4"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 5"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 5"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 5"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 5"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 5"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 5"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 5"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 5"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 5"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 5"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 5"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 5"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 5"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 5"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 6"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 6"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 6"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 6"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 6"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 6"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 6"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 6"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 6"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 6"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 6"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 6"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 6"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 6"  ></w> <w:LsdException locked="false" priority="19" semihidden="false" unhidewhenused="false" qformat="true" name="Subtle Emphasis"  ></w> <w:LsdException locked="false" priority="21" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Emphasis"  ></w> <w:LsdException locked="false" priority="31" semihidden="false" unhidewhenused="false" qformat="true" name="Subtle Reference"  ></w> <w:LsdException locked="false" priority="32" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Reference"  ></w> <w:LsdException locked="false" priority="33" semihidden="false" unhidewhenused="false" qformat="true" name="Book Title"  ></w> <w:LsdException locked="false" priority="37" name="Bibliography"  ></w> <w:LsdException locked="false" priority="39" qformat="true" name="TOC Heading"  ></w> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles deflockedstate="false" defunhidewhenused="true" defsemihidden="true" defqformat="false" defpriority="99" latentstylecount="267"> <w:LsdException locked="false" priority="0" semihidden="false" unhidewhenused="false" qformat="true" name="Normal"  ></w> <w:LsdException locked="false" priority="9" semihidden="false" unhidewhenused="false" qformat="true" name="heading 1"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 2"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 3"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 4"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 5"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 6"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 7"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 8"  ></w> <w:LsdException locked="false" priority="9" qformat="true" name="heading 9"  ></w> <w:LsdException locked="false" priority="39" name="toc 1"  ></w> <w:LsdException locked="false" priority="39" name="toc 2"  ></w> <w:LsdException locked="false" priority="39" name="toc 3"  ></w> <w:LsdException locked="false" priority="39" name="toc 4"  ></w> <w:LsdException locked="false" priority="39" name="toc 5"  ></w> <w:LsdException locked="false" priority="39" name="toc 6"  ></w> <w:LsdException locked="false" priority="39" name="toc 7"  ></w> <w:LsdException locked="false" priority="39" name="toc 8"  ></w> <w:LsdException locked="false" priority="39" name="toc 9"  ></w> <w:LsdException locked="false" priority="35" qformat="true" name="caption"  ></w> <w:LsdException locked="false" priority="10" semihidden="false" unhidewhenused="false" qformat="true" name="Title"  ></w> <w:LsdException locked="false" priority="1" name="Default Paragraph Font"  ></w> <w:LsdException locked="false" priority="11" semihidden="false" unhidewhenused="false" qformat="true" name="Subtitle"  ></w> <w:LsdException locked="false" priority="22" semihidden="false" unhidewhenused="false" qformat="true" name="Strong"  ></w> <w:LsdException locked="false" priority="20" semihidden="false" unhidewhenused="false" qformat="true" name="Emphasis"  ></w> <w:LsdException locked="false" priority="59" semihidden="false" unhidewhenused="false" name="Table Grid"  ></w> <w:LsdException locked="false" unhidewhenused="false" name="Placeholder Text"  ></w> <w:LsdException locked="false" priority="1" semihidden="false" unhidewhenused="false" qformat="true" name="No Spacing"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 1"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 1"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 1"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 1"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 1"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 1"  ></w> <w:LsdException locked="false" unhidewhenused="false" name="Revision"  ></w> <w:LsdException locked="false" priority="34" semihidden="false" unhidewhenused="false" qformat="true" name="List Paragraph"  ></w> <w:LsdException locked="false" priority="29" semihidden="false" unhidewhenused="false" qformat="true" name="Quote"  ></w> <w:LsdException locked="false" priority="30" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Quote"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 1"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 1"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 1"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 1"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 1"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 1"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 1"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 1"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 2"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 2"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 2"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 2"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 2"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 2"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 2"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 2"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 2"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 2"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 2"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 2"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 2"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 2"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 3"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 3"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 3"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 3"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 3"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 3"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 3"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 3"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 3"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 3"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 3"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 3"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 3"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 3"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 4"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 4"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 4"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 4"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 4"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 4"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 4"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 4"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 4"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 4"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 4"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 4"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 4"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 4"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 5"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 5"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 5"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 5"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 5"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 5"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 5"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 5"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 5"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 5"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 5"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 5"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 5"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 5"  ></w> <w:LsdException locked="false" priority="60" semihidden="false" unhidewhenused="false" name="Light Shading Accent 6"  ></w> <w:LsdException locked="false" priority="61" semihidden="false" unhidewhenused="false" name="Light List Accent 6"  ></w> <w:LsdException locked="false" priority="62" semihidden="false" unhidewhenused="false" name="Light Grid Accent 6"  ></w> <w:LsdException locked="false" priority="63" semihidden="false" unhidewhenused="false" name="Medium Shading 1 Accent 6"  ></w> <w:LsdException locked="false" priority="64" semihidden="false" unhidewhenused="false" name="Medium Shading 2 Accent 6"  ></w> <w:LsdException locked="false" priority="65" semihidden="false" unhidewhenused="false" name="Medium List 1 Accent 6"  ></w> <w:LsdException locked="false" priority="66" semihidden="false" unhidewhenused="false" name="Medium List 2 Accent 6"  ></w> <w:LsdException locked="false" priority="67" semihidden="false" unhidewhenused="false" name="Medium Grid 1 Accent 6"  ></w> <w:LsdException locked="false" priority="68" semihidden="false" unhidewhenused="false" name="Medium Grid 2 Accent 6"  ></w> <w:LsdException locked="false" priority="69" semihidden="false" unhidewhenused="false" name="Medium Grid 3 Accent 6"  ></w> <w:LsdException locked="false" priority="70" semihidden="false" unhidewhenused="false" name="Dark List Accent 6"  ></w> <w:LsdException locked="false" priority="71" semihidden="false" unhidewhenused="false" name="Colorful Shading Accent 6"  ></w> <w:LsdException locked="false" priority="72" semihidden="false" unhidewhenused="false" name="Colorful List Accent 6"  ></w> <w:LsdException locked="false" priority="73" semihidden="false" unhidewhenused="false" name="Colorful Grid Accent 6"  ></w> <w:LsdException locked="false" priority="19" semihidden="false" unhidewhenused="false" qformat="true" name="Subtle Emphasis"  ></w> <w:LsdException locked="false" priority="21" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Emphasis"  ></w> <w:LsdException locked="false" priority="31" semihidden="false" unhidewhenused="false" qformat="true" name="Subtle Reference"  ></w> <w:LsdException locked="false" priority="32" semihidden="false" unhidewhenused="false" qformat="true" name="Intense Reference"  ></w> <w:LsdException locked="false" priority="33" semihidden="false" unhidewhenused="false" qformat="true" name="Book Title"  ></w> <w:LsdException locked="false" priority="37" name="Bibliography"  ></w> <w:LsdException locked="false" priority="39" qformat="true" name="TOC Heading"  ></w> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <mce:style><! /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-priority:99; 	mso-style-qformat:yes; 	mso-style-parent:""; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin-top:0in; 	mso-para-margin-right:0in; 	mso-para-margin-bottom:8.0pt; 	mso-para-margin-left:0in; 	line-height:107%; 	mso-pagination:widow-orphan; 	font-size:11.0pt; 	font-family:"Calibri","sans-serif"; 	mso-ascii-font-family:Calibri; 	mso-ascii-theme-font:minor-latin; 	mso-hansi-font-family:Calibri; 	mso-hansi-theme-font:minor-latin; 	mso-ansi-language:EN-GB;} --><!--[if gte mso 10]> <mce:style><! /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-priority:99; 	mso-style-qformat:yes; 	mso-style-parent:""; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin-top:0in; 	mso-para-margin-right:0in; 	mso-para-margin-bottom:8.0pt; 	mso-para-margin-left:0in; 	line-height:107%; 	mso-pagination:widow-orphan; 	font-size:11.0pt; 	font-family:"Calibri","sans-serif"; 	mso-ascii-font-family:Calibri; 	mso-ascii-theme-font:minor-latin; 	mso-hansi-font-family:Calibri; 	mso-hansi-theme-font:minor-latin; 	mso-ansi-language:EN-GB;} --><!--[endif] --><!--[endif] --></p><p class="MsoNormal" style="text-align: center;"><strong>UNIVERSITY OF NIGERIA, NSUKKA</strong></p><p class="MsoNormal" style="text-align: center;"><strong>TIME-TABLE OF EVENTS FOR 2014/2015 SESSION</strong></p><p class="MsoNormal"><strong>FIRST SEMESTER 2014/2015</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>NOVEMBER2014</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Monday 03<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Arrival of freshmen/provision of accommodation<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Wednesday 05<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â  </span>- Registration begins for freshmen </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Friday 07<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Arrival of old students/provision of accommodation </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Monday 10<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Registration begins for old students<span style="mso-spacerun: yes;">Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>-<span style="mso-spacerun: yes;">Â  </span>Lectures begin<span style="mso-spacerun: yes;">Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â  </span>Orientation for freshmen begins </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Friday 14<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Orientation for freshmen ends </span></p><p class="MsoNormal" style="margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Friday 21<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Registration ends for all students </span></p><p class="MsoNormal" style="margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Monday 24<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Late registration begins for all students</span></p><p class="MsoNormal" style="margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Wednesday 26<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â  </span>- Senate Meeting<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Friday 28<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Late registration ends for all students<span style="mso-spacerun: yes;">Â  </span></span></p><p class="MsoNormal"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>DECEMBER 2014<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></strong><span style="mso-spacerun: yes;"><span>Â Â </span></span><span>- Lectures continue</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Wednesday 17<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â  </span><strong>- Christmas break begins</strong></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>Â </strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>JANUARY 2015 </strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>Friday 02<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Lectures resume<span style="mso-spacerun: yes;">Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;">Â </p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>MONDAY 19/01/15 â€“ SUNDAY 25/01/15 - CONVOCATION CEREMONIES</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><strong>Â </strong>Â  Â  Â  Wednesday 28<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â  </span>- Senate Meeting</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>FEBRUARY 2015<span style="mso-spacerun: yes;">Â  </span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 06<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Late registration ends for freshmen</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>SATURDAY 07<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- MATRICULATION CEREMONY</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 13<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Lectures end </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>Monday 16<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Revision begins </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>Friday 20<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Revision Ends</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>Monday 23<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Departmental Examinations begin</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>Friday 27<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Departmental Examinations end </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>MARCH 2015</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â  Â  Â  Â Monday 02<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Examinations in Inter-Faculty and Inter-Disciplinary Courses begin</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>Friday 13<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Examinations in Inter-Faculty and Inter-Disciplinary Courses end<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>End of First Semester/Students Vacate Campus</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>Â </strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span style="font-weight: bold;">SECOND SEMESTER 2014/2015</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>MARCH 2015</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Thursday 26<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Students return to Campus</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Monday 30<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Lectures begin for the second semester</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>Â </strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><strong>APRIL 2015 </strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>- Lectures Continue</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Thursday 02<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Last day for submission of students results to the Departments </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- processing of students results begin in the Departments</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â  </span>Friday 03 â€“ Monday 06<span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>- Easter Break</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â </span>Tuesday 07<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Lectures resume</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â  </span>Friday 10<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Last day for submission of first semester results to the Registry<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>(Examinations)</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 17<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Processing of results ends in the Departments</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 24<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Deadline for checking of results by Heads of Department</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Wednesday 29<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Senate meeting</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>MAY 2015</strong><span style="mso-spacerun: yes;"><span>Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></span><span>- Lectures continue</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Tuesday 05 â€“ Friday 08<span style="mso-spacerun: yes;">Â Â Â Â Â Â  </span>- Faculty Boards meet to consider and approve results</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Wednesday 27<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Senate meets to consider and approve results</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>JUNE 2015<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></strong><span>- Lectures continue</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Wednesday 24<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Senate meeting</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>JULY 2015</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 03<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Lectures end</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Monday 06<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Revisions begin</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 10<span style="mso-spacerun: yes;">Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>- Revisions end</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Monday 13<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Departmental Examinations begin</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 17<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Departmental Examinations end</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Monday 20<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Examinations begin in Inter-Faculty and Inter-Disciplinary courses</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 31<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Examinations end in Inter-Faculty and Inter-Disciplinary courses</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>End of Session/Students Vacate Campus</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>AUGUST 2015<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â  </span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 21<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Last day for submission of students results to the Departments<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â  </span>processing of students results begin in the Departments</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Wednesday 26<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â </span>- Senate meeting</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 28<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Last day for submission of results to the Registry (Examinations)</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>SEPTEMBER 2015</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 04<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Processing of results ends in the Departments</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Friday 11<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>- Checking of results by Heads of Department</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Tuesday 15 â€“ Friday 18<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â  </span>- Faculty Boards meet to consider and approve results </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Wednesday 30<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- Senate meets to consider and approve results</span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span>Â </span></p><p class="MsoNormal" style="text-align: center; line-height: normal; margin-bottom: 0pt;"><strong>SUMMARY FOR THE SESSION</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>Â </strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>First Semester<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Lectures<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>13 weeks</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Revisions<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â  </span>01 week</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Examinations<span style="mso-spacerun: yes;">Â Â Â Â Â  </span><span style="text-decoration: underline;">03 weeks</span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>Total<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="text-decoration: underline;">17 weeks</span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span style="text-decoration: underline;"><span style="text-decoration: none;"><strong>Â </strong></span></span></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong>Second Semester<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Lectures<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>14 weeks</strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Revisions<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â  </span>01 week</strong></p><p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>Examinations<span style="mso-spacerun: yes;">Â Â Â Â Â  </span><span style="text-decoration: underline;">03 weeks</span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><strong><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Total<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="text-decoration: underline;">18 weeks</span></strong></p><p class="MsoNormal" style="line-height: normal; margin-bottom: 0pt;"><span style="text-decoration: underline;"><span style="text-decoration: none;"><strong>Â </strong></span></span></p><p class="MsoNormal" style="text-align: center;"><strong>Â </strong></p><p class="MsoNormal" style="text-align: center;"><a name="_GoBack" style=''width: 20px; height: 20px; text-indent: 20px; background-image: url("/Website-NACOSS-UNN/cpanel/cuteeditor_files/Images/anchor.gif"); background-repeat: no-repeat;''></a><strong>TIME-TABLE OF EVENTS FOR SANDWICH PROGRAMME 2014/2015 SESSION</strong></p><p class="MsoNormal" style="text-align: center;"><strong>JULY 2015</strong></p><p class="MsoNormal"><span>Wednesday 15<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â  </span>Arrival</span></p><p class="MsoNormal"><span>Thursday 16<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â  </span>Registration</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Monday 20<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>- <span style="mso-tab-count: 1;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Lectures begin</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Friday 31<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Registration ends</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Â </span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><strong>AUGUST 2015<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â  </span></strong><span>Lectures continue</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Â </span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><strong>SEPTEMBER 2015<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span></strong></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Friday 18<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Lectures end</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Monday 21<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Revisions begin </span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Friday 25<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Revisions end</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Monday 28<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Examinations begin</span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Â </span></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><strong>OCTOBER 2015</strong></p><p class="MsoNormal" style="tab-stops: 240.75pt;"><span>Friday 09<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â </span>-<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>Examinations end </span></p><p class="MsoListParagraph" style="text-indent: -0.25in; margin-left: 222pt; tab-stops: 240.75pt; mso-add-space: auto; mso-list: l0 level1 lfo1;"><span style="mso-ascii-font-family: Calibri; mso-fareast-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri;"><span style="mso-list: Ignore;">-<span>Â Â Â Â Â Â Â Â Â  </span></span></span><strong>Students vacate</strong></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><span>Â </span></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><strong>SUMMARY</strong></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><strong>Lectures<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>9 weeks</strong></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><strong>Revisions<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span>1 week</strong></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><strong>Examinations<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="text-decoration: underline;">2 weeks</span></strong></p><p class="MsoNormal" style="text-align: justify; tab-stops: 240.75pt;"><strong><span><strong>Total<span style="mso-spacerun: yes;">Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  </span><span style="text-decoration: underline;">12 weeks</span></strong></span></strong><br /></p>', '2015-04-19 19:48:37', '2015-04-19 19:48:37', '2015-05-31 23:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `time_of_payment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`id` int(11) NOT NULL,
  `img_url` text NOT NULL,
  `entry_year` year(4) NOT NULL,
  `semester` int(1) NOT NULL,
  `year` int(1) NOT NULL COMMENT 'course level i.e 1 for 1st year, 2 for second year etc. ',
  `course_code` varchar(6) NOT NULL,
  `page_no` int(1) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `description`) VALUES
(1, 'email', 'example@domain.com', 'Organization contact email. This is the email address at which message from website visitors will be sent to.'),
(2, 'help_lines', '+2348012345678, +2347087654321', 'Organisation contact lines. Phone number(s) that will be publicly displayed on website for visitors to call. NOTE: Multiple numbers should be separated with commas'),
(3, 'hash_algo_cost', '12', 'Highest cost this server can afford without slowing down when computing hash algorithm'),
(5, 'max_hash_time', '250', 'Minimum amount of time in milliseconds that it should take to calculate the (password) hashes. Field hash_algo_cost should be recalculated if this value changes.'),
(6, 'fileTypes_ebook', 'txt,html,pdf,doc,docx,excel', 'Supported files types for ebooks in library e.g. text/plain. Seperate multiple entries with a single comma, no spaces allowed'),
(7, 'fileTypes_video', 'avi,mp4,3gp', 'Supported file types for videos in library e.g. video/mp4. Seperate multiple entries with a single comma, no spaces allowed'),
(9, 'MIME_ebooks', 'text/plain,text/html,application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/vnd.ms-excel,application/x-forcedownload', ''),
(10, 'MIME_videos', 'video/mp4,video/flv,video/3gpp', ''),
(11, 'sms_api_gatewayURL', 'http://www.bulksmsnigeria.net/components/com_spc/smsapi.php', 'URL of sms api script obtained from vendor\r\ne.g http://domain.com/smsapi.php'),
(12, 'sms_api_gatewayUsername', 'dejoetech', 'username used at sms vendor''s website'),
(13, 'sms_api_gatewaPassword', 'MD5_coded_@', 'corresponding password for api username'),
(14, 'sms_api_messagePageLenght', '156', 'number of characters that make an SMS page'),
(15, 'sms_api_gatewayDomain', 'bulksmsnigeria.net', 'domain name of sms vendor websit; e.g\r\ndomain.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `regno` varchar(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `other_names` varchar(30) DEFAULT NULL,
  `gender` char(1) DEFAULT 'm',
  `password` varchar(255) NOT NULL,
  `department` varchar(30) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `entry_year` year(4) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` text NOT NULL,
  `dob` date DEFAULT NULL,
  `address1` text,
  `address2` text,
  `interests` text,
  `bio` text,
  `pic_url` text NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  `is_class_rep` int(1) NOT NULL DEFAULT '0',
  `is_suspended` int(1) NOT NULL DEFAULT '0',
  `is_deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`regno`, `first_name`, `last_name`, `other_names`, `gender`, `password`, `department`, `level`, `entry_year`, `phone`, `email`, `dob`, `address1`, `address2`, `interests`, `bio`, `pic_url`, `verified`, `is_class_rep`, `is_suspended`, `is_deleted`) VALUES
('1234/123456', 'Jane', 'Doe', 'Anonymous', 'm', '$2y$10$JRjBJLF1Td6e9xWVttk9juRXK7UOdIrAyF7buxloPei/8.06/GccC', 'COMPUTER SCIENCE/MATHEMATICS', '100', 2015, '08133621591', 'example@domain.com', '1995-07-29', '', '', 'Java', 'Find out', 'uploads/12341234565518047d54a75.jpeg', 1, 0, 0, 0),
('2011/111111', 'Jennifer', 'Ubah', '', 'm', '$2y$08$KJvecJJmpauEyUM4vnYJF.zJvFWEKMvNQWmQsLLLRd.cUipEGQIYu', '', '100', 0000, '08176309077', 'ubahjennifer@gmail.com', NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 1),
('2011/111222', 'Anthony', 'Ejinwa', '', 'm', '$2y$10$CkYXw5Y6.mR0GSDJCq/k..c608PGInY4YAcgNFbbBzQKq3wjk2asW', 'COMPUTER SCIENCE', '100', 2015, '07012345678', 'eanthony@yahoo.com', '2015-01-01', '', '', '', '', '', 0, 0, 1, 0),
('2011/177392', 'Victor', 'Anuebunwa', '', 'm', '$2y$10$YyJfgW.y1Jrt3zyWJPFGTuKk9at.e/jLqK8n1VRELdyBJoPi3RDj6', 'COMPUTER SCIENCE', '100', 2014, '07064561570', 'anuebunwa.victor@gmail.com', '2001-02-14', '', '', 'Programming, Gaming', '', 'uploads/20111773925518ac310be9e.jpeg', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `board_members`
--
ALTER TABLE `board_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_log`
--
ALTER TABLE `error_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_reports`
--
ALTER TABLE `error_reports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_images`
--
ALTER TABLE `home_page_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_contacts_groups`
--
ALTER TABLE `messenger_contacts_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_log`
--
ALTER TABLE `messenger_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_sms_biller`
--
ALTER TABLE `messenger_sms_biller`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`regno`), ADD UNIQUE KEY `regno` (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `board_members`
--
ALTER TABLE `board_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `error_log`
--
ALTER TABLE `error_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `error_reports`
--
ALTER TABLE `error_reports`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `home_page_images`
--
ALTER TABLE `home_page_images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `messenger_contacts_groups`
--
ALTER TABLE `messenger_contacts_groups`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messenger_log`
--
ALTER TABLE `messenger_log`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messenger_sms_biller`
--
ALTER TABLE `messenger_sms_biller`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
