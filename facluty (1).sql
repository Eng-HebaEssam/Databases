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
-- Database: `facluty`
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
(1, 'الفرقة الاعدادية', 'الفرقة الاعدادية', 1, 0, 1, 0, 0, '14694_'),
(2, 'الفرقة الاولى كهرباء', 'الفرقة الاولى كهرباء', 2, 0, 1, 0, 0, '32545_'),
(3, 'الفرقة الثانية كهرباء', 'الفرقة الثانية كهرباء', 3, 0, 1, 0, 0, '28957_'),
(4, 'الفرقة الثالثة كهرباء حاسبات ونظم تحكم', 'الفرقة الثالثة كهرباء حاسبات ونظم تحكم', 4, 0, 1, 0, 0, '80688_'),
(5, 'الفرقة الثالثة كهرباء اتصالات', 'الفرقة الثالثة كهرباء اتصالات', 5, 0, 1, 0, 0, '7661_'),
(6, 'الفرقة الثالثة كهرباء باور', 'الفرقة الثالثة كهرباء باور', 6, 0, 1, 0, 0, '20483_'),
(7, 'الفرقة الرابعة كهرباء حاسبات ونظم تحكم', 'الفرقة الرابعة كهرباء حاسبات ونظم تحكم', 7, 0, 1, 0, 0, '80688_'),
(8, 'الفرقة الرابعة كهرباء اتصالات', 'الفرقة الرابعة كهرباء اتصالات', 8, 0, 1, 0, 0, '7661_'),
(9, 'الفرقة الرابعة كهرباء باور', 'الفرقة الرابعة كهرباء باور', 9, 0, 1, 0, 0, '20483_'),
(10, 'الفرقة الاولى ميكانيكا', 'الفرقة الاولى ميكانيكا', 10, 0, 1, 0, 0, '32545_'),
(11, 'الفرقة الثانية ميكانيكا', 'الفرقة الثانية ميكانيكا', 11, 0, 1, 0, 0, '28957_'),
(12, 'الفرقة الثالثة انتاج', 'الفرقة الثالثة انتاج', 12, 0, 1, 0, 0, '80688_'),
(13, 'الفرقة الثالثة قوى والات كهربية', 'الفرقة الثالثة قوى والات كهربية', 13, 0, 1, 0, 0, '20483_'),
(14, 'الفرقة الرابعة انتاج', 'الفرقة الرابعة انتاج', 14, 0, 1, 0, 0, '80688_'),
(15, 'الفرقة الرابعة قوى والات كهربية', 'الفرقة الرابعة قوى والات كهربية', 15, 0, 1, 0, 0, '7661_'),
(16, 'الفرقة الاولى ميكاترونكس', 'الفرقة الاولى ميكاترونكس', 16, 0, 1, 0, 0, '32545_'),
(17, 'الفرقة الثانية ميكاترونكس', 'الفرقة الثانية ميكاترونكس', 17, 0, 1, 0, 0, '28957_'),
(18, 'الفرقة الثالثة ميكاترونكس', 'الفرقة الثالثة ميكاترونكس', 18, 0, 1, 0, 0, '80688_'),
(19, 'الفرقة الرابعة ميكاترونكس', 'الفرقة الرابعة ميكاترونكس', 19, 0, 1, 0, 0, '80688_'),
(20, 'الفرقة الاولى عمارة', 'الفرقة الاولى عمارة', 20, 0, 1, 0, 0, '32545_'),
(21, 'الفرقة الثانية عمارة', 'الفرقة الثانية عمارة', 21, 0, 1, 0, 0, '28957_'),
(22, 'الفرقة الثالثة عمارة', 'الفرقة الثالثة عمارة', 22, 0, 1, 0, 0, '80688_'),
(23, 'الفرقة الرابعة عمارة', 'الفرقة الرابعة عمارة', 23, 0, 1, 0, 0, '80688_'),
(24, 'الفرقة الاولى مدنى', 'الفرقة الاولى مدنى', 24, 0, 1, 0, 0, '32545_'),
(25, 'الفرقة الثانية مدنى', 'الفرقة الثانية مدنى', 25, 0, 1, 0, 0, '28957_'),
(26, 'الفرقة الثالثة مدنى', 'الفرقة الثالثة مدنى', 26, 0, 1, 0, 0, '80688_'),
(27, 'الفرقة الرابعة مدنى', 'الفرقة الرابعة مدنى', 27, 0, 1, 0, 0, '80688_'),
(50, 'dwrefe', 'rewf4d', 0, 3, 1, 0, 0, '41321_logo.png');

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
(135, 'wefwdesw', 'rwefrwde', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-njsRb8Tn70\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-04-11', 383, 50, NULL, 0, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-njsRb8Tn70\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

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
(35, 135, 383, '2021-04-11', 2, 50, '2021-04-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_quession`
--

CREATE TABLE `lesson_quession` (
  `lesson_quession_id` int(11) NOT NULL,
  `lesson_quession` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(383, 'احمد الطارون', '601f1889667efaebb33b8c12572835da3f027f78', 'eltaron1082000@gmail.com', NULL, 3, 1, '2021-04-04', 'img.png', NULL, NULL, NULL, 1006634389, 1),
(386, 'احمد الطارgvdsgون', '601f1889667efaebb33b8c12572835da3f027f78', 'mastercode179@gmail.com', NULL, 17, 1, '2021-04-05', 'img.png', NULL, NULL, NULL, 2147483647, 0);

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
(33, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(34, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(35, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(36, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(37, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(38, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(39, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(40, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(41, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(42, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(43, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(44, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(45, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(46, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(47, 'r4frgetr', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com'),
(48, 'r4frgetredqqdwd', NULL, '2021-04-11', 'rwfewd', 'mastercode179@gmail.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `recommendation_id` int(11) NOT NULL,
  `recommendation` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `link_face` varchar(255) DEFAULT NULL,
  `recommendation_image` varchar(255) DEFAULT NULL,
  `link_youtube` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(155, 'احمد الطارgvdsgون', 'Q14J1CVSBf', '2021-04-05 18:05:52');

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
-- Indexes for table `lesson_quession`
--
ALTER TABLE `lesson_quession`
  ADD PRIMARY KEY (`lesson_quession_id`);

--
-- Indexes for table `live`
--
ALTER TABLE `live`
  ADD PRIMARY KEY (`live_id`);

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
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`recommendation_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `benfits`
--
ALTER TABLE `benfits`
  MODIFY `benfit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `events_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `lesson_member`
--
ALTER TABLE `lesson_member`
  MODIFY `lesson_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lesson_quession`
--
ALTER TABLE `lesson_quession`
  MODIFY `lesson_quession_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `live_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `recommendation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

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
