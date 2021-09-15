-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 11:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elboghdady`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `exam_id`, `mark`, `user_id`, `date`, `lesson_id`, `answer`) VALUES
(1, 15, 1, 1, '2021-01-16', NULL, ''),
(2, 19, 0, 1, '2021-01-17', NULL, ''),
(3, 19, 0, 1, '2021-01-17', NULL, ''),
(4, 19, 0, 1, '2021-01-17', NULL, ''),
(5, 19, 1, 1, '2021-01-17', NULL, ''),
(6, 19, 0, 1, '2021-01-17', NULL, ''),
(7, 19, 1, 1, '2021-01-17', NULL, ''),
(8, 19, 0, 1, '2021-01-17', NULL, ''),
(9, 19, 0, 1, '2021-01-17', NULL, ''),
(10, 19, 1, 1, '2021-01-17', NULL, ''),
(11, 19, 0, 1, '2021-01-17', NULL, ''),
(12, 19, 1, 1, '2021-01-17', NULL, ''),
(13, 19, 1, 1, '2021-01-17', NULL, ''),
(14, 19, 0, 1, '2021-01-17', NULL, ''),
(15, 22, 0, 1, '2021-01-23', NULL, ''),
(16, 22, 2, 1, '2021-01-23', NULL, ''),
(17, 23, 4, 352, '2021-01-25', NULL, ''),
(18, 25, 2, 1, '2021-01-26', NULL, ''),
(19, 27, 9, 256, '2021-01-26', NULL, ''),
(20, 26, 0, 256, '2021-01-26', NULL, ''),
(21, 27, 10, 242, '2021-01-27', NULL, ''),
(22, 27, 10, 282, '2021-01-27', NULL, ''),
(23, 27, 8, 280, '2021-01-27', NULL, ''),
(24, 27, 10, 262, '2021-01-27', NULL, ''),
(25, 27, 9, 230, '2021-01-28', NULL, ''),
(26, 27, 9, 266, '2021-01-28', NULL, ''),
(27, 27, 6, 289, '2021-01-28', NULL, ''),
(28, 27, 10, 248, '2021-01-28', NULL, ''),
(29, 27, 8, 261, '2021-01-29', NULL, ''),
(30, 27, 9, 318, '2021-01-29', NULL, ''),
(31, 27, 10, 314, '2021-01-30', NULL, ''),
(32, 27, 10, 259, '2021-01-31', NULL, ''),
(33, 28, 9, 248, '2021-02-01', NULL, ''),
(34, 28, 8, 266, '2021-02-01', NULL, ''),
(35, 27, 9, 265, '2021-02-03', NULL, ''),
(36, 28, 9, 280, '2021-02-04', NULL, ''),
(37, 28, 7, 262, '2021-02-04', NULL, ''),
(38, 29, 14, 266, '2021-02-04', NULL, ''),
(39, 27, 10, 257, '2021-02-04', NULL, ''),
(40, 28, 7, 256, '2021-02-05', NULL, ''),
(41, 29, 13, 256, '2021-02-05', NULL, ''),
(42, 28, 9, 282, '2021-02-05', NULL, ''),
(43, 27, 9, 243, '2021-02-05', NULL, ''),
(44, 29, 12, 282, '2021-02-05', NULL, ''),
(45, 28, 9, 314, '2021-02-05', NULL, ''),
(46, 28, 8, 243, '2021-02-07', NULL, ''),
(47, 29, 13, 243, '2021-02-07', NULL, ''),
(48, 28, 9, 265, '2021-02-08', NULL, ''),
(49, 29, 14, 265, '2021-02-08', NULL, ''),
(50, 28, 9, 242, '2021-02-09', NULL, ''),
(51, 29, 14, 314, '2021-02-11', NULL, ''),
(52, 28, 9, 261, '2021-02-11', NULL, ''),
(53, 27, 8, 313, '2021-02-12', NULL, ''),
(54, 29, 13, 242, '2021-02-12', NULL, ''),
(55, 29, 14, 262, '2021-02-13', NULL, ''),
(56, 29, 12, 261, '2021-02-15', NULL, ''),
(57, 29, 13, 248, '2021-02-17', NULL, ''),
(58, 27, 5, 1, '2021-03-26', NULL, ''),
(59, 28, 4, 1, '2021-03-26', NULL, ''),
(60, 29, 3, 1, '2021-03-26', NULL, ''),
(61, 32, 1, 1, '2021-03-26', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `benfits`
--

CREATE TABLE `benfits` (
  `benfit_id` int(11) NOT NULL,
  `description` varchar(225) NOT NULL,
  `benfit_image` varchar(225) NOT NULL,
  `benfit_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `benfits`
--

INSERT INTO `benfits` (`benfit_id`, `description`, `benfit_image`, `benfit_date`) VALUES
(2, '', '60877_maxresdefault (1).jpg', '2021-01-10'),
(4, '', '27422_صور-مكتوب-عليها4-1024x686.jpg', '2021-01-10'),
(5, 'السلام عليكم \r\nيا شباب عندما تصاب بالكسل فتذكر حلاوة النجاح ويوم اعلان النتائج \r\nوفقكم الله وبارك فيكم', '61604_x1080.jpg', '2021-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `ordering` int(11) DEFAULT 0,
  `parent` int(11) NOT NULL,
  `Visibility` tinyint(4) NOT NULL,
  `Allow_Comment` tinyint(4) NOT NULL,
  `Allow_Ads` tinyint(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `ordering`, `parent`, `Visibility`, `Allow_Comment`, `Allow_Ads`, `image`) VALUES
(1, 'الصف الاول الاعدادى', 'الصف الاول الاعدادى', 1, 0, 1, 0, 0, '94193_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(2, 'الصف  الثانى الاعدادى', 'الصف  الثانى الاعدادى', 2, 0, 1, 0, 0, '82420_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(3, 'الصف الثالث الاعدادى', 'الصف الثالث الاعدادى', 3, 0, 1, 0, 0, '82420_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(4, 'الصف  الاول الثانوى', 'الصف  الاول الثانوى', 4, 0, 1, 0, 0, '9820_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(5, 'الصف  الثانى الثانوى', 'الصف  الثانى الثانوى', 5, 0, 1, 0, 0, '48875_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(6, 'الصف الثالث الثانوى', 'الصف الثالث الثانوى', 6, 0, 1, 0, 0, '61834_3d-chemical-laboratory-tubes-flask-set_208581-501.jpg'),
(13, 'القواعد', 'القواعد', 0, 1, 1, 0, 0, '7641_french.jpg'),
(14, 'القواعد ', 'القواعد ', 0, 2, 1, 0, 0, '12788_french.jpg'),
(15, 'القواعد ', 'القواعد ', 0, 3, 1, 0, 0, '41966_french.jpg'),
(16, 'القواعد ', 'القواعد ', 0, 4, 1, 0, 0, '52439_french.jpg'),
(17, 'القواعد ', 'القواعد ', 0, 5, 1, 0, 0, '63729_french.jpg'),
(18, 'القواعد ', 'القواعد ', 0, 6, 1, 0, 0, '61799_french.jpg'),
(19, 'مراجعة الترم الاول', 'مراجعة الترم الاول', 0, 4, 1, 0, 0, '26309_francais-lettering-pink-background.jpg'),
(20, 'حصص شرح الوحدة الثالثة', 'الوحدة الثالثة', 0, 6, 1, 0, 0, '52464_francais-lettering-pink-background.jpg'),
(21, 'مراجعة الترم الاول', 'مراجعة الترم الاول', 0, 5, 1, 0, 0, '83593_francais-lettering-pink-background.jpg'),
(22, 'حصص شرح الوحدة الرابعة', 'حصص شرح الوحدة الرابعة', -1, 6, 1, 0, 0, '95759_لوجو 11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_data` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `member_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment`, `comment_data`, `status`, `member_id`, `post_id`, `lesson_id`, `message_id`) VALUES
(1, 'يؤؤيؤيسؤسش', '2021-03-26', 1, 1, 69, NULL, NULL),
(2, 'شيئبرئؤ ءريسئشسءؤيبرلؤيبي', '2021-03-26', 1, 1, 69, NULL, NULL),
(3, 'cdvsfdgbfhgjhkjhjgffxd', '2021-03-26', 1, 1, 67, NULL, NULL),
(4, 'fsbgfbvfdxb', '2021-03-26', 1, 1, 67, NULL, NULL),
(5, 'thhtdrefrs', '2021-03-27', 1, 1, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `events_id` int(11) NOT NULL,
  `events_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `events_description` text CHARACTER SET utf8 NOT NULL,
  `events_time` time DEFAULT NULL,
  `events_date` date DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`events_id`, `events_name`, `events_description`, `events_time`, `events_date`, `cat_id`) VALUES
(1, 'hdxfbgf', 'fvgxvxcvxcvx', '19:30:00', '2021-03-26', 6),
(2, 'zdvfd', 'zdfxvcfzdxvfdzz', '07:30:00', '2021-03-26', 4),
(3, 'jhgdtgc', 'bhfgcbfc', '16:52:00', '2021-03-26', 6);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_date` date NOT NULL,
  `categ_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `link` varchar(225) NOT NULL,
  `exam_desc` text DEFAULT NULL,
  `number` int(11) DEFAULT 10,
  `type` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 1800
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `exam_name`, `exam_date`, `categ_id`, `member_id`, `lesson_id`, `link`, `exam_desc`, `number`, `type`, `time`) VALUES
(14, 'امتحان علي الماضي المركب', '2021-01-09', 6, 1, 0, 'https://docs.google.com/forms/d/e/1FAIpQLSf0yGhxgXRnhYUhCxFupj3D-Mkf64eGtTpumpoqofDusYjN2g/viewform?usp=sf_link', 'https://docs.google.com/forms/d/e/1FAIpQLSf0yGhxgXRnhYUhCxFupj3D-Mkf64eGtTpumpoqofDusYjN2g/viewform?usp=sf_link', 10, 2, 1800),
(27, 'تسميع درس 2', '2021-01-26', 20, 2, 95, '', NULL, 20, 1, 1800),
(28, 'تسميع الدرس الثالث حصة 1', '2021-02-01', 20, 2, 111, '', NULL, 20, 1, 1800),
(29, 'تسميع درس 3 حصة2', '2021-02-04', 20, 2, 117, '', NULL, 20, 1, 1800),
(31, 'fhfghbfgh', '2021-03-26', 2, 1, NULL, '', 'dfgfgfgdf', 10, 2, 1800),
(32, 'التشابة', '2021-03-26', 6, 1, NULL, '', NULL, 300, 2, 1800),
(33, 'ghjhjvjh', '2021-03-26', 3, 1, NULL, '', 'hgfhfgvhv', 10, 2, 1800),
(34, 'yjgyj', '2021-03-26', 4, 1, NULL, '', NULL, 1200, 2, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` varchar(255) NOT NULL,
  `lesson_description` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `lesson_data` date NOT NULL,
  `member_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `video_name` varchar(225) DEFAULT NULL,
  `allow_comments` tinyint(4) NOT NULL DEFAULT 0,
  `Approve` tinyint(1) NOT NULL DEFAULT 0,
  `pdf` varchar(255) DEFAULT 'https://drive.google.com/file/d/1QSOmg51_vOkJf7Xdrj8artFac080n6M8/view?usp=sharing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `lesson_name`, `lesson_description`, `video`, `lesson_data`, `member_id`, `cat_id`, `video_name`, `allow_comments`, `Approve`, `pdf`) VALUES
(82, 'الامتحان الثالث ثانية ترم اول', 'الامتحان الثالث ثانية ترم اول', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AYMjRqtncfc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-09', 1, 21, '', 0, 1, 'https://drive.google.com/file/d/14D04ghSeCctSAOi7Iixt9FWDtQ62QAVt/view?usp=sharing'),
(83, ' الماضي المركب الجزء الأول', 'الصورة الرمزية شرح الماضي المركب مع être الجزء الأول', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ju8nPw7O49E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-09', 1, 20, '', 0, 1, 'https://drive.google.com/file/d/1QSOmg51_vOkJf7Xdrj8artFac080n6M8/view?usp=sharing'),
(84, 'الماضي المركب الجزء الثاني ', 'الماضي المركب الجزء الثاني مع avoir', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MGr1KkJjQ7Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-09', 1, 20, '', 0, 1, 'https://drive.google.com/file/d/1QSOmg51_vOkJf7Xdrj8artFac080n6M8/view?usp=sharing'),
(85, 'الوحدة الثالثة -درس 1 الجزء الاول', 'كلمات وقواعد', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2xHAwVJiabM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-14', 228, 20, '', 0, 1, 'https://drive.google.com/file/d/1QSOmg51_vOkJf7Xdrj8artFac080n6M8/view?usp=sharing'),
(86, 'تدريبات الوحدة الثالثة - الجزء الاول', 'حل تدريبات الملزمة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hFztcqSeZY0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-14', 228, 20, '', 0, 1, 'https://drive.google.com/file/d/1QSOmg51_vOkJf7Xdrj8artFac080n6M8/view?usp=sharing'),
(87, 'امتحان 4', 'حل الامتحان الرابع من المراجعة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xC9KicOvTYY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 228, 21, '', 0, 1, ''),
(88, 'امتحان 5', 'حل الامتحان الخامس من مذكر ة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6ATHI2-JZRg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 228, 21, '', 0, 1, ''),
(89, 'امتحان 6', 'حل الامتحان السادس من مذكرة المراجعة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Lixx0cfPo_c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 228, 0, '', 0, 1, ''),
(90, 'امتحان 6', 'حل الامتحان السادس من المراجعة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Lixx0cfPo_c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 228, 0, '', 0, 1, ''),
(91, 'امتحان 6', 'حل الامتحان السادس مراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Lixx0cfPo_c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 228, 21, '', 0, 1, ''),
(92, 'الدرس الثالث', 'تابع شرح الدرس الثالث الجزء الثاني', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ok5e4Zj0gGc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-18', 228, 20, '', 0, 1, ''),
(93, 'الدرس الثالث', 'تدريبات الدرس الثالث الجزء الاخير', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cwAWfch7Lh8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-18', 228, 20, '', 0, 1, ''),
(94, 'الدرس 2 ', 'شرح الدرس الثاني الوخدة الثالثة - الحصة الاولي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zcGt0awuDhE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-21', 228, 20, '', 0, 1, 'https://drive.google.com/file/d/1zLcp5E88OflzBXud-LnAvdUjYXwndSzk/view?usp=sharing'),
(95, 'تابع درس 2', 'الحصة الثانية - الوحدة الثالثة تابع النفي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D6kbyxx1cCI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-21', 228, 20, '', 0, 1, 'https://drive.google.com/file/d/1zLcp5E88OflzBXud-LnAvdUjYXwndSzk/view?usp=sharing'),
(96, 'امتحان 4', 'حل الامتحان الرابع من مذكرة المراجعة ويليه امتحانات اخري', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VNmGhBGODIU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-22', 228, 19, '', 0, 1, ''),
(97, 'امتحان 5', 'حل امتحان الخامس من مذكرة المراجعة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-5bu2eTnfw4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-22', 228, 19, '', 0, 1, ''),
(98, 'امتحان 6', 'حل الامتحان السادس من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L7U72ufUrN0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-23', 228, 19, '', 0, 1, ''),
(99, 'الامتحان السابع', 'حل الامتحان السابع من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U8DHfnI0rNw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-23', 228, 19, '', 0, 1, ''),
(100, 'امتحان 7', 'حل الامتحان السابع من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Vw6-7V_XZNs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-24', 2, 21, '', 0, 1, ''),
(102, 'امتحان 8', 'حل الامتحان الثامن من مذكرة المراجعة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uT-WU2bKBgM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-24', 2, 21, '', 0, 1, ''),
(103, 'الامتحان التاسع', 'حل الامتحان التاسع من المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/d1KwvwySrFM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-24', 2, 21, '', 0, 1, ''),
(104, 'درس2 الحصة 2', 'شرح الحصة الثانية الدرس الثاني - الوحدة الثالثة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vFpT-PZNEB8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-25', 2, 20, '', 0, 1, 'https://drive.google.com/file/d/11Qua_XrnQh0zzbfh6jvCzrSIR94XUY5s/view?usp=sharing'),
(105, 'تدريبات درس2', 'حل الجزء الاول من تدريبات الدرس الثاني الوحدة الثالثة ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/d_gNSpmtTds\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-25', 2, 20, '', 0, 1, ''),
(106, 'الوحدة 3 درس 2', 'حل تدريبات الدرس الثاني الوحدة 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L-IdcSeMn7A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-28', 2, 20, '', 0, 1, ''),
(107, 'حل شيت الزوم ', 'حل اسئلة حصة القواعد الزووم اليوم', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/a1NNxGWfEe0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-28', 2, 20, '', 0, 1, ''),
(108, 'امتحان 8', 'حل الامتحان الثامن من المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5jqOCon6hjk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-30', 2, 19, '', 0, 1, ''),
(109, 'امتحان 9', 'حل الامتحان التاسع من ملزمة الامتحان ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O5A_0Ff1g68\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-30', 2, 19, '', 0, 1, ''),
(110, 'امتحان 10', 'حل الامتحان العاشر والايميلات كاملة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_7xN2IF2Yos\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-30', 2, 19, '', 0, 1, ''),
(111, 'الوحدة 3 درس 3 الحصة 1', 'شرح الحصة الاولي من الدرس الثالث ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/faQfJxBjv5o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-01', 2, 20, '', 0, 1, 'https://drive.google.com/file/d/16P-brtqiQMC5IyJ8Rini54q0sfhVJcD9/view?usp=sharing'),
(112, 'امتحان 2021', 'حل امتحان بالمواصفات الحديثة 2021', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GvkKXIxz9YQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-01', 2, 20, '', 0, 1, 'https://drive.google.com/file/d/16kwB-Q94TJDLcXVbgoAkGmlpSTCZr7oq/view?usp=sharing'),
(113, 'امتحان 10', 'حل الامتحان العاشر من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Fi66Mpv3NSo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-02', 2, 21, '', 0, 1, ''),
(114, 'امتحان محافظة الاقصر', 'امتحان محافظة الاقصر من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uPhJ2keuN0o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-02', 2, 21, '', 0, 1, ''),
(115, 'امتحان سوهاج', 'امتحان محافظة سوهاج من مذكرة المراجعة', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DSwKNPUiu1k\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-02', 2, 21, '', 0, 1, ''),
(117, 'الدرس 3 حصة 2', 'شرح باقي الدرس الثالث - وحدة 3 الحصة الثانية', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PPr7dLpy-rA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-04', 2, 20, '', 0, 0, ''),
(118, 'تدريبات درس 3', 'تدريبات الدرس الثالث الوحدة 3 الحصة الاولي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jO2MdlinQbE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-08', 2, 20, '', 0, 1, ''),
(119, 'تدريبات درس 3 ب', 'تدريبات الدرس الثالث الحصة الثانية', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bmAWpz-Ux-M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-08', 2, 20, '', 0, 1, ''),
(121, 'الوحدة 4 درس 1 حصة 1', 'الوحدة الرابعة - الدرس الاول - الحصة الاولي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yY3hA3fLc9c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-12', 2, 22, '', 0, 1, 'https://drive.google.com/file/d/1D_TYM_jEs_SjfHTMJvXyCX7MPjJW16iD/view?usp=sharing'),
(122, 'الوحدة 4 الدرس 1 الحصة 2', 'شرح الحصة الثانية من الدرس الاول', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IJATXVhbGY8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-15', 2, 22, '', 0, 1, 'https://drive.google.com/file/d/1FEMiLeUxKp98Imm8jNlFrJpJqx-TLWwH/view?usp=sharing'),
(123, 'تدريبات الوحدة 4 الدرس 1 الحصة 1', 'اجابة تدريبات الوحدة الرابعة - الدرس الاول - الحصة الاولي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Mg7xf6uM2Vo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-19', 2, 22, '', 0, 1, ''),
(124, 'تدريبات الوحدة 4 الدرس 1 الحصة 2', 'اجابة تدريبات الوحدة 4 درس 1 الحصة 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bvhM1nzou2M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-19', 2, 22, '', 0, 1, ''),
(125, 'sheet 4', 'تدريبات اسبوعية بأسئلة مستويات عليا', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/N4GtclBFm5E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-19', 2, 22, '', 0, 1, ''),
(126, 'الوحدة 4 الدرس 2 الحصة 1', 'شرح الوحدة 4 الدرس 2 الحصة الاولي ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Vqug0mkKxzs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-24', 2, 22, '', 0, 1, ''),
(127, 'sheet 5', 'حل الشيت  5', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OOuK4y_bTI8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-02-24', 2, 22, '', 0, 1, ''),
(128, 'الوحدة 4 الدرس 2 الحصة 2', 'الوحدة 4 الدرس 2 الحصة 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OGZfOXjXDgM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-03-01', 2, 22, '', 0, 1, ''),
(129, 'الوحدة 4 الدرس 3 الحصة 1', 'شرح درس 3 من الوحدة الرابعة الحصة الاولي', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kF2Sgz7BeBU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-03-08', 2, 22, '', 0, 1, ''),
(130, 'الوحدة الرابعة ثالثة', 'الوحدة الرابعة درس 3 حصة 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/blF02gEl_ys\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-03-08', 2, 22, '', 0, 1, ''),
(131, 'sfxvdsv', 'svdscvsd', '', '2021-03-27', 1, 6, 'Glass Maker - 3612 (2).mp4', 0, 1, 'dvvsvvc'),
(132, 'gbcbf', 'fbfbf', 'https://www.youtube.com/watch?v=bCcQk78o3KE', '2021-03-27', 1, 20, NULL, 0, 1, 'https://www.youtube.com/watch?v=bCcQk78o3KE'),
(133, 'v xcv', 'dzcvxv', 'https://www.youtube.com/watch?v=bCcQk78o3KE', '2021-03-27', 1, 20, NULL, 0, 0, 'https://www.youtube.com/watch?v=bCcQk78o3KE'),
(134, 'التشابة', 'scvdfvgfd', '', '2021-03-27', 1, 20, 'Glass Maker - 3612 (2).mp4', 0, 1, 'http://localhost/mywork/elboghdady_back/');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_member`
--

CREATE TABLE `lesson_member` (
  `lesson_member_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `cat_id` int(11) DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `next_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_member`
--

INSERT INTO `lesson_member` (`lesson_member_id`, `lesson_id`, `member_id`, `date`, `type`, `cat_id`, `last_date`, `next_id`) VALUES
(2, 83, 243, '2021-02-15', 0, NULL, NULL, 0),
(4, 123, 259, '2021-02-19', 1, NULL, NULL, 0),
(5, 128, 265, '2021-03-03', 1, NULL, NULL, 0),
(6, 121, 265, '2021-03-03', 1, NULL, NULL, 0),
(7, 122, 265, '2021-03-03', 1, NULL, NULL, 0),
(8, 123, 265, '2021-03-03', 1, NULL, NULL, 0),
(9, 124, 265, '2021-03-03', 1, NULL, NULL, 0),
(10, 126, 265, '2021-03-03', 1, NULL, NULL, 0),
(11, 83, 265, '2021-03-03', 1, NULL, NULL, 0),
(12, 84, 265, '2021-03-03', 1, NULL, NULL, 0),
(13, 86, 265, '2021-03-03', 1, NULL, NULL, 0),
(14, 92, 265, '2021-03-03', 1, NULL, NULL, 0),
(15, 93, 265, '2021-03-03', 1, NULL, NULL, 0),
(16, 94, 265, '2021-03-03', 1, NULL, NULL, 0),
(17, 104, 265, '2021-03-03', 1, NULL, NULL, 0),
(18, 85, 265, '2021-03-03', 1, NULL, NULL, 0),
(19, 95, 265, '2021-03-03', 1, NULL, NULL, 0),
(20, 105, 265, '2021-03-03', 1, NULL, NULL, 0),
(21, 106, 265, '2021-03-03', 1, NULL, NULL, 0),
(22, 117, 265, '2021-03-03', 1, NULL, NULL, 0),
(23, 118, 265, '2021-03-03', 1, NULL, NULL, 0),
(24, 119, 265, '2021-03-03', 1, NULL, NULL, 0),
(25, 111, 265, '2021-03-03', 1, NULL, NULL, 0),
(26, 112, 265, '2021-03-03', 1, NULL, NULL, 0),
(27, 84, 1, '2021-03-26', 2, 20, '2021-03-26', 1),
(28, 85, 1, '2021-03-26', 1, 20, NULL, 0),
(29, 92, 1, '2021-03-26', 1, 20, NULL, 0),
(30, 132, 1, '2021-03-27', 1, 20, NULL, 0),
(31, 134, 1, '2021-03-27', 1, 20, NULL, 0),
(32, 83, 1, '2021-03-27', 2, 20, '2021-03-27', 1),
(33, 112, 1, '2021-03-27', 2, 20, '2021-03-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `live_id` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live`
--

INSERT INTO `live` (`live_id`, `link`, `cat_id`, `date`) VALUES
(7, 'fsrghhgfds', 6, '2021-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `main_id` int(11) NOT NULL,
  `first` int(11) NOT NULL DEFAULT 50,
  `second` int(11) NOT NULL DEFAULT 50,
  `third` int(11) NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`main_id`, `first`, `second`, `third`) VALUES
(1, 60, 50, 70);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `regstatus` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `avatar` varchar(225) NOT NULL DEFAULT 'img.png',
  `lil` text DEFAULT NULL,
  `exam answer` int(11) DEFAULT NULL,
  `lil_data` date DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `only` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`userid`, `username`, `password`, `email`, `fullname`, `groupid`, `regstatus`, `date`, `avatar`, `lil`, `exam answer`, `lil_data`, `phone`, `only`) VALUES
(1, 'احمد الطارون', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', '', 6, 1, '2021-01-31', 'img.png', NULL, NULL, NULL, 2147483647, 1),
(2, 'محمد البغدادى', 'f550a7aec3628542c0420c38b9b0f52faef3dc7c', 'elboghdady@gmail.com', NULL, 1, 1, '2021-01-24', 'img.png', NULL, NULL, NULL, 1111784242, 1),
(230, 'Mohamed Sobhy', '5ff8ed5ef524860fb111072cd5023de1d0b8dbf1', 'mohamedd.business@gmail.com', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1013539594, 0),
(231, 'Ahmed Gamel Waly ', '8adb5f6d68fb2dad145aa0bb5f60d49baa2889d6', 'ahmedwaly070@gmail.com', NULL, 5, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1063647503, 0),
(232, 'Rawan Rafat ', 'b6a81d6edd065c4d4e0b3b87d2938f66280e4726', '', NULL, 4, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1032115654, 0),
(233, 'zeyadalsawi ', '259ee10cd521eaeef1f5f27939254777113e801d', 'zeyadalsawi@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1062160394, 0),
(234, 'شيماء عبدالرازق حجازي ', 'f2c8c29246174dcced9e2f054e9813c4747878d9', 'shaimaabdoa@gmail', NULL, 4, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1019168858, 0),
(235, 'Medo Nassar', '5c4b52a5774591c022bc5d43a525a50ae376bb5a', 'mn2933321@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1014372787, 0),
(237, 'كريمة عيد السعيد ', '70eae965a5970228ea9a65d8cf03c8246b724e84', '', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1063739737, 0),
(238, 'احمد خالد زكريا', '53b722fe6a32e35699af061920916a4b927f4a61', '', NULL, 0, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1014273476, 0),
(239, 'شروق احمد', '46867f2df71931a9d0560af6e3a7467273b2de30', 'shroukdeana325@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1018821853, 0),
(240, 'يمنى اشرف الجندي', 'abfda76d67ba5faf6d7ba18be2f761656659d4e3', '', NULL, 5, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1011728674, 0),
(241, 'أحمد أسامة حمدي', '9cdcf4961c73be2e970fa024d0900af6a5029556', 'ahmedosamamorsy2005@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1013667227, 0),
(242, 'منة الله فرحات محمد ', '26a2bd9d3f4efacdba384814eef838a9035b7ec9', '', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1069626819, 0),
(243, 'عبدالرحمن وليد ', 'ed193b6b63f107537b27c1fc3e401ce175f3c324', '', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1064654523, 0),
(244, 'Mohamed EL-sopkey', 'd8b3088ecb36510ae4fa686ec6668d05c9abfb3e', 'elsopkeymohamed10@gmail.com', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1027988199, 0),
(245, 'أحمد عبد الرحيم حامد', '455a3a6f18bd3d19d5a566d461555072be7ac985', 'medo162003@gmail.com', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1091028577, 0),
(246, 'صلاح فتوح الشاذلى ', '91417b59d5e139c58ce48338d94fd6b3cdecdc97', 'salahelshazly552f5@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1064087275, 0),
(248, 'محمد فكري عبدالستار', 'ab6c3f0645a150f01203235946f5ae6430858fe2', '552256485@edu2.moe.edu.eg', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1029655864, 0),
(250, 'نورهان عرفه عبد الفتاح ', '3a2a03dfbe68d1e068ccc3e22e2af222967580c6', 'norhanarafaa9@gmail.co', NULL, 5, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1013915240, 0),
(251, 'Amar', '8bb38e83ca55b388ca30ca7a1e03412495100b27', 'amar.kora0@gmail.com', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1063553096, 0),
(252, 'عبدالرحمن عبدالمنعم شوقي ', '424dddfde1ad78d141ffa6ca04d6bc0630643060', '', NULL, 5, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1012001248, 0),
(253, 'محمد عيد شعبان محمد ', '113a2e444261b9af769719e7572bc67d9306068f', '444749356@g102019.moe.edu.eg', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1025631672, 0),
(254, 'Ziad Mohammed Nasr', '7d5ad6e22c9c5592f26a94b8cfe7b7bfd8d14c6a', 'mziad9407@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1064507182, 0),
(256, 'Aya mohammed ', '8fcf13d3fa1f2e23a374ebc231a125a69d7d37cd', 'aya162464@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1025068233, 0),
(257, 'ايمان ابراهيم عبدالحميد', '9048ead9080d9b27d6b2b6ed363cbf8cce795f7f', 'emanebrahim855@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1067556246, 0),
(258, 'رحمه حمدي ', 'ed6c2081d29e5e1a81f28ba660112dc5b04ffdcf', '', NULL, 4, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1019279739, 0),
(259, 'سارة عبدالكريم', '036c1ba3ae69c3ed62472de194d8a993babd6cf1', 'sarahkaram2020@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1014126344, 0),
(260, 'شيماء سعيد الشحات', '0ae0f3d7070613239d43ff1c345f57820942cba1', 'bolaelmoghany673@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1067554057, 0),
(261, 'مؤ من محسن ابراهيم عبداللطيف', '223a741bcec23a096e628b684c239ed111fc67c5', '01021338941@yahoo.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1021338941, 0),
(262, 'basmaelbedawy434', '36fc9dae46ce6fff0c4759da8d24f126f786128b', 'basmaelbedawy434@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1097759305, 0),
(263, 'عادل سعد المغني ', '8b2330fe2acda83220b17c01da08651cc7152e70', 'adelsaadelmoghany@gimal.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1090615612, 0),
(264, 'abdelrahman', '4d2bcc8662f86720cc167b3e288ba42ba9077786', 'newlab2000@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1068205335, 0),
(265, 'Mohamed Nader', '37a415cc915bdbc74c7f82ec3ff7c54d63e416d0', 'messibar1019@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 2147483647, 0),
(266, 'احمد سلام ابراهيم', '519cb3594cb77eb027d4b6c9779efdf9eb20888e', 'as6006557@gmail.com', NULL, 6, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1022675869, 0),
(268, 'فاديه عاطف الجندي ', 'ea0957daddc4d9d90999da690fbdceb0e7c4e8e1', 'fadyaelgendy77@gmail.com', NULL, 4, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1063950357, 0),
(269, 'MohabWael', 'dba0f5468bbe334535c9a4ba3001419970ee6ead', 'mohab.ben.wael@gmail.com', NULL, 6, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1156641163, 0),
(270, 'Ahmed abdllah', 'c277727b93a70c1343691d945888f5f903b1da8c', 'ahmedbeltagi737@gmail.com', NULL, 5, 0, '2021-01-09', 'img.png', NULL, NULL, NULL, 1097526526, 0),
(271, 'سهيلة زايد ', '6cf47e3cd6e5dc1db67c96eda86307f6f82321b1', 'sz01032172746@gmail.com', NULL, 5, 1, '2021-01-09', 'img.png', NULL, NULL, NULL, 1032172746, 0),
(272, 'عبدالله', '936dc25b7287d01741c0eb6d7edb5e54492e9063', 'abdotask384@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1128443539, 0),
(274, 'حنين احمد سعيد', '0592b3308a5a9a46e632dc552a14a74bb6edbcfd', '', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1006554527, 0),
(276, ' basmala', 'cce4229d3a446c687f23de7b5ee34c057cfc9d90', '', NULL, 4, 1, '2021-01-10', 'img.png', NULL, NULL, NULL, 1016189256, 0),
(277, 'حسناء عرفه احمد ', '012a5483d9a0feccebccc535610213267549f2fe', 'hsoar24@gmail.com', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1094935525, 0),
(279, ' محمد السعداوي ', '2f784c39cc0ba0a0e71f40cdf5b6d82f7db06421', '', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1002249130, 0),
(280, 'ندى رمزى سمير', 'eed2efb0fc92377e8072ca2f2bc83bfc72832569', 'nadaramzy42@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1021313571, 0),
(281, 'روان حموده كامل يونس ', 'a0092b9344791ca045e28c4ba9a3ffbeb92f22bf', 'rawanhamoda63@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1015560914, 0),
(282, 'osamagamal', 'c6461503054f5b8e3d6fdbf51798d2d075ab48a7', 'osandquarnt03@gmail.com', NULL, 6, 1, '2021-01-10', 'img.png', NULL, NULL, NULL, 1025718810, 0),
(283, 'Omnia Mohamed kotb', 'f24fdd46d22a7c9903dd8432347ed30cd720093d', '', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1029240057, 0),
(284, 'شيماء السعيد عبدالحي', 'a1ec612344e9251f4de30f9c5b3200bf90e5519f', 'selsaid162@gmail.com', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1024961351, 0),
(285, 'رافت إبراهيم ', '5522a10388fb08ced441cd7be9953ca1674f7962', '', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1149856629, 0),
(286, 'عبدالرحمن حسن محمد حسن ', 'f9591debfcd547a61ab743daef2817889e6ce3fc', 'hsnb9813@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1012435766, 0),
(287, 'Hager gama ', '9048ead9080d9b27d6b2b6ed363cbf8cce795f7f', 'hagergamal1660@gmail.com', NULL, 6, 1, '2021-01-10', 'img.png', NULL, NULL, NULL, 1004589507, 0),
(289, 'Salma Moumen ', '1cbfe131b6020867b31661c6991f9d55ceec617e', 'moumensalma737@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1021883774, 0),
(290, 'نورا عاطف الشهاوي', '98a7e0415871692aa06892baeb6b50154de1ceea', 'atefnoura22@gmail.com', NULL, 6, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1022625197, 0),
(292, 'خالد محمد عبدالستار ', '8efc50ac63eb2d00ef507d165f755119295d1580', 'km7334841@gmail.com', NULL, 4, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1060817977, 0),
(293, 'مي صابر عبدالسلام', 'daa4bbd3f8c1c608262a02fb48abe0f3259345e2', 'hhhh@567', NULL, 5, 0, '2021-01-10', 'img.png', NULL, NULL, NULL, 1021547194, 0),
(294, 'toqa Hesham darwesh mohamed', '8d7050ffcf7a2ee29cd7692080e8c9e5baf3d6ff', 'tqyhsham349@gmail.com', NULL, 4, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1066459095, 0),
(297, 'Nada1223', '4419bc65ccab002770b00db20969cfe8ddaa652d', 'elshathlynada@gmail.com', NULL, 6, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1012492316, 0),
(298, 'شهد رضا محمود ', '838f2f3482888c55c623b0800ed2d3240039b28e', 'rdam34885@gmail.com', NULL, 4, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1013834761, 0),
(299, 'فوزى محمد فوزى', '9e0140b37610e8cac06c938e665f2262d7328c66', 'fawzy.mohammed4040@gmail.com', NULL, 0, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1144655126, 0),
(300, ' محمد رضا جمعه ', 'e1eb299869f2c21d0bd3f72d5d01b26f1de96e0a', '', NULL, 5, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1029036583, 0),
(301, 'ياسمين محمد ', '02bee046216c609fff5cf4789c83ae4a7950baf8', 'Yasmin123456ee@gnail.com', NULL, 6, 1, '2021-01-11', 'img.png', NULL, NULL, NULL, 1060805413, 0),
(302, 'اسماء رمزى', '2e8c0277e396fabf683e56c8b7fa7e6dad68c679', 'asmaa@gmail.com', NULL, 5, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1015399407, 0),
(303, 'Bassam Mahdy', '11532092b831d6db40604540eaa950607f9b9af5', 'bassammahdy1@gmail.com', NULL, 4, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1097537556, 0),
(305, 'دينا فايز احمد', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 'dinafaiz166@gmail.com', NULL, 6, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1014538432, 0),
(306, 'إهداء هلال محمد عباس ', '58e6824acddc6207d43ce9655d4087e5aa927dec', 'ahdahlal@gmial.com', NULL, 6, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1026309086, 0),
(307, 'Basmals', 'cce4229d3a446c687f23de7b5ee34c057cfc9d90', '', NULL, 4, 0, '2021-01-11', 'img.png', NULL, NULL, NULL, 1016189256, 0),
(308, 'Basmala', 'cce4229d3a446c687f23de7b5ee34c057cfc9d90', '', NULL, 4, 0, '2021-01-12', 'img.png', NULL, NULL, NULL, 1016189256, 0),
(309, 'أسماء محمود السيد ', '76e1836006f5a801bc6d9ae0d321c407514daa29', 'asma.ma882@gmail.com', NULL, 6, 0, '2021-01-12', 'img.png', NULL, NULL, NULL, 1010832159, 0),
(311, 'امانى بهجت عبدالقوى زامل ', 'ae367df8b1b0e04820720317f8a1a3063d5107e1', 'amanybahgat2019@Gmail.com', NULL, 5, 1, '2021-01-13', 'img.png', NULL, NULL, NULL, 1012545072, 0),
(312, 'ياسمين محمد محمود بسيوني', 'a2794168995dca21b79711ac67a2b2c2317c8d58', '', NULL, 4, 0, '2021-01-13', 'img.png', NULL, NULL, NULL, 1004687083, 0),
(313, 'وصال ابراهيم', 'ae7a4996b50342d0b0aa01060263ec2046469fdc', '', NULL, 6, 1, '2021-01-13', 'img.png', NULL, NULL, NULL, 1067769104, 0),
(314, 'ايه مسعد فتحي مسعد ', '8c7675ce76643241c35b9879b613d5329c7d008b', 'ayamosad919@gmail.com', NULL, 6, 1, '2021-01-13', 'img.png', NULL, NULL, NULL, 1010506784, 0),
(315, 'نورهان محمود رجب ', '0182a468962ead83f7e104739f1132a4c71f6324', 'Mahmoudnoor231nm648790@gmail.com', NULL, 6, 0, '2021-01-13', 'img.png', NULL, NULL, NULL, 1068391323, 0),
(316, 'سماسم محمد حماد', 'cf6795da1ef2ab0d009f075c796e5773327e4699', 'smasmhmad086@gmail.com', NULL, 4, 0, '2021-01-13', 'img.png', NULL, NULL, NULL, 1060481543, 0),
(317, 'روان احمد حماد', '1c6392a5d6bb1127365240d3a6cde578ea61c79f', '', NULL, 4, 0, '2021-01-14', 'img.png', NULL, NULL, NULL, 1028486131, 0),
(318, 'اسراء حسام عبدالفتاح الشريف', '9048ead9080d9b27d6b2b6ed363cbf8cce795f7f', 'eosam9143@gmail.com', NULL, 6, 1, '2021-01-14', 'img.png', NULL, NULL, NULL, 1005121761, 0),
(319, 'أحمد خميس الجنايني ', '3d6ac4a1a3911a98bb88e8114a43f21fad9d5845', 'ahmedalgnauny@gmail.com', NULL, 6, 0, '2021-01-14', 'img.png', NULL, NULL, NULL, 1065876946, 0),
(320, 'Abdallah Roshdy', '3501dfd1df35082b7b9aff866a0aca871fb274c4', 'a2889205@gmail.com', NULL, 5, 0, '2021-01-14', 'img.png', NULL, NULL, NULL, 1022724835, 0),
(321, 'أسماء حسنى عبد الغفور بنات ', '8cb2237d0679ca88db6464eac60da96345513964', 'asmahsny031@gmail.com', NULL, 6, 0, '2021-01-14', 'img.png', NULL, NULL, NULL, 1012593148, 0),
(323, 'اماني عبدالفتاح ابراهيم', '90c8a18e34924f37d2eac67dcfda863b256d2285', '', NULL, 4, 0, '2021-01-15', 'img.png', NULL, NULL, NULL, 1027326792, 0),
(324, 'احمد السيد فتحي', 'bb3141a4b40b8c80f89879b9577ff92d0ae785e0', 'BlackBerry789p5@gmail.com', NULL, 6, 0, '2021-01-15', 'img.png', NULL, NULL, NULL, 1062110127, 0),
(325, 'يوسف السيد يوسف محمد', '9b82a18a45f235f1cc22f64704b602dcebd17623', 'yossefalsayed999@gmail.com', NULL, 6, 0, '2021-01-16', 'img.png', NULL, NULL, NULL, 1010956187, 0),
(326, 'Mohamed ameen allam', 'c40d21e7886e3ade91138f989cdab94662b6d164', 'lammhmdlam952@gmail.com', NULL, 5, 0, '2021-01-16', 'img.png', NULL, NULL, NULL, 1008202096, 0),
(327, 'سهيلة بدوي فوزي القبلاوي ', '96eae7c4590f09ab053112ab2eb6a1d6e4fc0d41', 'solabadawi@gmail.com', NULL, 6, 0, '2021-01-16', 'img.png', NULL, NULL, NULL, 1032613624, 0),
(329, 'moaaz fowzy', 'f565468355ed36af3844a32b588bc815c9d13279', 'moaazfowzy1@gmail.com', NULL, 4, 0, '2021-01-16', 'img.png', NULL, NULL, NULL, 1000814910, 0),
(330, 'سامي معتز', '8cb2237d0679ca88db6464eac60da96345513964', '', NULL, 5, 0, '2021-01-17', 'img.png', NULL, NULL, NULL, 1067958182, 0),
(331, 'مي صابر عبدالسلام احمد ', '73cd2e9724fad907bf7c37bb4d001a5568eb2305', 'alhopa@55lsafy', NULL, 5, 1, '2021-01-17', 'img.png', NULL, NULL, NULL, 1021547194, 0),
(332, 'ريهام احمد سمير محمد', 'ef9490aa6b9793ceb29a924a09990a4b2f642ed2', 'ahmed.samer2727@yahoo.com', NULL, 4, 0, '2021-01-18', 'img.png', NULL, NULL, NULL, 1062603931, 0),
(333, 'محمد رضا جمعه ', 'e1eb299869f2c21d0bd3f72d5d01b26f1de96e0a', 'rdam19246@gmail.com', NULL, 5, 0, '2021-01-18', 'img.png', NULL, NULL, NULL, 1029036583, 0),
(334, 'شهد الحايس ', '3ee78903e28b7bcd4dd96a20f7556d1887e0d2b7', 'shahdelhays91@gmai.com', NULL, 5, 0, '2021-01-18', 'img.png', NULL, NULL, NULL, 1025857262, 0),
(335, 'عبدالله محمد مرشدي', '358e7fe7925e22f1dc24cefade90bfbf9c6c5104', 'Abdallahmohammedelshazly12@gmail.com', NULL, 6, 0, '2021-01-19', 'img.png', NULL, NULL, NULL, 1005026391, 0),
(336, 'زياد يحيي زكريا عبد الحليم', '031711b0dc3d75639183f6145b0e371699dd21a7', 'zyaduhuia776@gmil.com', NULL, 4, 0, '2021-01-19', 'img.png', NULL, NULL, NULL, 1062580553, 0),
(337, 'Amira', '4e55a9411afa0042a2a19efde19c877d9bb9340b', 'amira123@gmail.com', NULL, 5, 0, '2021-01-20', 'img.png', NULL, NULL, NULL, 1027130037, 0),
(338, 'روان اشرف رمضان قاسم', '88a1d716729c7b2d71c44a430ec897887b5bc79a', 'qasemashraf1234@gmail.com', NULL, 4, 0, '2021-01-20', 'img.png', NULL, NULL, NULL, 105887207, 0),
(339, 'يارا سليمان محمود محمد', 'f2aaf91ea8031241dd6180309761724e10ef31a1', 'eslemanyara123@gmail.com', NULL, 6, 0, '2021-01-22', 'img.png', NULL, NULL, NULL, 1067064130, 0),
(340, 'دينا اسامه عبدالله فرج ', '0b1e1bf83d21bd5eb42463e13608add918fe5854', '', NULL, 0, 0, '2021-01-22', 'img.png', NULL, NULL, NULL, 1023851027, 0),
(342, 'Ziad Mohammed Nasr 1A', '7d5ad6e22c9c5592f26a94b8cfe7b7bfd8d14c6a', 'mziad9407@gmail.com', NULL, 4, 0, '2021-01-22', 'img.png', NULL, NULL, NULL, 1064507182, 0),
(343, 'محمد سرحان', '331f57469f8496e8c9b6c7ba46f45696087028e5', '', NULL, 6, 0, '2021-01-23', 'img.png', NULL, NULL, NULL, 1025574714, 0),
(344, 'حبيبه احمد سعيد', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', '', NULL, 4, 1, '2021-01-23', 'img.png', NULL, NULL, NULL, 1003634982, 0),
(345, 'أحمد السيد فتحى ', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'ahmad.123456789p5@gmail.com', NULL, 6, 0, '2021-01-23', 'img.png', NULL, NULL, NULL, 1062110127, 0),
(347, 'فوزي محمد فوزى', '14df9e6b572bba06d2064c5f89ac0bb6b8634aae', 'fawzy.mohammed4040@gmail.com', NULL, 6, 0, '2021-01-24', 'img.png', NULL, NULL, NULL, 1068274521, 0),
(348, 'محمد محمود محمد عبد الغفار', '59594d02803cf23323dda93c3bd15d7baf1dcf89', 'Mohamedmahmoud09325@gmail.com', NULL, 4, 0, '2021-01-24', 'img.png', NULL, NULL, NULL, 1065356916, 0),
(349, 'احمد السيد ', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '123wry653t@gmail.com', NULL, 6, 0, '2021-01-24', 'img.png', NULL, NULL, NULL, 1062110127, 0),
(351, 'احمد خالد زكريا عبد الحليم', 'c129b324aee662b04eccf68babba85851346dff9', '', NULL, 0, 0, '2021-01-25', 'img.png', NULL, NULL, NULL, 1014273476, 0),
(353, 'احمد رشاد ', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '', NULL, 4, 0, '2021-01-26', 'img.png', NULL, NULL, NULL, 1025411563, 0),
(355, 'فرح الحسيني ', 'e8b532d2b925930198bebabd9c2545059d9a4b3f', 'alshathlyfarah@gmail.com', NULL, 0, 0, '2021-01-27', 'img.png', NULL, NULL, NULL, 1002283962, 0),
(356, 'ساره عبدالرازق حجازي ', 'f2c8c29246174dcced9e2f054e9813c4747878d9', 'shaimaabdoa@gmail', NULL, 4, 0, '2021-01-28', 'img.png', NULL, NULL, NULL, 1019168858, 0),
(357, 'فاطمة أمين محمد ', '7fccf5d94cd67d7804a0d62a010f30c20f4c7f6e', 'am8398237@gmail.com', NULL, 4, 0, '2021-01-28', 'img.png', NULL, NULL, NULL, 1017661975, 0),
(358, 'محمد هاني محمد ', 'a7ffade0b142368e510a79cb3806a6e86933e75f', 'mohamed0102465@gmail.com', NULL, 4, 0, '2021-01-29', 'img.png', NULL, NULL, NULL, 1050071125, 0),
(359, 'مريم احمد الكومى احمد', '7be2df50ed4ad7c9baef74ae863e63e44b98deba', 'mrymam327@gmail.com', NULL, 4, 0, '2021-01-30', 'img.png', NULL, NULL, NULL, 1030940115, 0),
(360, 'ياسمين محمد عبدالله ', '9362bc8671977645e9d4f7c9dfc66336c978e7c6', '', NULL, 6, 0, '2021-01-30', 'img.png', NULL, NULL, NULL, 1060805413, 0),
(361, 'حبيبه رضا', '8cb2237d0679ca88db6464eac60da96345513964', '', NULL, 5, 1, '2021-01-31', 'img.png', NULL, NULL, NULL, 1003340053, 0),
(364, ' رؤى خالد عادل ', 'd04f281009be2596ac2f73cac821d00ed4da3176', 'roaakhalid261@gmail.com', NULL, 6, 1, '2021-02-04', 'img.png', NULL, NULL, NULL, 1022741036, 0),
(365, '  احمد براهيم رحيم', 'bd5e5eb049f3907175f54f5a571ba6b9fdea36ab', '', NULL, 4, 0, '2021-02-04', 'img.png', NULL, NULL, NULL, 1017742967, 0),
(366, 'محمد انور', '330208e2cda2df1026ce5471f830b6b00f6c37e4', '', NULL, 4, 1, '2021-02-04', 'img.png', NULL, NULL, NULL, 1095626041, 0),
(368, 'مي عطا علي ', '47ffaf95c8a2422b906c51e9bf2a9fb2df734e2c', 'mytalyhybh@gmail.com', NULL, 4, 1, '2021-02-06', 'img.png', NULL, NULL, NULL, 1021950360, 0),
(370, 'asmaa ahmed', '8cb2237d0679ca88db6464eac60da96345513964', '', NULL, 6, 1, '2021-02-06', 'img.png', NULL, NULL, NULL, 1097033117, 0),
(371, 'امنيه يحيى السيد ', '908a71a81865cb75cd5f46dfc93a9ff46d91c940', 'omniaelmasry57@gmail.com', NULL, 6, 0, '2021-02-13', 'img.png', NULL, NULL, NULL, 1061135854, 0),
(372, 'عمر البغدادي', '331f57469f8496e8c9b6c7ba46f45696087028e5', '', NULL, 6, 1, '2021-02-14', 'img.png', NULL, NULL, NULL, 1025574714, 0),
(373, 'زياد يحيي زكريا', '031711b0dc3d75639183f6145b0e371699dd21a7', 'zyaduhuia776@gmil.com', NULL, 4, 0, '2021-02-19', 'img.png', NULL, NULL, NULL, 1062580553, 0),
(374, 'شيماء سعيد الشحات محمد', '7dda8bbe3211e994e97d48164f7a0afde06f642d', 'bolaelmoghany673@gmail.com', NULL, 4, 0, '2021-02-20', 'img.png', NULL, NULL, NULL, 1550507664, 0),
(375, 'فوزي محمد فوزى فؤاد', '14df9e6b572bba06d2064c5f89ac0bb6b8634aae', '', NULL, 6, 0, '2021-02-20', 'img.png', NULL, NULL, NULL, 1068274521, 0),
(376, 'Roaa Mahmoud', 'eac021144a33c828aa158ed6b46bb48ebcd078bd', 'roaaelshafey6@gmail.com', NULL, 6, 0, '2021-02-21', 'img.png', NULL, NULL, NULL, 1063283469, 0),
(377, 'Aya mohamed ', '5ad0cc94382db917fe7f7b0d5211fe7a4dded13a', 'ayh08425@gmail.com', NULL, 6, 1, '2021-02-23', 'img.png', NULL, NULL, NULL, 1010190937, 0),
(378, 'Omnia Saad', '3bed391d83be92d04f5ab1a0f0553a2df8596434', 'emoana728@gmail.com', NULL, 6, 0, '2021-02-28', 'img.png', NULL, NULL, NULL, 1096755059, 0),
(379, 'حبيبه رضا جاد الله', '54a06178bf60f8030e719bbd66636dbad62da59a', '', NULL, 5, 1, '2021-03-02', 'img.png', NULL, NULL, NULL, 1115118064, 0),
(380, 'احمد الطارونszdfdsf', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', NULL, 5, 0, '2021-03-23', 'img.png', NULL, NULL, NULL, 2147483647, 0),
(381, 'احمد الطارونszdfdsfszfdf', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', NULL, 6, 0, '2021-03-23', 'img.png', NULL, NULL, NULL, 2147483647, 0),
(382, 'احمد محمد', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', NULL, 4, 0, '2021-03-27', 'img.png', NULL, NULL, NULL, 1066343874, 0),
(383, 'احمد الطارونdxvdzsd', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', NULL, 7, 0, '2021-04-04', 'img.png', NULL, NULL, NULL, 454545454, 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `user_id`, `date`, `username`, `email`) VALUES
(11, 'gdxfgxfbg', 1, '2021-03-26', NULL, NULL),
(12, 'saccasdcxzcdcxasc', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(13, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(14, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(15, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(16, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(17, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(18, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(19, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(20, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(21, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(22, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(23, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(24, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(25, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(26, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(27, 'cadvzdcsdd', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(28, 'dczcdscsdcsdc', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(29, 'ahmed', NULL, '2021-03-26', 'احمد الطارون', 'mastercode179@gmail.com'),
(30, 'hggfyjguyfhtdrgdffr', NULL, '2021-03-27', 'احمد الطارون', 'mastercode179@gmail.com'),
(31, 'fbdxzfddhg', NULL, '2021-04-04', 'dczvxbfx', 'mastercode179@gmail.com'),
(32, 'dvgdfgf', NULL, '2021-04-04', 'dszf', 'mastercode179@gmail.com'),
(33, 'fhfghf', NULL, '2021-04-04', 'htdtcdh', 'mastercode179@gmail.com'),
(34, 'thfghyrd', NULL, '2021-04-04', 'dsgfxgb', 'mastercode179@gmail.comf'),
(35, 'dhdfgdfg', NULL, '2021-04-04', 'fgdfg', 'mastercode179@gmail.com'),
(36, 'fhgfhf', NULL, '2021-04-04', 'dfhfhc', 'mastercode179@gmail.com'),
(37, 'sfdgdfgbd', NULL, '2021-04-04', 'fssxgvsd', 'mastercode179@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `part_id` int(11) NOT NULL,
  `part_name` varchar(255) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` date NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`part_id`, `part_name`, `exam_id`, `number`, `photo`, `date`, `time`) VALUES
(1, 'اللاليبالبفايقلبي', 32, 20, 'undraw_Add_files_re_v09g.png', '2021-03-26', 1200),
(3, 'ثبصيثبيسقبيلبقسثيشصسيثقبسليبسشصيبرللاؤبيبس', 32, 200, '', '2021-03-27', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_data` date NOT NULL,
  `allow_comment` tinyint(4) NOT NULL DEFAULT 0,
  `users` int(11) NOT NULL,
  `tags` varchar(225) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_name`, `post_description`, `post_image`, `post_data`, `allow_comment`, `users`, `tags`, `type`, `cat_id`) VALUES
(50, 'تعلّم اللغة الفرنسية', 'اللغة الفرنسية هي في الوقت نفسه لغة عمل ولغة رسمية في الأمم المتحدة والاتحاد الأوروبي ومنظمة اليونسكو ومنظمة حلف شمال الأطلسي واللجنة الأولمبية الدولية والصليب الأحمر الدولي وفي عدّة هيئات قانونية دولية\r\n\r\n', '36068_france2.jpg', '2021-01-09', 0, 1, '', 1, NULL),
(62, 'ثانية ثانوي', 'تم رفع ثلاث امتحانات بالمنصة 7-8-9 بالتوفيق للجميع', '28849_لوجو 11.jpg', '2021-01-24', 0, 2, '', 0, 5),
(63, 'تذكير هام', 'نذكركم بموعد البث المباشر اليوم أن شاء الله الساعة الثامنة مساء', '2592_IMG_٢٠٢١٠١٢٥_٠٦٥٠٠٦.jpg', '2021-01-28', 0, 2, '', 0, 6),
(64, 'فيديوهات جديدة', 'تم تحميل عدد 3 فيديوهات للصف الثاني', '7150_باريس-1.jpg', '2021-02-02', 0, 2, '', 0, 5),
(65, 'يا شباب اولي', 'الامتحانات السابقة كلها علي المنصة ام تحذف بعد شاهدوها واجدعنوا الامتحانات 20 فبراير', '39230_template_1.png', '2021-02-03', 0, 2, '', 0, 4),
(66, 'ثالثة ثانوي', 'سيتم رفع حصة شرح باقي الدرس الثالث من الوحدة 3 اليوم مساء علي المنصة ومعها اختبار تسميع للكلمات يرجي الاهتمام والتركيز وبالتوفيق للجميع', '57122_Paid_58.png', '2021-02-04', 0, 2, '', 0, 6),
(67, 'الوحدة الرابعة ثالثة', 'تم رفع شرح الدرس الاول من الوحدة الرابع الحصة الاولي بالتوفيق للجميع', '5059_لوجو 11.jpg', '2021-02-12', 0, 2, '', 0, 6),
(68, 'tdfgc', 'hfhvchgfhcxf', '12695_undraw_Add_files_re_v09g.png', '2021-03-26', 0, 1, '', 1, NULL),
(69, 'tghfd', 'dfgfcgfx', '21017_screencapture-file-C-Users-intel-Desktop-gitproject-french-elboghdady-Company-free-html-2021-03-19-14_46_40.png', '2021-03-26', 0, 1, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `ques` text NOT NULL,
  `added_date` date NOT NULL,
  `answer_1` text DEFAULT NULL,
  `answer_2` text DEFAULT NULL,
  `answer_3` text DEFAULT NULL,
  `answer_4` text DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `photo` varchar(225) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `exam_id`, `ques`, `added_date`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `right_answer`, `photo`, `answer`, `part_id`) VALUES
(51, 27, 'كلمة الريف معناها', '2021-01-26', 'le campagne', 'la campagne', 'la chapmagne', 'les champs', '2', 'باريس-1.jpg', NULL, NULL),
(52, 27, 'كلمة بقرة معناها', '2021-01-26', 'le vache', 'ca vache', 'la vache', 'un vache', '3', 'صور-خلفيات-مناظر-طبيعية-جميلة-وخلابة-8.jpg', NULL, NULL),
(53, 27, 'كلمة  حقول  معناها', '2021-01-26', 'le champs', 'la champs', 'les champ', 'les champs', '4', 'لوجو 11.jpg', NULL, NULL),
(54, 27, 'les moutons  تعني', '2021-01-26', 'البقر', 'الماعز', 'الخرفان', 'الطيور', '3', 'باريس-1.jpg', NULL, NULL),
(55, 27, 'le chien معناها ', '2021-01-26', 'الجدي', 'الحصان', 'القط', 'الكلب', '4', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(56, 27, 'مكان سكن الابقار يسمي', '2021-01-26', 'l&#39;etable', 'l&#39;ecurie', 'le poulailler', 'le lycee', '1', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(57, 27, 'le poussin معناها', '2021-01-26', 'مهر صغير ', 'كتكوت ', 'دجاجة ', 'الديك ', '2', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(58, 27, 'ranger تعني', '2021-01-26', 'يعد', 'يرتب', 'يضع', 'يوجد', '2', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(60, 27, 'يناقش معناها', '2021-01-26', 'dicutere', 'discuter', 'dickter', 'parller', '2', 'باريس-1.jpg', NULL, NULL),
(61, 27, 'le poulain معناها', '2021-01-26', 'الحصان ', 'الماعز', 'مهر صغير', 'بستان العنب', '3', 'صور-خلفيات-مناظر-طبيعية-جميلة-وخلابة-8.jpg', NULL, NULL),
(63, 28, 'كلمة مدونة انترنت', '2021-02-01', 'le plog', 'la blog', 'le blog', 'le bloge', '3', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(64, 28, 'كلمة عرض فني', '2021-02-01', 'le spectacle', 'la spectacle', '  lespectacl', '  le sbectacle', '1', 'باريس-1.jpg', NULL, NULL),
(65, 28, 'بعوضة', '2021-02-01', 'une moustique', 'un mostique', 'un moustique', 'un mustique', '3', 'باريس-1.jpg', NULL, NULL),
(66, 28, 'حديقة', '2021-02-01', 'un jardin', 'un gardin', 'un jardine', 'une jardin', '1', 'باريس-1.jpg', NULL, NULL),
(67, 28, 'reunion معناها ', '2021-02-01', 'المجتمع', 'يجتمع', 'اجتماع', 'يجمع', '3', 'باريس-1.jpg', NULL, NULL),
(68, 28, 'اسطورة', '2021-02-01', 'une legend', 'une lejende', 'une legende', 'un legende', '3', 'باريس-1.jpg', NULL, NULL),
(69, 28, 'une abeille', '2021-02-01', 'نحلة ', 'نملة', 'نخلة', 'ذبابة', '1', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(70, 28, 'قصة', '2021-02-01', 'un histoir', 'un histoire', 'une histoir', 'une histoire', '4', 'باريس-1.jpg', NULL, NULL),
(71, 28, 'اعداد - تجهيز', '2021-02-01', 'une preparatien', 'une preparation', 'un preparition', 'une preperation', '2', 'صور-خلفيات-مناظر-طبيعية-جميلة-وخلابة-8.jpg', NULL, NULL),
(72, 29, 'كلمة شاب معناها', '2021-02-04', 'jeuness', 'jaune', 'jeune', 'jeu', '3', 'باريس-1.jpg', NULL, NULL),
(73, 29, 'en retard', '2021-02-04', 'متأخر', 'مبكرا', 'مهر صغير', 'يذهب مبكرا', '1', 'باريس-1.jpg', NULL, NULL),
(74, 29, 'الاول  معناها', '2021-02-04', 'primaire', 'secondaire', 'premier', 'un', '3', 'باريس-1.jpg', NULL, NULL),
(75, 29, 'يشارك في معناها', '2021-02-04', 'participer', 'partir', 'participier', 'parler', '1', 'باريس-1.jpg', NULL, NULL),
(76, 29, 'tout', '2021-02-04', 'كل ', 'بعض', 'معظم', 'اغلب', '1', '', NULL, NULL),
(77, 29, 'ينام   معناها', '2021-02-04', 'dormir', 'dormer', 'dorter', 'endormir', '1', 'باريس-1.jpg', NULL, NULL),
(78, 29, 's&#39;occuper de ', '2021-02-04', 'يشغل', 'يكتشف', 'ينشغل بــــ', 'يحمل', '3', 'باريس-1.jpg', NULL, NULL),
(79, 29, 'ينهي شئ', '2021-02-04', 'prendre ', 'reprendre', 'se terminer', 'terminer', '4', 'باريس-1.jpg', NULL, NULL),
(80, 29, 'dessiner', '2021-02-04', 'يلون', 'يرسم', 'يتعلم', 'يمارس ', '2', 'باريس-1.jpg', NULL, NULL),
(81, 29, 'يتسلي', '2021-02-04', 'amuser', 's&#39;amuser', 'lire', 'dire', '2', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(82, 29, 'يجهز السفرة', '2021-02-04', 'metrre la table', 'metre la table ', 'metter la table', 'mettre la table', '4', 'باريس-1.jpg', NULL, NULL),
(83, 29, 'decorer', '2021-02-04', 'ينظم', 'يزين', 'يعطي', 'يرافق', '2', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(84, 29, 'boisson', '2021-02-04', 'مشروب', 'سمك', 'يسرب', 'يأكل', '1', 'علم-فرنسا4-600x400.jpg', NULL, NULL),
(85, 29, 'deguisement', '2021-02-04', 'يتنكر', 'متنكر', 'تنكر', 'يذهب', '3', 'صور-خلفيات-مناظر-طبيعية-جميلة-وخلابة-8.jpg', NULL, NULL),
(90, NULL, 'معني كلمة كرة', '2021-03-26', 'ball', 'boll', 'bell', 'bali', '1', '', NULL, 1),
(91, NULL, 'معني كلمة كرة', '2021-03-27', NULL, NULL, NULL, NULL, 'ball', NULL, 'ball', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `token` varchar(225) CHARACTER SET utf8 NOT NULL,
  `timemodified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `username`, `token`, `timemodified`) VALUES
(1, 'رضا مختار', 'AZqBon3ez4', '2021-01-07 07:37:11'),
(2, 'محمد البغدادى', 'gAEbcyQulm', '2021-01-08 21:20:45'),
(3, 'hnvgcbfvcxz', 'rDRUmr3eG3', '2021-01-09 08:09:09'),
(4, 'Mohamed Sobhy', 'uudQWVY9er', '2021-01-09 18:08:39'),
(5, 'Ahmed Gamel Waly ', '39CM4jOrWV', '2021-01-09 18:09:53'),
(6, 'Rawan Rafat ', 'BTW3rJzOBU', '2021-01-09 18:11:15'),
(7, 'zeyadalsawi ', 'TvcXYI1Q2a', '2021-01-09 18:11:28'),
(8, 'شيماء عبدالرازق حجازي ', 'Yx7L1EgBMd', '2021-01-09 18:14:14'),
(9, 'Medo Nassar', 'RXhlJH77yl', '2021-01-09 18:15:36'),
(10, 'روان رأفت محمود ', 'nf82HmsXO2', '2021-01-09 18:16:55'),
(11, 'كريمة عيد السعيد ', 'UjJUAzbqw6', '2021-01-09 18:18:04'),
(12, 'احمد خالد زكريا', 'rE0kiA9pq3', '2021-01-09 18:18:11'),
(13, 'شروق احمد', 'IGJaSZdhnB', '2021-01-09 18:18:17'),
(14, 'يمنى اشرف الجندي', '5xVbuokcFC', '2021-01-09 18:18:49'),
(15, 'أحمد أسامة حمدي', '8c9Y1bhPTC', '2021-01-09 18:27:59'),
(16, 'منة الله فرحات محمد ', 'gHS6Ngoxs0', '2021-01-09 18:28:19'),
(17, 'عبدالرحمن وليد ', 'Rs4AkmBixC', '2021-01-09 18:31:16'),
(18, 'Mohamed EL-sopkey', 'luckdeNRwk', '2021-01-09 18:34:43'),
(19, 'أحمد عبد الرحيم حامد', 'o050oG6Nsw', '2021-01-09 18:39:49'),
(20, 'صلاح فتوح الشاذلى ', 'ZpyoCoOre5', '2021-01-09 18:40:09'),
(21, 'اماني عبدالفتاح إبراهيم عبدالعزيز', 'QlsufTuJmf', '2021-01-09 18:41:35'),
(22, 'محمد فكري عبدالستار', '0f4FCLoukL', '2021-01-09 18:45:05'),
(23, 'علاء بدران', 'M4qjEBQjD2', '2021-01-09 18:48:19'),
(24, 'نورهان عرفه عبد الفتاح ', 'QgllyYot6l', '2021-01-09 18:50:50'),
(25, 'Amar', 'v8tH63ydqA', '2021-01-09 18:55:48'),
(26, 'عبدالرحمن عبدالمنعم شوقي ', 'ReilHWyzg4', '2021-01-09 19:05:39'),
(27, 'محمد عيد شعبان محمد ', 'bYJNptV4lo', '2021-01-09 19:06:15'),
(28, 'Ziad Mohammed Nasr', '8vdtI1mIKR', '2021-01-09 19:08:07'),
(29, 'احمد ابراهيم رحيم', 'oLpwiWiLsb', '2021-01-09 19:14:00'),
(30, 'Aya mohammed ', '9j58fENqim', '2021-01-09 19:15:12'),
(31, 'ايمان ابراهيم عبدالحميد', 'M9naEFS5GV', '2021-01-09 19:19:56'),
(32, 'رحمه حمدي ', 'mRCxUck9LH', '2021-01-09 19:27:06'),
(33, 'سارة عبدالكريم', 'PtoRbRzNFt', '2021-01-09 19:36:01'),
(34, 'شيماء سعيد الشحات', 'vvF40JeQDx', '2021-01-09 19:42:19'),
(35, 'مؤ من محسن ابراهيم عبداللطيف', '27zoV9lWxz', '2021-01-09 19:49:10'),
(36, 'basmaelbedawy434', 'frllvoUkY9', '2021-01-09 20:03:43'),
(37, 'عادل سعد المغني ', '3AwwFgUZNG', '2021-01-09 20:19:36'),
(38, 'abdelrahman', 'DPJluEZiK3', '2021-01-09 20:44:51'),
(39, 'Mohamed Nader', 'Lxjk8KOFom', '2021-01-09 21:08:15'),
(40, 'احمد سلام ابراهيم', 'o8IEZUntLy', '2021-01-09 21:16:33'),
(41, 'حبيبه احمد سعيد', 'snUNdBanKx', '2021-01-09 21:25:17'),
(42, 'فاديه عاطف الجندي ', 'XhsvxQF5Sn', '2021-01-09 22:21:37'),
(43, 'MohabWael', '09E3SqV7EJ', '2021-01-09 22:55:48'),
(44, 'Ahmed abdllah', 'nIy656yl2j', '2021-01-10 00:13:32'),
(45, 'سهيلة زايد ', 'VpuTdMOwVs', '2021-01-10 04:25:52'),
(46, 'عبدالله', 'etd4SsT5TE', '2021-01-10 05:27:49'),
(47, 'عبدالرحمن وليد صابر ', '3KfUsezeWy', '2021-01-10 06:42:17'),
(48, 'حنين احمد سعيد', 'EnpjGjYaEz', '2021-01-10 06:44:49'),
(49, 'basmala', 'mY0FinUTQU', '2021-01-10 06:49:29'),
(50, ' basmala', 'FzJugSolLj', '2021-01-10 06:58:53'),
(51, 'حسناء عرفه احمد ', 'W7kFBiBRmc', '2021-01-10 07:20:56'),
(52, 'Basmals', 'qNSEuWuK9a', '2021-01-10 07:41:05'),
(53, ' محمد السعداوي ', 'PQEA0h7Vln', '2021-01-10 08:56:35'),
(54, 'ندى رمزى سمير', '1omCau19Kn', '2021-01-10 09:01:53'),
(55, 'روان حموده كامل يونس ', 'ivNPAow8E1', '2021-01-10 09:11:48'),
(56, 'osamagamal', 'QKwgVNcQKf', '2021-01-10 10:01:01'),
(57, 'Omnia Mohamed kotb', '0sY0VWnPjL', '2021-01-10 10:40:24'),
(58, 'شيماء السعيد عبدالحي', 'kGCfA5EejK', '2021-01-10 11:55:32'),
(59, 'رافت إبراهيم ', '6HNYFKSmic', '2021-01-10 12:20:02'),
(60, 'عبدالرحمن حسن محمد حسن ', '5EIRXlax2F', '2021-01-10 13:31:31'),
(61, 'Hager gama ', 'HywGpF7WHm', '2021-01-10 13:36:49'),
(62, 'Ahmed-Ali', 'k0DaYmBdjX', '2021-01-10 16:26:02'),
(63, 'Salma Moumen ', 'saKjr9Sme9', '2021-01-10 18:21:58'),
(64, 'نورا عاطف الشهاوي', 'qGi27aeNqO', '2021-01-10 19:08:16'),
(65, 'AyaMohamed', 'FL9ti1p7TC', '2021-01-10 19:13:59'),
(66, 'خالد محمد عبدالستار ', 'iFgNbDuMwI', '2021-01-10 19:18:57'),
(67, 'مي صابر عبدالسلام', '3rxTNgY9hB', '2021-01-10 19:34:46'),
(68, 'toqa Hesham darwesh mohamed', 'HCtHr1oKdK', '2021-01-11 13:34:24'),
(69, 'Ahmed Ramy', '2eQg6sHhqc', '2021-01-11 16:45:58'),
(70, 'yousef rami', 'S3SbB3GyaC', '2021-01-11 16:48:52'),
(71, 'Nada1223', 'QE8hPpjTno', '2021-01-11 16:51:43'),
(72, 'شهد رضا محمود ', '2F0wRZGxHR', '2021-01-11 17:22:49'),
(73, 'فوزى محمد فوزى', 'SigAFeOPRz', '2021-01-11 19:02:21'),
(74, ' محمد رضا جمعه ', '62Zg8onRkf', '2021-01-11 19:02:58'),
(75, 'ياسمين محمد ', 'is3L8e29lr', '2021-01-11 19:05:36'),
(76, 'اسماء رمزى', 'eyhUIJVGdt', '2021-01-11 19:05:54'),
(77, 'Bassam Mahdy', 'sIAEP44RCB', '2021-01-11 19:09:15'),
(78, 'سهيلة بدوي فوزي القبلاوي ', 'KQJoCZmeNF', '2021-01-11 19:13:20'),
(79, 'دينا فايز احمد', 'gYbZgBwtyc', '2021-01-11 19:59:46'),
(80, 'إهداء هلال محمد عباس ', 'QwJg3kdnQV', '2021-01-11 20:51:03'),
(81, 'Basmals', 'ZzGsDh2J44', '2021-01-12 02:29:45'),
(82, 'Basmala', 'mY0FinUTQU', '2021-01-12 06:00:32'),
(83, 'أسماء محمود السيد ', 'ktPjn1u2Vf', '2021-01-12 11:08:01'),
(84, 'BEBOO ', 'F0WgyGyaW0', '2021-01-12 17:22:43'),
(85, 'امانى بهجت عبدالقوى زامل ', 'sI1qG504su', '2021-01-13 10:56:12'),
(86, 'ياسمين محمد محمود بسيوني', '1g4jKkvZVY', '2021-01-13 11:19:43'),
(87, 'وصال ابراهيم', 'V0NQLQxN8F', '2021-01-13 14:37:26'),
(88, 'ايه مسعد فتحي مسعد ', '99icDDFS1x', '2021-01-13 17:48:15'),
(89, 'نورهان محمود رجب ', 'mA7chOo3wJ', '2021-01-13 18:43:30'),
(90, 'سماسم محمد حماد', 'O2Oajy4qjY', '2021-01-13 20:16:29'),
(91, 'روان احمد حماد', '6ZBGmVmOT2', '2021-01-14 12:52:23'),
(92, 'اسراء حسام عبدالفتاح الشريف', 'qQbBxTv0Et', '2021-01-14 17:41:04'),
(93, 'أحمد خميس الجنايني ', 'Yi7hhlUHKs', '2021-01-14 18:20:38'),
(94, 'Abdallah Roshdy', 'e0Mjt7StUs', '2021-01-14 20:29:24'),
(95, 'أسماء حسنى عبد الغفور بنات ', 'WvxHEbRf8Z', '2021-01-14 23:09:14'),
(96, 'اماني عبدالفتاح ابراهيم', 'Nt8rspoKzD', '2021-01-15 14:06:57'),
(97, 'اماني عبدالفتاح ابراهيم', 'Nt8rspoKzD', '2021-01-15 15:28:23'),
(98, 'احمد السيد فتحي', '9bI2NPb4Sd', '2021-01-15 16:33:26'),
(99, 'يوسف السيد يوسف محمد', 'Vy66bSA2TD', '2021-01-16 09:36:24'),
(100, 'Mohamed ameen allam', 'lvP7IblzPc', '2021-01-16 11:31:23'),
(101, 'سهيلة بدوي فوزي القبلاوي ', 'KQJoCZmeNF', '2021-01-16 16:11:04'),
(102, 'Aya Mohamed', 'N91djJKVd8', '2021-01-16 19:20:25'),
(103, 'moaaz fowzy', 'onqlL35C89', '2021-01-16 19:35:18'),
(104, 'مي صابر عبدالسلام احمد ', '200mSyC86I', '2021-01-17 18:07:46'),
(105, 'ريهام احمد سمير محمد', 'mVIJJkgfko', '2021-01-18 17:12:59'),
(106, 'محمد رضا جمعه ', '0lNplWEIIm', '2021-01-18 18:33:23'),
(107, 'شهد الحايس ', 'ZDpR2j1a4r', '2021-01-18 20:28:46'),
(108, 'عبدالله محمد مرشدي', 'igfarQU82i', '2021-01-19 21:17:11'),
(109, 'زياد يحيي زكريا عبد الحليم', 'CqCXbhTRD9', '2021-01-19 21:42:13'),
(110, 'Amira', 'zxoairSpXe', '2021-01-20 13:25:23'),
(111, 'روان اشرف رمضان قاسم', 'FCaowZSlhu', '2021-01-20 21:24:09'),
(112, 'يارا سليمان محمود محمد', 'irDzz4LU0R', '2021-01-22 12:24:25'),
(113, 'دينا اسامه عبدالله فرج ', 'UETpuxOYPB', '2021-01-22 17:37:00'),
(114, 'ريهام احمد سمير المغني', 'BD7ulJ06XC', '2021-01-22 18:41:40'),
(115, 'Ziad Mohammed Nasr 1A', 'sj8n8XQfBH', '2021-01-22 20:45:29'),
(116, 'حبيبه احمد سعيد', 'ao4EJdtZUq', '2021-01-23 17:56:44'),
(117, 'أحمد السيد فتحى ', 'ObHW0oV5S5', '2021-01-23 19:02:54'),
(118, 'احمد علي', 'Psvt5GpSZJ', '2021-01-24 18:51:40'),
(119, 'فوزي محمد فوزى', '7kDohqK2mo', '2021-01-24 19:08:18'),
(120, 'محمد محمود محمد عبد الغفار', '5WSFuHSgXk', '2021-01-24 19:18:07'),
(121, 'احمد السيد ', 'oWTT2YhhWA', '2021-01-24 20:20:04'),
(122, 'أحمد علي', 'ts1QiHseE3', '2021-01-25 05:18:40'),
(123, 'احمد خالد زكريا عبد الحليم', 'bK4iqQa3aq', '2021-01-25 17:56:07'),
(124, 'عمر البغدادي', 'TWEYGQ3lJD', '2021-01-25 21:28:59'),
(125, 'احمد رشاد ', 'cWIYZQSNY2', '2021-01-26 14:18:34'),
(126, 'ابو عمر', 'Vrwd4gvqCX', '2021-01-26 17:29:57'),
(127, 'فرح الحسيني ', 'aNds6UeR7U', '2021-01-27 07:27:01'),
(128, 'ساره عبدالرازق حجازي ', '5R3T2okSZi', '2021-01-28 12:06:26'),
(129, 'فاطمة أمين محمد ', 'Z9AvRtzKl5', '2021-01-28 15:44:23'),
(130, 'محمد هاني محمد ', 'TiCyQE3gdV', '2021-01-29 19:10:05'),
(131, 'مريم احمد الكومى احمد', 'FzQXJHjyTc', '2021-01-30 09:55:07'),
(132, 'ياسمين محمد عبدالله ', 'f5eo3KhTbG', '2021-01-30 20:18:57'),
(133, '  حبيبه رضا', '84bUHwTArc', '2021-01-31 20:27:50'),
(134, 'Medo Anwer', 'NL1ISi5HNI', '2021-02-02 08:47:45'),
(135, ' رؤى خالد عادل ', 'HLC2YPM4CV', '2021-02-04 08:14:05'),
(136, '  احمد براهيم رحيم', 'Vy89REpRp5', '2021-02-04 18:55:22'),
(137, 'محمد انور', '2IwbE9QkQE', '2021-02-04 21:12:56'),
(138, 'اسماء احمد عبدالمنعم', 'fTVjIIumPO', '2021-02-05 16:14:17'),
(139, 'مي عطا علي ', 'kgkrTiYuzc', '2021-02-06 18:59:40'),
(140, 'اسماء احمد', '3jkmK4V0BT', '2021-02-06 19:39:52'),
(141, 'امنيه يحيى السيد ', 'Do5h0hBX48', '2021-02-13 14:51:00'),
(142, 'زياد يحيي زكريا', 'NcWgrWffoO', '2021-02-19 17:58:43'),
(143, 'شيماء سعيد الشحات محمد', 'iayWJZpek4', '2021-02-20 20:24:22'),
(144, 'فوزي محمد فوزى فؤاد', 'BkxSlx62UU', '2021-02-20 22:16:20'),
(145, 'Roaa Mahmoud', 'XISpZkeLJ3', '2021-02-21 06:47:40'),
(146, 'Aya mohamed ', 'N91djJKVd8', '2021-02-23 20:16:01'),
(147, 'Omnia Saad', 'dkaJiVS5Eg', '2021-02-28 16:25:32'),
(148, 'حبيبه رضا جاد الله', 'UNiL6S2PRL', '2021-03-02 19:30:00'),
(149, 'احمد الطارونszdfdsf', '83bKPabQ4N', '2021-03-23 14:53:50'),
(150, 'احمد الطارونszdfdsfszfdf', 'fylV0cJg2v', '2021-03-23 14:55:19'),
(151, 'احمد محمد', 'ALcMKcjpcs', '2021-03-27 14:41:10'),
(152, 'احمد الطارونdxvdzsd', 'PZ1shtPQYf', '2021-04-04 15:40:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benfits`
--
ALTER TABLE `benfits`
  ADD PRIMARY KEY (`benfit_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments` (`member_id`),
  ADD KEY `com` (`lesson_id`),
  ADD KEY `memb` (`post_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`events_id`),
  ADD KEY `category` (`cat_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `lesson_member`
--
ALTER TABLE `lesson_member`
  ADD PRIMARY KEY (`lesson_member_id`),
  ADD KEY `lessson_id` (`lesson_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `live`
--
ALTER TABLE `live`
  ADD PRIMARY KEY (`live_id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_message` (`user_id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
  ADD PRIMARY KEY (`part_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_name` (`users`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ques` (`exam_id`),
  ADD KEY `part_id` (`part_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `benfits`
--
ALTER TABLE `benfits`
  MODIFY `benfit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `events_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `lesson_member`
--
ALTER TABLE `lesson_member`
  MODIFY `lesson_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `live_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `com` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments` FOREIGN KEY (`member_id`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `memb` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson_member`
--
ALTER TABLE `lesson_member`
  ADD CONSTRAINT `lessson_id` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `user_message` FOREIGN KEY (`user_id`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `part`
--
ALTER TABLE `part`
  ADD CONSTRAINT `exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `user_name` FOREIGN KEY (`users`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `part_id` FOREIGN KEY (`part_id`) REFERENCES `part` (`part_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ques` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
