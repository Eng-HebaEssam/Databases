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
-- Database: `course_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'un-categorized', 'un-categorized', 1, '2020-12-04 14:19:08', '2020-12-04 14:19:08'),
(2, 'natural', 'natural', 1, '2020-12-04 14:19:08', '2020-12-04 14:19:08'),
(3, 'flowers', 'flowers', 1, '2020-12-04 14:19:08', '2020-12-04 14:19:08'),
(4, 'kitchen', 'kitchen', 0, '2020-12-04 14:19:09', '2020-12-04 14:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `url`, `ip_address`, `comment`, `status`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Grover Roberts DVM', 'dylan.wintheiser@hotmail.com', 'http://roberts.com/', '76.97.214.58', 'Qui et quis rerum. In nihil magnam nostrum soluta eos perferendis laborum.', 0, 51, 14, '2020-04-07 21:29:57', '2020-07-09 19:53:44'),
(2, 'Prof. Jordon Schoen', 'hayes.jaron@kemmer.info', 'https://heller.org/architecto-laborum-dolores-ut-natus.html', '117.31.166.84', 'Eius ut voluptatum quas qui consectetur odio. Et consequatur quasi vel commodi sed debitis sint. Repellat modi culpa natus dolor natus deserunt aut harum.', 0, 24, 7, '2020-11-26 09:38:24', '2020-05-07 22:58:42'),
(3, 'Shane Hettinger', 'gwen44@herzog.com', 'https://www.douglas.com/voluptas-in-ea-asperiores-quidem-hic-dicta', '147.48.221.55', 'Commodi laboriosam qui quis vel sunt excepturi. Ut repellendus dolores iste eveniet quisquam corrupti sunt ea.', 0, 65, 14, '2020-05-06 03:56:13', '2020-08-10 08:44:58'),
(4, 'Mrs. Libbie Ryan', 'trent26@hotmail.com', 'https://www.price.net/ut-eos-dolores-blanditiis-nostrum', '215.58.163.202', 'Rem pariatur aut sint natus suscipit sed quidem. Tempora enim nihil et at et dicta vel.', 1, 100, 4, '2020-05-02 22:56:13', '2020-09-14 08:12:28'),
(5, 'Judah Fahey', 'kruecker@hilpert.com', 'http://www.waelchi.org/soluta-quisquam-rerum-ut-sed-et.html', '33.7.55.165', 'Exercitationem adipisci architecto cumque est quisquam. Quas labore dolores ipsum quaerat beatae.', 0, 100, 7, '2020-09-09 03:51:05', '2020-04-29 14:21:48'),
(6, 'Dr. Nannie Moen', 'rnolan@wunsch.com', 'https://www.halvorson.com/doloribus-necessitatibus-consectetur-qui-illum-necessitatibus-ea-ipsa-quod', '119.187.105.225', 'Natus aut sapiente qui excepturi nostrum et possimus. Eligendi doloribus dolorem facilis dignissimos molestiae placeat.', 0, 64, 7, '2020-09-25 16:20:07', '2020-08-27 20:04:30'),
(7, 'Xzavier Bartell', 'randy38@reynolds.biz', 'http://fay.com/temporibus-deleniti-minima-molestiae-facilis-corporis-corrupti.html', '14.160.142.169', 'Sed veniam eveniet quis magnam at dicta. Sequi nulla qui necessitatibus voluptatem quas. Eveniet dolores rem sit et pariatur.', 1, 4, 7, '2020-05-06 00:43:28', '2020-05-02 05:50:31'),
(8, 'Ms. Berniece Bode PhD', 'vkris@raynor.org', 'http://ruecker.com/nobis-voluptate-quo-commodi-voluptates', '92.219.247.45', 'Atque natus aut sunt adipisci. Nesciunt sit tempora vel. Et laboriosam repudiandae dolorem.', 0, 69, 9, '2020-08-10 17:25:29', '2020-07-20 18:18:01'),
(9, 'Miss Pat Watsica', 'ben00@hotmail.com', 'http://www.wiza.com/rerum-enim-asperiores-fugiat-debitis-dolores-nesciunt.html', '113.241.100.97', 'Ipsum autem consequatur sit illo ad totam. Inventore veniam nostrum corrupti molestiae amet dolorem modi aliquid.', 1, 2, 8, '2020-06-21 05:12:45', '2020-12-03 19:25:54'),
(10, 'Prof. Emmie Goldner Sr.', 'garrett.weissnat@sawayn.com', 'http://www.upton.org/nisi-autem-nostrum-animi-deserunt-sunt-voluptates-et-quas', '86.125.83.155', 'Et expedita consequatur voluptas omnis ducimus magnam consequatur necessitatibus. Dicta dolorem ratione molestias expedita veritatis eos praesentium expedita. Reprehenderit ut magnam dolor maxime rerum quis amet.', 1, 85, 8, '2020-07-16 19:30:47', '2020-05-14 08:35:14'),
(11, 'Dr. Isabelle Lemke PhD', 'elegros@yahoo.com', 'https://fisher.info/dolore-numquam-facilis-inventore-inventore-tempora-officia-vero.html', '172.210.119.11', 'Sunt eos et fugiat repudiandae eum. Consectetur deserunt ad non provident sit modi.', 0, 16, 11, '2020-09-07 16:15:10', '2020-07-12 20:38:36'),
(12, 'Dr. Nikko Cole Jr.', 'fisher.kenyatta@yahoo.com', 'http://www.goldner.com/ullam-unde-sit-voluptatibus-molestiae', '196.95.212.152', 'Quisquam voluptatem dolor et facere non. Deleniti nisi totam optio ullam consequuntur aut ut.', 0, 9, 3, '2020-05-31 13:06:23', '2020-10-26 11:35:27'),
(13, 'Ena Okuneva', 'langworth.estefania@bosco.net', 'http://www.ratke.biz/et-eos-consequatur-quas-rerum-natus', '152.225.131.89', 'Voluptatum necessitatibus distinctio aliquam architecto natus totam. Est nam tempore sunt et.', 0, 86, 12, '2020-06-24 04:06:52', '2020-06-21 03:29:03'),
(14, 'Samanta Reichel', 'fabian.bins@yahoo.com', 'http://www.lesch.org/qui-non-animi-vitae-amet-doloribus-voluptatem-totam-est', '45.86.232.41', 'Et est soluta accusantium impedit autem sint debitis. Incidunt numquam sequi sequi et nihil cum accusantium dolorem.', 1, 64, 3, '2020-06-19 06:46:36', '2020-07-01 11:37:44'),
(15, 'Prof. Geoffrey Nicolas II', 'jweimann@wunsch.com', 'http://hackett.com/ipsa-soluta-est-deserunt-soluta-laudantium.html', '80.177.186.232', 'Vel est adipisci et porro et. Voluptatem vel voluptatem dolorum.', 1, 33, 7, '2020-06-09 06:30:09', '2020-03-07 18:08:50'),
(16, 'Tiana Greenholt', 'shaniya.quitzon@bailey.com', 'http://www.robel.com/rerum-rerum-nemo-quo-alias-nam-officia-et.html', '238.188.246.119', 'Repellendus fugit id consectetur ullam velit. Ipsa repellendus et vel dolorem unde. Molestiae est voluptas itaque doloribus quia modi.', 1, 66, 8, '2020-07-25 16:58:37', '2020-02-25 12:52:05'),
(17, 'Ibrahim Mohr PhD', 'petra75@hotmail.com', 'https://boyle.com/hic-consequatur-et-ipsam-aut-eligendi-rerum-alias.html', '93.155.88.18', 'Cum quia sequi sit quia atque tempora repudiandae. Laboriosam similique voluptatem sit sint.', 0, 70, 13, '2020-11-03 03:45:20', '2020-08-09 20:02:12'),
(18, 'Ashly Hammes', 'cristal99@olson.com', 'http://www.kuhn.info/qui-consequatur-unde-sed-in-aspernatur-et.html', '170.36.149.198', 'Deleniti reprehenderit ipsum vitae consequuntur repudiandae quisquam unde. Et accusantium fugit dolorum ratione molestias natus et maiores.', 1, 66, 4, '2020-10-21 03:08:19', '2020-05-01 08:01:33'),
(19, 'Linnie Herzog', 'kade.schinner@gusikowski.info', 'http://lesch.org/eligendi-sint-est-voluptas-vero-earum-et', '19.177.126.192', 'Sint eos optio dolor dolorum natus commodi sunt vel. Error placeat nulla fugiat optio.', 1, 65, 5, '2020-09-17 12:16:41', '2020-08-27 06:47:01'),
(20, 'Mr. Abraham Hirthe', 'harber.tatum@kirlin.com', 'https://www.feeney.com/et-molestiae-explicabo-voluptas-fuga-impedit', '119.202.235.198', 'Beatae odio consequatur omnis et quasi delectus aliquam facilis. Possimus corrupti repellat fugiat in est.', 1, 51, 4, '2020-03-23 04:57:08', '2020-10-09 02:03:46'),
(21, 'Mary Mertz', 'bauch.wendell@blick.info', 'http://www.feest.com/facilis-tempora-magni-sed-voluptas-quidem', '251.22.118.213', 'Cumque repellat temporibus odio dolorem deleniti. Quisquam sint nemo eligendi exercitationem provident.', 1, 9, 9, '2020-05-21 01:28:08', '2020-10-08 08:23:38'),
(22, 'Marilyne Crist', 'vfeeney@hotmail.com', 'https://www.monahan.com/porro-laborum-repellat-rerum-qui', '235.177.200.248', 'Molestiae et deserunt consectetur ipsum placeat magni est. Quibusdam qui est et ipsam.', 1, 40, 13, '2020-08-24 13:56:07', '2020-09-15 11:46:03'),
(23, 'Mr. Rogers Johnston III', 'jean11@hotmail.com', 'http://www.runolfsdottir.com/', '160.204.157.9', 'Eum dolorem et provident sed beatae rerum ipsa. Consequatur enim rerum eligendi excepturi sit officiis ut.', 0, 86, 12, '2020-05-08 06:42:36', '2020-10-25 00:13:14'),
(24, 'Elyse Langworth', 'khilpert@crona.info', 'http://hahn.com/tenetur-nesciunt-inventore-laudantium-mollitia-velit-numquam', '48.159.122.223', 'Iste totam id quod numquam. Earum qui quam sequi. Impedit doloribus aut sed odio.', 1, 65, 9, '2020-07-02 04:17:39', '2020-06-02 02:22:59'),
(25, 'Kip Pacocha DVM', 'crawford.little@gmail.com', 'http://purdy.net/quaerat-eius-quae-hic-necessitatibus-quos-commodi', '33.73.162.31', 'Amet omnis natus ut iste est veniam. Quaerat consequatur voluptates alias nemo quis. Reprehenderit sequi quis voluptatibus ex incidunt recusandae.', 0, 64, 13, '2020-11-18 16:20:41', '2020-07-03 02:41:24'),
(26, 'Mariane Dickens', 'willy.rice@hotmail.com', 'http://steuber.com/rerum-tempora-quaerat-amet-amet-rerum-rem', '144.127.57.44', 'Qui et similique explicabo ut. Ut est sapiente et minima blanditiis repellendus.', 0, 23, 13, '2020-10-23 20:51:36', '2020-07-16 20:52:58'),
(27, 'Miss Beulah Champlin II', 'harber.dahlia@hotmail.com', 'https://www.murphy.info/dolorem-quia-ad-quos-architecto-ratione-quis', '100.216.83.229', 'Nostrum enim est quod voluptatibus quos. Rerum accusamus quidem accusamus.', 1, 72, 5, '2020-11-08 12:53:50', '2020-05-31 06:59:33'),
(28, 'Phyllis Blick', 'oparker@jacobi.info', 'http://ruecker.org/', '193.178.84.227', 'Asperiores cupiditate voluptas dolore recusandae. Sequi animi porro ratione molestias at atque.', 0, 51, 4, '2020-07-14 03:42:05', '2020-06-29 09:00:04'),
(29, 'Mr. Geovanny Ortiz', 'ozella54@kilback.com', 'http://www.bernhard.info/at-maxime-modi-ut-aut-commodi-facere.html', '150.229.102.144', 'Quasi velit accusamus illo cupiditate voluptatibus. Veniam provident consequatur sed sed.', 0, 50, 13, '2020-11-04 03:36:38', '2020-10-16 20:06:19'),
(30, 'Enoch Hermiston', 'kasandra67@yahoo.com', 'http://www.dooley.com/est-aut-dicta-quo-impedit-quis-laudantium', '165.184.110.99', 'Exercitationem ut ut natus. Dicta dolorem laudantium fugit commodi ducimus modi.', 0, 69, 10, '2020-12-04 10:35:07', '2020-09-10 10:35:38'),
(31, 'Delores Durgan', 'fritsch.nicklaus@yahoo.com', 'http://www.auer.com/dignissimos-et-aut-architecto-dolorum-beatae.html', '85.59.136.73', 'Ad omnis consequuntur quas. Qui optio optio laborum quaerat corrupti porro et. Itaque sint provident minima ab.', 0, 81, 11, '2020-11-25 18:01:15', '2020-10-29 04:58:40'),
(32, 'Dr. Kris Monahan Sr.', 'janis.marvin@gmail.com', 'http://fay.net/commodi-non-sit-accusamus', '156.112.94.250', 'Aliquam nihil voluptatum aut et ut et commodi dignissimos. In doloribus consequatur tenetur quia illum neque. Delectus autem optio aut consequatur.', 1, 48, 14, '2020-06-03 14:14:00', '2020-02-15 21:19:21'),
(33, 'George Hagenes', 'haven26@yahoo.com', 'http://will.com/dicta-similique-praesentium-laudantium-laborum-possimus-excepturi-numquam', '118.193.236.45', 'Inventore facilis fugiat quod nulla fuga error. Rerum consequatur consequatur neque cupiditate. Ut doloribus aut qui reprehenderit optio laboriosam quis.', 1, 24, 10, '2020-02-26 16:49:07', '2020-06-11 08:41:48'),
(34, 'Opal Stehr I', 'ewill@hotmail.com', 'http://www.casper.org/', '84.240.223.57', 'Inventore asperiores nihil nemo nisi nam. Qui aspernatur deserunt et dignissimos nam distinctio ut in.', 1, 2, 4, '2020-08-09 23:06:11', '2020-07-19 07:48:59'),
(35, 'Darryl Labadie I', 'welch.keon@yahoo.com', 'http://www.kilback.org/provident-nobis-non-sint-ut-dolor-ea.html', '236.57.192.68', 'Commodi saepe id blanditiis nihil tempore et. Harum doloribus est odio ab eveniet ratione. Veritatis qui illum explicabo molestiae ut et et.', 1, 93, 11, '2020-09-26 22:33:12', '2020-05-30 21:56:31'),
(36, 'Mrs. Carlie Macejkovic', 'ndach@yahoo.com', 'https://herman.com/quidem-repellat-aut-laborum-aspernatur-sunt-et.html', '249.112.117.112', 'Et ratione enim sed voluptas. Qui rerum facilis fugiat maiores harum consequatur non.', 1, 23, 4, '2020-10-08 17:33:45', '2020-07-19 14:00:36'),
(37, 'Mrs. Addison Balistreri V', 'shawna.keeling@pollich.com', 'http://goodwin.com/quibusdam-voluptatem-et-facere-vel', '196.123.187.112', 'Quod ut tempora nihil. Sunt corporis et consectetur laudantium.', 0, 69, 7, '2020-06-06 04:06:38', '2020-07-17 17:42:03'),
(38, 'Clay Fisher', 'irving76@hotmail.com', 'http://www.gleason.net/in-sint-eum-beatae', '1.244.180.224', 'Ab rerum sint id. Et sed modi ducimus ipsa. Iste ea quia qui neque autem nobis.', 0, 84, 15, '2020-08-19 18:35:46', '2020-09-21 16:54:00'),
(39, 'Prof. Oma Kemmer', 'mosciski.arielle@hintz.com', 'http://purdy.com/quidem-dolores-dolor-ipsum-nostrum-non-harum-assumenda.html', '74.54.17.26', 'Quo voluptas perspiciatis ab nam. Ut aperiam voluptate hic eos assumenda.', 0, 91, 3, '2020-09-09 23:21:50', '2020-11-16 18:45:50'),
(40, 'Mrs. Kristy Durgan DVM', 'sylvan.zieme@yahoo.com', 'https://stanton.com/natus-non-commodi-molestiae-quia.html', '61.146.126.111', 'Eveniet aut necessitatibus et praesentium. Molestiae id dolorem molestiae aperiam.', 0, 93, 3, '2020-05-10 06:59:18', '2020-11-15 18:24:25'),
(41, 'Dante Ondricka MD', 'dewitt.wehner@yahoo.com', 'http://www.mills.biz/', '196.67.51.186', 'Laboriosam pariatur ut dolorum quibusdam doloremque numquam quidem exercitationem. Ut occaecati autem deserunt molestiae sint aut.', 0, 33, 13, '2020-08-01 06:05:59', '2020-04-15 03:26:12'),
(42, 'Brent King', 'donnelly.maxie@swaniawski.org', 'http://heidenreich.com/repudiandae-ipsa-placeat-pariatur-deleniti-voluptatem', '115.31.214.64', 'Amet fugiat culpa repudiandae vel non repellat nulla. Molestiae qui tempora reprehenderit.', 1, 50, 14, '2020-10-21 11:49:08', '2020-11-25 14:48:07'),
(43, 'Mya Trantow', 'pfeffer.liliane@champlin.com', 'http://robel.com/doloribus-consequatur-eos-laudantium-sit-in', '160.202.90.91', 'Atque omnis iure labore id voluptas. Voluptatem consequuntur velit non voluptate quia.', 0, 78, 15, '2020-09-08 18:06:36', '2020-11-19 01:11:24'),
(44, 'Cletus Hagenes', 'ebalistreri@okeefe.com', 'http://pacocha.com/corrupti-dolorem-ipsa-libero.html', '90.202.7.93', 'Id dolores et amet ab dolore. Molestias et incidunt inventore. Dolores dolores ipsa distinctio consequatur aut saepe impedit culpa.', 0, 23, 8, '2020-09-04 17:36:21', '2020-09-03 06:09:06'),
(45, 'Dannie Prohaska V', 'bednar.wanda@gmail.com', 'http://turner.com/quo-praesentium-perferendis-qui-doloremque-quos-pariatur-dolorum-id', '43.101.142.20', 'Nihil ea non vitae nobis cum. Sed odio animi voluptatibus. Molestiae placeat architecto voluptates et.', 0, 19, 10, '2020-06-20 22:11:39', '2020-05-11 14:40:54'),
(46, 'Ms. Noemy Mante', 'selmer40@gmail.com', 'https://armstrong.com/qui-ut-quo-porro-consequuntur-repudiandae-est-esse.html', '11.31.213.24', 'Porro quisquam ullam a facilis voluptate neque suscipit. Ut dolores optio et deserunt amet nam. Consequatur deleniti ipsa vitae voluptatem voluptates tempora.', 1, 4, 3, '2020-08-22 12:13:45', '2020-07-15 04:36:03'),
(47, 'Prof. Hulda Herman', 'perry94@pacocha.com', 'http://abbott.biz/qui-molestias-et-sequi-similique-culpa.html', '151.19.207.239', 'Expedita distinctio vel error voluptatem. Ducimus fugit qui perferendis illum cumque vitae quis ea. Porro aut eum vel amet omnis incidunt.', 0, 81, 12, '2020-09-21 00:46:24', '2020-09-18 02:12:28'),
(48, 'Brandt Rath', 'hallie.goyette@volkman.com', 'http://gusikowski.net/iure-veniam-quis-ipsum-numquam-sit-esse', '7.56.164.13', 'Quidem voluptas iure voluptate quae et corporis et quis. Dolor autem voluptatem libero distinctio.', 0, 34, 6, '2020-04-29 09:21:37', '2020-08-14 18:30:36'),
(49, 'Dr. Hannah Zemlak DDS', 'alisha77@yahoo.com', 'http://www.ward.com/asperiores-eum-ut-velit-dignissimos-nemo-autem-rerum-laboriosam', '148.24.59.42', 'Quo ab voluptatem hic ab magni eligendi facilis et. Veniam repellat animi distinctio aspernatur eos sunt.', 1, 72, 14, '2020-10-31 16:33:38', '2020-04-05 23:35:10'),
(50, 'Dr. Thurman Hane', 'vraynor@gmail.com', 'http://schultz.com/aut-nostrum-saepe-hic-repellendus-perspiciatis-accusamus-vitae', '135.19.119.232', 'Tempore et commodi in est suscipit. Vitae fugiat reiciendis debitis quos non est repudiandae et.', 0, 62, 4, '2020-06-28 19:45:04', '2020-08-21 01:06:44'),
(51, 'Bridie Ullrich', 'shanie.cruickshank@grimes.biz', 'http://hoppe.com/sapiente-repudiandae-fuga-ut-voluptates-commodi-iste.html', '51.7.41.84', 'Sint quis ut est quasi possimus. Reprehenderit consectetur alias sunt sapiente accusamus adipisci placeat. Ut qui aut veritatis officia ut ducimus in.', 1, 4, 8, '2020-10-11 13:44:01', '2020-07-13 15:39:22'),
(52, 'Baron Cassin', 'lindgren.enos@bergnaum.biz', 'http://parker.com/est-harum-placeat-omnis-esse-quasi-voluptatem-expedita-consectetur', '169.118.178.245', 'Est facilis quos rerum saepe. Ut quis autem placeat. Voluptatem aut sunt ea aperiam.', 0, 24, 10, '2020-04-18 23:10:53', '2020-05-08 08:26:48'),
(53, 'Raul Klocko', 'ktrantow@yahoo.com', 'http://www.mclaughlin.net/', '156.189.107.187', 'Dignissimos repellendus rem laborum nesciunt. Repellendus dolore saepe voluptas culpa beatae aperiam distinctio. Pariatur distinctio est occaecati deserunt et.', 0, 64, 13, '2020-08-13 05:22:12', '2020-10-25 02:17:32'),
(54, 'Lexie Gibson', 'laurianne97@padberg.com', 'http://schmitt.com/atque-veniam-sunt-molestiae-quidem-dicta-aut-in', '212.233.150.69', 'Quia fuga beatae autem cupiditate asperiores. Iste itaque fugit pariatur.', 1, 23, 12, '2020-11-04 15:17:45', '2020-10-06 17:51:06'),
(55, 'Lindsey Zemlak', 'osinski.deshaun@hegmann.com', 'http://www.wiegand.com/', '188.144.11.103', 'Molestias voluptatem repudiandae eligendi nostrum qui tempore aspernatur. Asperiores earum dicta nam sit officia.', 0, 100, 3, '2020-04-23 07:15:16', '2020-09-19 09:44:06'),
(56, 'Mr. Brody Ritchie IV', 'strosin.althea@yahoo.com', 'http://hauck.com/', '47.194.114.10', 'Eum ex ut odio iste reiciendis facere ut. Natus consequatur architecto quos doloribus sapiente mollitia. Consequuntur alias qui accusantium optio voluptas est.', 0, 9, 15, '2020-09-24 23:57:32', '2020-05-25 17:20:52'),
(57, 'Scottie Gutmann', 'mcglynn.macie@tromp.org', 'http://www.schmitt.com/tempora-velit-in-doloremque-aut-eligendi-nihil.html', '87.84.20.172', 'Animi eius commodi sed quidem qui. Suscipit et laboriosam aspernatur saepe sapiente vel aut voluptas.', 0, 24, 3, '2020-04-25 14:20:26', '2020-10-05 05:20:55'),
(58, 'Joey Bode', 'lakin.lee@gmail.com', 'http://www.kerluke.net/sunt-aspernatur-asperiores-sint-placeat.html', '173.199.241.237', 'Est non quasi sed necessitatibus. Nemo illum consectetur et quia qui.', 0, 65, 5, '2020-07-09 04:03:56', '2020-06-05 01:00:10'),
(59, 'Belle Muller Sr.', 'houston47@hotmail.com', 'http://borer.com/qui-qui-sunt-non-ipsam-vel-aperiam', '213.207.3.203', 'Et quia eveniet magnam magnam. Quibusdam dolores corporis dolores nemo libero ducimus aut. Adipisci provident sed fugiat dolor expedita.', 1, 14, 4, '2020-06-23 02:29:31', '2020-12-03 03:09:38'),
(60, 'Emilie Rippin DDS', 'ivah95@gmail.com', 'http://www.block.net/', '237.81.203.175', 'Ducimus qui totam rerum commodi. Consectetur qui repudiandae placeat sequi voluptatum repellendus tenetur. Cumque voluptatem sunt architecto doloremque minus ipsam debitis sapiente.', 0, 9, 14, '2020-06-08 19:20:03', '2020-10-16 20:59:23'),
(61, 'Nash Hudson', 'aditya.ebert@hotmail.com', 'http://hansen.biz/commodi-molestiae-nihil-odit-laudantium-dolore-ea-dolor-aliquam', '50.44.191.219', 'Illum architecto dolorem nobis ea. Omnis asperiores culpa et error minima nostrum voluptatem voluptatem.', 1, 100, 5, '2020-09-28 22:28:16', '2020-08-03 23:45:58'),
(62, 'Randy Walker', 'tracy19@yahoo.com', 'http://little.info/est-aliquam-amet-optio-in-atque-rerum', '126.202.109.192', 'Culpa necessitatibus rem voluptatum consequatur tempore voluptatem sit. Quibusdam minus at officia quod non ut.', 1, 33, 7, '2020-10-19 06:13:59', '2020-06-04 07:34:17'),
(63, 'Martin Armstrong', 'kaley.nader@greenfelder.com', 'https://predovic.net/qui-quo-fuga-vel-corrupti-amet.html', '197.150.236.120', 'Sed quis repellat accusamus. Ab natus harum autem aut sit qui sed. Aut eum fugiat omnis sint ut ut quisquam.', 0, 9, 7, '2020-08-20 11:11:33', '2020-06-26 22:52:53'),
(64, 'Doris Ratke', 'robel.emmanuelle@rowe.com', 'http://langosh.info/facere-architecto-et-aliquid-reiciendis', '67.82.99.85', 'Ut rerum ducimus laborum rerum autem. Voluptate suscipit quam ut voluptate voluptatem eos perferendis est.', 1, 51, 4, '2020-04-27 02:44:34', '2020-05-13 06:33:18'),
(65, 'Ford Wintheiser Sr.', 'lavada.blanda@mills.com', 'http://www.hettinger.com/', '20.48.151.99', 'Sunt iste magni occaecati. Totam corrupti molestiae enim nam non exercitationem. Consectetur culpa dicta repudiandae aut atque.', 0, 62, 15, '2020-09-23 16:07:05', '2020-08-10 16:24:04'),
(66, 'Ronny Daniel', 'qdoyle@borer.com', 'https://www.haley.biz/maiores-cumque-laboriosam-culpa-non', '189.65.210.21', 'Qui vitae qui necessitatibus praesentium. Aut dignissimos delectus maxime.', 0, 70, 6, '2020-06-07 20:41:23', '2020-07-23 14:37:18'),
(67, 'Graciela Harber', 'upton.marlene@jones.com', 'http://murray.org/nam-ducimus-est-dolor-quo-consequatur-quas', '146.116.196.206', 'Optio quaerat porro corrupti nesciunt pariatur. Debitis eligendi nesciunt hic sunt qui aut dolorum.', 1, 50, 11, '2020-09-10 12:43:10', '2020-08-27 19:00:29'),
(68, 'Salvatore Glover', 'glennie.abshire@morar.info', 'http://mayert.org/corporis-laudantium-nisi-aspernatur-mollitia.html', '161.245.114.13', 'Dolore voluptas non qui. A exercitationem dolore deserunt et similique.', 0, 4, 6, '2020-08-03 17:37:55', '2020-10-03 13:12:13'),
(69, 'Kaia Botsford', 'murray.kutch@gmail.com', 'http://www.becker.com/voluptas-eos-dolor-minima-architecto-nihil.html', '168.205.241.142', 'Minima adipisci et necessitatibus ut. Commodi sunt itaque mollitia.', 0, 40, 15, '2020-06-14 15:33:45', '2020-07-20 13:29:44'),
(70, 'Cleve Kirlin', 'agustin.mcdermott@yahoo.com', 'http://schroeder.com/rem-esse-exercitationem-illo-dolor', '71.27.99.149', 'Id minus vel ut illum aliquam qui aliquam. Libero exercitationem dolorem blanditiis velit. Veritatis eum ad similique libero.', 1, 91, 14, '2020-09-06 14:09:30', '2020-11-01 13:13:39'),
(71, 'Mrs. Elsie Volkman DDS', 'shammes@fahey.info', 'https://stiedemann.com/est-consectetur-voluptatem-alias-aut-quis-occaecati-dolor-est.html', '68.136.65.147', 'Voluptas rem deserunt magni. Qui doloribus quibusdam sint aperiam animi et. Rerum praesentium omnis sed ea corrupti ad aliquid.', 1, 78, 13, '2020-07-30 10:28:30', '2020-09-19 12:38:44'),
(72, 'Dr. Kole Halvorson', 'schaden.karen@russel.com', 'http://glover.com/laborum-quasi-ut-expedita-aut-et-odio.html', '248.130.172.137', 'Et et debitis maxime. Ad labore tempore et id minus ipsam.', 1, 24, 7, '2020-08-12 17:11:51', '2020-08-10 10:30:15'),
(73, 'Reyna Terry', 'jacynthe04@torp.info', 'http://mante.com/velit-autem-autem-et-pariatur-tempore-sunt-quo', '45.206.57.34', 'Sit praesentium nihil et facilis provident adipisci. Beatae ex dolorem ut sint aut.', 0, 9, 15, '2020-06-24 03:58:09', '2020-10-30 11:53:03'),
(74, 'Jillian Denesik', 'satterfield.yazmin@hotmail.com', 'http://www.feil.org/sunt-ad-voluptatem-voluptatum-iure', '191.52.109.238', 'Sunt aliquam dolorum voluptas distinctio quae. Aliquam tempora est amet deleniti nobis.', 1, 72, 10, '2020-03-28 02:50:44', '2020-05-14 19:40:41'),
(75, 'Shanie Rempel', 'camron66@beahan.com', 'https://www.beatty.biz/iste-id-aut-et-nemo-quibusdam-ad-earum', '230.27.142.101', 'Maiores nisi ut vel corporis neque placeat minima autem. Vitae vel repudiandae eum at. Aliquid est voluptates molestiae reiciendis quo.', 1, 100, 8, '2020-05-21 20:00:02', '2020-02-25 06:38:37'),
(76, 'Cesar Wuckert Sr.', 'favian02@gmail.com', 'http://www.lebsack.com/rem-distinctio-ad-quasi-blanditiis-consequuntur-nobis', '17.117.161.155', 'Eius temporibus modi ea molestias ut occaecati omnis. Natus earum et delectus a quo soluta.', 0, 64, 13, '2020-09-04 23:35:27', '2020-08-25 13:28:31'),
(77, 'Georgiana Jerde', 'marge13@hotmail.com', 'http://hegmann.com/', '150.253.145.1', 'Ex dicta maxime officiis suscipit est excepturi velit. Excepturi alias sunt dignissimos dolor et voluptatem et similique. Nisi dignissimos error ut facilis omnis sit.', 1, 84, 4, '2020-11-18 18:14:41', '2020-11-20 13:02:06'),
(78, 'Bonita Volkman MD', 'francisca11@wintheiser.com', 'http://ferry.net/et-officia-enim-iste-suscipit', '188.156.44.85', 'Voluptatem voluptas rem ea numquam rerum quaerat aut. Optio quibusdam corporis voluptas et aliquid. Possimus distinctio asperiores cum beatae et perspiciatis maiores.', 1, 9, 5, '2020-08-05 14:47:16', '2020-11-25 18:34:09'),
(79, 'Prof. Austen Crist DDS', 'marlen47@gutkowski.com', 'https://adams.com/et-rerum-vel-praesentium-id.html', '176.159.43.177', 'Facilis nisi qui a. Reprehenderit rerum nam voluptates repellat.', 0, 33, 7, '2020-05-27 20:42:16', '2020-12-03 08:14:34'),
(80, 'Kylee Oberbrunner', 'aufderhar.heaven@hotmail.com', 'http://swaniawski.org/illo-facilis-et-vero', '169.225.125.247', 'Rerum aut tenetur non adipisci provident aut fuga animi. A et maiores molestiae sunt omnis officia minima.', 1, 100, 4, '2020-11-11 12:09:02', '2020-11-02 03:42:02'),
(81, 'Guillermo Klein', 'ljacobs@rau.com', 'http://ledner.com/facere-natus-voluptatem-sunt-voluptas-repellat-odit-voluptatem', '149.206.35.189', 'Voluptatem impedit perspiciatis et consequatur numquam et. Aut impedit et sit dolor.', 1, 33, 8, '2020-05-20 15:04:13', '2020-04-01 23:39:17'),
(82, 'Mr. Sydney Wyman MD', 'jimmy85@yahoo.com', 'https://jast.com/ut-veritatis-eius-quidem-ipsam-accusamus-vitae-nihil.html', '121.179.135.36', 'Sit error delectus qui dolor totam quaerat. Vero doloribus ex facilis et est vero quo adipisci. Et et explicabo accusantium atque.', 0, 84, 11, '2020-09-30 12:35:30', '2020-11-26 20:38:47'),
(83, 'Prof. Darby Sipes', 'nolan80@hotmail.com', 'https://lowe.com/deleniti-sint-maxime-impedit-quaerat-cumque.html', '10.192.94.183', 'In qui possimus neque. Odio quia esse aut vero hic eos. Vitae reiciendis debitis suscipit id et.', 0, 50, 15, '2020-09-11 14:40:46', '2020-07-24 11:46:20'),
(84, 'Otho Brown', 'meta20@gmail.com', 'http://rolfson.com/aperiam-voluptas-repellat-quisquam-velit-dolores-soluta-ut', '110.13.121.176', 'Beatae consequatur assumenda illo est possimus itaque dolor. Porro harum rerum animi veniam sunt. Ratione quos dignissimos tempora et est.', 0, 91, 4, '2020-08-01 08:49:52', '2020-11-21 06:10:49'),
(85, 'Rubie Hauck Jr.', 'lenna95@ward.com', 'http://www.funk.info/', '175.170.23.187', 'Vitae eaque qui occaecati quasi. Eum ratione et quasi rem amet.', 0, 72, 11, '2020-08-16 10:46:22', '2020-05-22 21:06:07'),
(86, 'Dr. Jonathon Fadel', 'yerdman@yahoo.com', 'https://yundt.com/qui-reiciendis-distinctio-magni-voluptatem-repellendus-non-minus.html', '119.75.61.180', 'Ducimus deserunt quos quo inventore non commodi. Rem distinctio vel aperiam iure quibusdam dolor maxime quaerat.', 1, 69, 8, '2020-11-21 02:32:52', '2020-07-19 11:45:43'),
(87, 'Mrs. Eloisa Cronin', 'denesik.rachael@yahoo.com', 'http://www.kshlerin.info/voluptatem-quia-eum-corrupti-dignissimos-omnis', '177.162.190.212', 'Cupiditate recusandae iste hic consequatur qui. Non id magnam ad dignissimos porro iusto.', 0, 16, 3, '2020-11-30 22:39:44', '2020-09-08 17:51:24'),
(88, 'Nikita Emmerich', 'bhackett@yahoo.com', 'http://jast.net/dolores-sed-et-mollitia-molestiae-corporis-dolores', '138.0.115.54', 'Vitae iusto laborum nulla perspiciatis officia corporis nemo. Ab vitae accusantium voluptatem omnis et illo pariatur nihil. Unde dolorem quis et consequatur.', 0, 14, 6, '2020-10-27 06:33:28', '2020-10-08 11:19:08'),
(89, 'Prof. Maximilian Gorczany', 'bud06@yahoo.com', 'http://jacobi.com/ducimus-et-est-quis-odio-tenetur-animi.html', '220.159.242.122', 'Deserunt recusandae ut qui in. Ut odio et doloremque et et ut qui. Quaerat tenetur ut sit repudiandae nihil.', 1, 2, 15, '2020-08-14 08:43:50', '2020-07-30 07:28:13'),
(90, 'Mr. Emerald Rolfson', 'achamplin@jones.com', 'https://www.shanahan.com/neque-consequatur-nostrum-sed-impedit', '73.205.246.6', 'Quis ex eveniet consequatur est. Consequuntur voluptates laboriosam voluptatem ut placeat.', 1, 70, 9, '2020-11-13 23:23:44', '2020-07-15 19:23:35'),
(91, 'Cicero Cremin', 'rippin.rupert@gmail.com', 'http://homenick.com/sit-suscipit-libero-esse-corporis-maiores-dolor-incidunt', '107.133.58.45', 'Molestiae aut placeat est consectetur sint. Dignissimos distinctio eaque placeat quia. Deserunt beatae tenetur consequuntur molestiae.', 1, 64, 10, '2020-10-06 04:30:58', '2020-08-22 13:53:45'),
(92, 'Luciano Hudson', 'kozey.sophia@crooks.net', 'http://gulgowski.com/quae-possimus-sit-vitae-laudantium-harum-et.html', '83.46.51.172', 'Inventore possimus magnam neque odit. Inventore eum tempora qui molestiae.', 0, 62, 5, '2020-10-18 13:05:07', '2020-10-02 12:06:07'),
(93, 'Zoila Fritsch II', 'nfritsch@hegmann.com', 'http://www.klocko.com/dolorum-quas-voluptatem-voluptas-officia-iste-magnam-magnam', '235.183.129.100', 'Ut non omnis nisi doloremque. Veritatis nostrum quia cum dolor ut dolor. Aut aliquam neque rerum quo optio.', 0, 19, 4, '2020-04-09 08:40:57', '2020-08-02 15:18:10'),
(94, 'Riley Brekke DVM', 'fbeier@kohler.biz', 'http://www.mckenzie.com/facere-dolor-occaecati-amet-asperiores-repellendus-a', '152.161.156.111', 'Veritatis rerum quaerat dolore. Cum commodi quis accusantium quibusdam quia recusandae.', 1, 78, 14, '2020-08-07 08:41:24', '2020-08-24 17:54:54'),
(95, 'Julien Herzog', 'savion90@hotmail.com', 'http://www.steuber.com/nesciunt-incidunt-possimus-odit-amet', '159.184.32.253', 'Est consequatur natus recusandae quo. Possimus maxime dolorum nulla. Corporis aut possimus ipsa earum debitis temporibus.', 0, 33, 8, '2020-05-27 18:22:14', '2020-10-22 16:14:04'),
(96, 'Nasir Bogan MD', 'khagenes@hyatt.com', 'http://www.mcdermott.info/optio-et-sit-autem-repellat-dolores', '178.103.173.210', 'Corporis doloribus voluptatem provident. Neque soluta est atque tenetur.', 0, 23, 10, '2020-08-26 12:29:01', '2020-10-15 17:07:39'),
(97, 'Prof. Ethyl Parisian Jr.', 'raegan.streich@shields.com', 'https://www.mayer.com/minima-inventore-ex-animi-exercitationem-ipsam-soluta', '105.242.62.215', 'Optio asperiores voluptas eum officiis sed laboriosam. Sint explicabo quidem optio corrupti aperiam eius et.', 0, 4, 6, '2020-05-31 03:45:12', '2020-09-12 05:44:16'),
(98, 'Leonie Donnelly', 'albert.labadie@anderson.com', 'http://www.smith.net/dolorem-ipsa-voluptates-ipsum-occaecati-provident-nihil-quis', '49.3.24.37', 'In repellat cum doloribus similique. Est pariatur eum officia. Vero occaecati libero magnam ut.', 0, 46, 9, '2020-05-26 21:31:11', '2020-10-23 14:45:11'),
(99, 'Ruben Gottlieb', 'peyton80@harvey.com', 'https://www.johns.com/et-ex-inventore-aliquam-aspernatur', '179.63.66.101', 'Distinctio eos ut dolor voluptatibus. Explicabo rem ab praesentium quia.', 0, 70, 10, '2020-07-27 10:22:08', '2020-09-14 00:35:48'),
(100, 'Courtney Fahey', 'alf59@windler.com', 'http://ryan.com/dolores-nesciunt-sint-quia-non-neque-error', '167.79.67.230', 'Quidem tempora ad non et odio corrupti temporibus. Quod voluptatem dicta eaque.', 0, 93, 6, '2020-04-28 14:36:58', '2020-10-26 08:20:41'),
(101, 'w ert ret', 'ahmed@gmail.com', NULL, '::1', 'wdsedwe c r3v re t4 rtge ttwsezr we', 1, 100, NULL, '2020-12-09 14:07:18', '2020-12-09 14:07:18'),
(102, 'sdsdd', 'amged@gmail.com', NULL, '::1', 'sddsdsd e daere r rerr', 0, 100, NULL, '2020-12-09 14:08:45', '2020-12-09 14:08:45'),
(103, 'rwest ew rt g', 'ahmed@gmail.com', NULL, '::1', 'aecqwedsqv wc fg g erg fwaf', 0, 100, NULL, '2020-12-09 14:09:13', '2020-12-09 14:09:13'),
(104, 'rasc f', 'ahmed@gmail.com', NULL, '::1', 'sa s a er se fs fe fsdf', 0, 100, NULL, '2020-12-09 14:10:08', '2020-12-09 14:10:08'),
(105, 'sfdsfs', 'ahmed@gmail.com', NULL, '::1', 'asadc saf d s de fsd f', 0, 100, NULL, '2020-12-09 14:11:34', '2020-12-09 14:11:34'),
(106, 'dfsdf', 'abdd@gm.com', NULL, '::1', 'dscsdds  fd f rfc e', 0, 100, NULL, '2020-12-09 14:11:58', '2020-12-09 14:11:58'),
(107, 'ahmed', 'eltaroon1082000@gmail.com', NULL, '::1', 'sdd fesf fe dfg r ewd fsg es f', 1, 100, NULL, '2020-12-09 14:36:17', '2020-12-09 14:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_03_183044_entrust_setup_tables', 1),
(5, '2020_12_04_072207_create_categories_table', 1),
(6, '2020_12_04_072520_create_posts_table', 1),
(7, '2020_12_04_072548_create_post_media_table', 1),
(8, '2020_12_04_072616_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parent_show` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parent_original` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sidebar_link` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `appear` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `comment_able` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `status`, `post_type`, `comment_able`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nesciunt eos tempore quam voluptatem.', 'nesciunt-eos-tempore-quam-voluptatem', 'Et nam ut dolores molestiae omnis et exercitationem. Magnam saepe temporibus cupiditate vel sed. Quas quia earum quisquam soluta quia quia omnis enim.', 0, 'post', 1, 11, 1, '2020-07-03 23:01:01', '2020-07-03 23:01:01'),
(2, 'Quos reiciendis ut maxime.', 'quos-reiciendis-ut-maxime', 'Exercitationem a id rerum sint est beatae. Est ut qui quis et nulla. Aut non iste ea quaerat et ut. Facilis unde necessitatibus voluptatibus exercitationem optio aliquam corporis.', 1, 'post', 1, 14, 1, '2020-05-14 23:01:01', '2020-05-14 23:01:01'),
(3, 'Quaerat porro id facilis et quam et cumque reiciendis.', 'quaerat-porro-id-facilis-et-quam-et-cumque-reiciendis', 'Repudiandae eius eos nesciunt facere fugit numquam. Facilis doloremque ipsum excepturi eum eos. Quidem pariatur architecto sapiente deserunt neque et voluptates. Ipsum nihil dolore officiis. Esse et quaerat facere dolorem a.', 0, 'post', 0, 10, 1, '2020-05-26 23:01:01', '2020-05-26 23:01:01'),
(4, 'Minus architecto aliquid eligendi.', 'minus-architecto-aliquid-eligendi', 'Quia quisquam esse excepturi id soluta culpa. Consequatur eos aut distinctio et quod est et. Eos est pariatur dignissimos aliquam qui deleniti. Molestiae praesentium quia ut.', 1, 'post', 1, 4, 4, '2020-04-22 23:01:01', '2020-04-22 23:01:01'),
(5, 'Mollitia dolorum qui aspernatur et adipisci quasi.', 'mollitia-dolorum-qui-aspernatur-et-adipisci-quasi', 'Dolore sint sint et enim et natus. Aliquid velit ipsum quis voluptate. Est ex quia nulla quo voluptate voluptatem cupiditate.', 0, 'post', 0, 15, 4, '2020-07-02 23:01:01', '2020-07-02 23:01:01'),
(6, 'Sunt ipsum.', 'sunt-ipsum', 'Ad praesentium non rem enim qui. Reprehenderit omnis et autem inventore velit id sed. Consequuntur autem aperiam officia possimus. Aspernatur odio assumenda natus dicta maxime.', 0, 'post', 0, 12, 1, '2020-03-12 23:01:01', '2020-03-12 23:01:01'),
(7, 'Omnis ut quibusdam ipsam.', 'omnis-ut-quibusdam-ipsam', 'Hic quo laborum harum repellat laboriosam distinctio cum. Velit magni sed hic esse quia consequatur. Ipsum minima quia fuga ea. Beatae nemo consequatur nihil perspiciatis ut eveniet reiciendis sapiente.', 0, 'post', 0, 7, 4, '2020-03-17 23:01:01', '2020-03-17 23:01:01'),
(8, 'Ut dolor sed quisquam quibusdam quos odio facere.', 'ut-dolor-sed-quisquam-quibusdam-quos-odio-facere', 'Repellat ratione et porro occaecati eveniet alias autem aut. Exercitationem velit excepturi aut et officia suscipit. Repellendus adipisci nisi hic et voluptates ut cupiditate. Aspernatur dolores assumenda nobis qui.', 0, 'post', 0, 9, 1, '2020-02-13 23:01:01', '2020-02-13 23:01:01'),
(9, 'Est aspernatur nulla rerum aperiam facilis fuga.', 'est-aspernatur-nulla-rerum-aperiam-facilis-fuga', 'Enim recusandae officia sed labore odit ex. Unde consequuntur nihil sint sed neque nihil minus. Quisquam labore numquam consequatur quidem ex pariatur. Temporibus et debitis in magnam aliquid ut.', 1, 'post', 1, 5, 3, '2020-05-05 23:01:01', '2020-05-05 23:01:01'),
(10, 'Impedit rem ut optio quasi officia.', 'impedit-rem-ut-optio-quasi-officia', 'Vel blanditiis voluptas accusantium dolore quam quibusdam quidem. Magnam et placeat aliquam veritatis quibusdam sequi. Delectus est praesentium hic. Numquam voluptatem quibusdam aut voluptatem eligendi et sed in. Facilis aspernatur voluptas quisquam.', 0, 'post', 0, 9, 4, '2020-02-26 23:01:01', '2020-02-26 23:01:01'),
(11, 'Non veniam fuga quo nihil.', 'non-veniam-fuga-quo-nihil', 'Consequatur nihil rerum voluptas laborum harum. Et eius quas et incidunt eaque. Nemo non voluptatum perspiciatis temporibus tempore.', 0, 'post', 1, 9, 4, '2020-01-11 23:01:01', '2020-01-11 23:01:01'),
(12, 'Natus perferendis id.', 'natus-perferendis-id', 'Impedit possimus cupiditate labore eum odio consequatur. Molestiae doloremque consequuntur atque. Ipsa temporibus velit culpa ducimus. Dolorem et tempore rerum nam non laudantium possimus.', 0, 'post', 0, 4, 1, '2020-04-13 23:01:01', '2020-04-13 23:01:01'),
(13, 'Sit perferendis sed rem qui voluptatem sed nihil.', 'sit-perferendis-sed-rem-qui-voluptatem-sed-nihil', 'Rerum omnis esse amet dicta rerum. Totam quia molestias et autem omnis asperiores. Corrupti est dolorem ipsum. Deserunt tempore porro ea.', 0, 'post', 0, 4, 4, '2020-03-18 23:01:01', '2020-03-18 23:01:01'),
(14, 'Quia perferendis reprehenderit vel.', 'quia-perferendis-reprehenderit-vel', 'Rerum occaecati aut at ut. Sequi ut error repudiandae. Quidem quia et maxime reprehenderit facere. Totam tempora ab debitis et.', 1, 'post', 1, 3, 4, '2020-06-03 23:01:01', '2020-06-03 23:01:01'),
(15, 'Maxime mollitia fuga qui.', 'maxime-mollitia-fuga-qui', 'Dicta blanditiis nam quibusdam saepe officia. Unde consectetur aut fugiat accusamus labore odio deleniti. Mollitia eum nemo dolores sed.', 1, 'post', 0, 11, 1, '2020-01-20 23:01:01', '2020-01-20 23:01:01'),
(16, 'Nobis autem dolores.', 'nobis-autem-dolores', 'Sit quisquam at sint unde sunt est. Eum pariatur in doloremque explicabo optio. Sapiente iusto in repudiandae dolores harum ut vel fugit.', 1, 'post', 1, 3, 3, '2020-07-05 23:01:01', '2020-07-05 23:01:01'),
(17, 'Mollitia sunt velit quidem.', 'mollitia-sunt-velit-quidem', 'Nobis eligendi aperiam saepe veritatis occaecati consequatur ut aut. Exercitationem ipsa est sed nostrum et.', 1, 'post', 0, 14, 4, '2020-05-25 23:01:01', '2020-05-25 23:01:01'),
(18, 'Eveniet officiis ea cupiditate qui accusamus.', 'eveniet-officiis-ea-cupiditate-qui-accusamus', 'Id aut doloribus accusantium accusantium reiciendis rerum officiis. Veritatis rerum numquam perferendis id ut quod.', 1, 'post', 0, 4, 3, '2020-06-27 23:01:01', '2020-06-27 23:01:01'),
(19, 'Optio veritatis ad architecto praesentium quos.', 'optio-veritatis-ad-architecto-praesentium-quos', 'Amet corporis id autem veritatis et ad labore. Delectus qui consequatur deleniti ut officiis. Hic eum quis libero nobis eveniet consequatur.', 1, 'post', 1, 7, 3, '2020-02-27 23:01:01', '2020-02-27 23:01:01'),
(20, 'Et vel expedita esse qui blanditiis.', 'et-vel-expedita-esse-qui-blanditiis', 'Culpa temporibus iusto repudiandae laboriosam earum sint. Tempore non dolores eos voluptas cum atque ut numquam. Et est debitis numquam consequuntur consequatur sint dolorum. Adipisci sunt doloribus architecto natus perspiciatis. Quos possimus est occaecati praesentium.', 0, 'post', 1, 3, 3, '2020-08-12 23:01:01', '2020-08-12 23:01:01'),
(21, 'Quasi nisi animi voluptatem.', 'quasi-nisi-animi-voluptatem', 'Aut ut libero rem laudantium ut natus. Sequi est recusandae qui sed labore reprehenderit rerum maxime. Doloribus nisi maxime sit recusandae voluptate et. Animi vel aliquam fugiat rem soluta eligendi qui eligendi.', 0, 'post', 0, 14, 2, '2020-08-19 23:01:01', '2020-08-19 23:01:01'),
(22, 'Qui facilis consequatur et enim quam cumque.', 'qui-facilis-consequatur-et-enim-quam-cumque', 'Minima odit officia quam est. Et voluptatibus mollitia nisi assumenda. Praesentium illum sint itaque laudantium earum suscipit nobis. Magnam similique reprehenderit non distinctio hic cumque.', 1, 'post', 0, 11, 3, '2020-08-20 23:01:01', '2020-08-20 23:01:01'),
(23, 'Et voluptas velit optio.', 'et-voluptas-velit-optio', 'Placeat distinctio explicabo quia id. Provident molestiae sit mollitia aut.', 1, 'post', 1, 4, 3, '2020-06-06 23:01:01', '2020-06-06 23:01:01'),
(24, 'Soluta facere aperiam porro.', 'soluta-facere-aperiam-porro', 'Magnam omnis doloremque ut pariatur. Debitis est et doloremque. Dolore est rem totam expedita et voluptatem. Consequatur eveniet est ut odio ut quasi facilis.', 1, 'post', 1, 5, 3, '2020-01-24 23:01:01', '2020-01-24 23:01:01'),
(25, 'Dolorem a optio.', 'dolorem-a-optio', 'Accusamus quam deserunt voluptatum deleniti porro tempore vel. Pariatur omnis repellat ea cum eum incidunt. Voluptate perferendis rerum itaque consequatur aliquam. Est quia enim sapiente beatae soluta.', 1, 'post', 0, 6, 2, '2020-02-26 23:01:01', '2020-02-26 23:01:01'),
(26, 'Consequatur culpa.', 'consequatur-culpa', 'Maxime nihil necessitatibus qui voluptatibus. A impedit ut consequatur non iste consequuntur. Aspernatur voluptatem eum voluptate pariatur.', 1, 'post', 0, 7, 3, '2020-03-25 23:01:01', '2020-03-25 23:01:01'),
(27, 'Aut voluptate ut molestiae amet.', 'aut-voluptate-ut-molestiae-amet', 'Eos fugit officia iusto voluptatem magni. Incidunt nulla rem ut placeat suscipit officia.', 1, 'post', 0, 5, 1, '2020-03-21 23:01:01', '2020-03-21 23:01:01'),
(28, 'Et quos perspiciatis.', 'et-quos-perspiciatis', 'Saepe earum ut inventore magni sunt. Explicabo dolores iste eligendi explicabo optio. Eum laborum veniam animi minus reprehenderit blanditiis quae. Ipsum eos qui dolor non vero et quo.', 0, 'post', 1, 6, 1, '2020-06-04 23:01:01', '2020-06-04 23:01:01'),
(29, 'Odio beatae est modi qui aut.', 'odio-beatae-est-modi-qui-aut', 'Corporis et facere dolorem doloribus necessitatibus corrupti. Quo ullam incidunt nam molestiae. Quos aut mollitia vel itaque necessitatibus.', 1, 'post', 0, 3, 3, '2020-06-16 23:01:01', '2020-06-16 23:01:01'),
(30, 'Voluptates dolorem quia suscipit odio corrupti suscipit.', 'voluptates-dolorem-quia-suscipit-odio-corrupti-suscipit', 'Perferendis non id ducimus iste culpa voluptas non illum. Possimus pariatur excepturi placeat reiciendis et voluptatibus. Enim vel quidem omnis eum molestiae expedita.', 0, 'post', 0, 4, 1, '2020-08-21 23:01:01', '2020-08-21 23:01:01'),
(31, 'Quia qui esse et rerum neque.', 'quia-qui-esse-et-rerum-neque', 'Nihil quia eum quas est iusto ea dolorum cupiditate. Neque recusandae similique exercitationem eaque. Quo esse doloribus vitae et esse iusto.', 0, 'post', 1, 13, 2, '2020-07-07 23:01:01', '2020-07-07 23:01:01'),
(32, 'Voluptatibus ex eaque aut enim velit distinctio ut.', 'voluptatibus-ex-eaque-aut-enim-velit-distinctio-ut', 'Temporibus et eius illum quis. Voluptatem architecto necessitatibus voluptatem autem et suscipit qui. Maxime eaque adipisci vel odio quidem et quaerat. Eveniet error odio velit voluptatum dolorum est.', 0, 'post', 0, 6, 1, '2020-06-06 23:01:01', '2020-06-06 23:01:01'),
(33, 'Voluptate dolores deleniti.', 'voluptate-dolores-deleniti', 'At ipsa qui quam veniam qui et dolorem. Dolorem et libero est est amet sequi veniam. Expedita aut iste fugiat. Ut et minus earum libero dolorem.', 1, 'post', 1, 11, 1, '2020-03-06 23:01:01', '2020-03-06 23:01:01'),
(34, 'In ab.', 'in-ab', 'Ipsum dolor ea corrupti sint et aut. Numquam ducimus sequi illum nulla aut dolorem qui. Est molestiae et sint excepturi ratione minus nesciunt. Quia eligendi velit quo soluta. Ut et voluptates minus velit labore cum soluta.', 1, 'post', 1, 8, 3, '2020-01-20 23:01:01', '2020-01-20 23:01:01'),
(35, 'Sapiente in voluptatem quos aut.', 'sapiente-in-voluptatem-quos-aut', 'Est tempora possimus est. Aut magni facilis aperiam eum quibusdam nostrum fugiat. Vitae error quo accusamus culpa earum minima magni. Et qui at beatae.', 0, 'post', 1, 12, 1, '2020-05-07 23:01:01', '2020-05-07 23:01:01'),
(36, 'Sint aut repellat.', 'sint-aut-repellat', 'Ad illo itaque ut quis sit aut nemo. Quis sed unde dolor eum consectetur. Minus est provident provident nam eveniet.', 0, 'post', 0, 7, 1, '2020-07-01 23:01:01', '2020-07-01 23:01:01'),
(37, 'Labore voluptas quod quia.', 'labore-voluptas-quod-quia', 'Deserunt et sit qui est dolore dolores a praesentium. Et cupiditate debitis voluptas totam doloribus.', 0, 'post', 0, 10, 1, '2020-03-25 23:01:01', '2020-03-25 23:01:01'),
(38, 'Voluptatem ut dignissimos consequuntur assumenda.', 'voluptatem-ut-dignissimos-consequuntur-assumenda', 'Aliquam deleniti amet omnis magni alias. Deserunt dolorum molestiae velit error aut est est. Asperiores facilis est explicabo accusamus repellendus.', 1, 'post', 0, 6, 4, '2020-08-18 23:01:01', '2020-08-18 23:01:01'),
(39, 'Voluptatum facilis minima sunt sed voluptas sunt.', 'voluptatum-facilis-minima-sunt-sed-voluptas-sunt', 'Totam nemo mollitia velit nam. Quisquam consectetur nisi amet est laboriosam velit laudantium. Qui ut doloremque mollitia quia dolorem non est.', 1, 'post', 0, 10, 2, '2020-04-13 23:01:01', '2020-04-13 23:01:01'),
(40, 'Saepe doloribus quisquam id dolore vel cumque deleniti.', 'saepe-doloribus-quisquam-id-dolore-vel-cumque-deleniti', 'Est excepturi nobis reprehenderit neque. Et amet enim veritatis rerum numquam facere nemo. Ipsum nostrum et perferendis odit aut. Voluptas dolores atque dicta.', 1, 'post', 1, 14, 4, '2020-04-08 23:01:01', '2020-04-08 23:01:01'),
(41, 'Commodi temporibus voluptatem occaecati.', 'commodi-temporibus-voluptatem-occaecati', 'Harum eum aspernatur maiores unde. Et voluptatum sed voluptatem quibusdam. Laudantium eveniet quo molestias nihil quae optio. Vel soluta non et repellendus. Ipsam qui nihil facere laudantium qui quia consequatur recusandae.', 0, 'post', 0, 9, 4, '2020-07-12 23:01:01', '2020-07-12 23:01:01'),
(42, 'Dolorum rerum cum vitae blanditiis.', 'dolorum-rerum-cum-vitae-blanditiis', 'Provident vitae est eius omnis ut. Et laborum eos aspernatur impedit quis. Et labore possimus atque labore. Quisquam possimus nihil deserunt asperiores deleniti.', 1, 'post', 0, 13, 4, '2020-06-30 23:01:01', '2020-06-30 23:01:01'),
(43, 'Quia pariatur aspernatur.', 'quia-pariatur-aspernatur', 'Nesciunt aut dolores corrupti qui voluptas libero. Quidem aspernatur suscipit qui rerum dolores deleniti sed aut. Omnis amet nobis magnam consequatur dolorem officia.', 1, 'post', 0, 10, 2, '2020-08-25 23:01:01', '2020-08-25 23:01:01'),
(44, 'Eius exercitationem.', 'eius-exercitationem', 'Voluptas id non repellat. Harum aspernatur voluptate ea sit. Occaecati non architecto aspernatur laudantium voluptatem nisi quia.', 0, 'post', 0, 4, 2, '2020-06-30 23:01:01', '2020-06-30 23:01:01'),
(45, 'Quam natus vel minima.', 'quam-natus-vel-minima', 'Et ut occaecati qui placeat dolores. Fugiat at similique rem esse quia. Sed dolores autem quibusdam in atque.', 1, 'post', 0, 8, 2, '2020-03-27 23:01:01', '2020-03-27 23:01:01'),
(46, 'Et distinctio magnam.', 'et-distinctio-magnam', 'Ut est ipsum voluptas nihil ratione qui consequatur. Optio aut vitae est voluptatum maxime eum doloremque officia. Deleniti ut rem quis aspernatur qui doloribus sit. Quo voluptatem facilis et voluptatem laborum.', 1, 'post', 1, 3, 3, '2020-04-24 23:01:01', '2020-04-24 23:01:01'),
(47, 'Laudantium qui necessitatibus magnam.', 'laudantium-qui-necessitatibus-magnam', 'Sit hic aliquid iusto dolores iste. Earum explicabo repudiandae quo nobis expedita harum. Dolorum soluta commodi rerum voluptatem maxime voluptas nostrum.', 0, 'post', 1, 15, 4, '2020-04-13 23:01:01', '2020-04-13 23:01:01'),
(48, 'Totam debitis harum non quia praesentium modi.', 'totam-debitis-harum-non-quia-praesentium-modi', 'Et aspernatur dicta est possimus dolorum et. Et facere rerum reprehenderit commodi nemo. Occaecati vitae molestiae aspernatur dolores vel tempore. Dolorem hic necessitatibus fuga neque consequatur quas voluptas.', 1, 'post', 1, 13, 4, '2020-01-08 23:01:01', '2020-01-08 23:01:01'),
(49, 'Et atque eum fuga.', 'et-atque-eum-fuga', 'Esse dignissimos qui aut. Exercitationem eum illum est dolorem. Dolorum et ad earum.', 0, 'post', 1, 12, 3, '2020-04-11 23:01:01', '2020-04-11 23:01:01'),
(50, 'Laborum omnis ad saepe.', 'laborum-omnis-ad-saepe', 'Harum recusandae debitis sed. Amet commodi tempore voluptatum eligendi et quibusdam. Dolor vero nihil blanditiis debitis debitis doloremque. Qui et sint animi amet sint unde et illum.', 1, 'post', 1, 9, 2, '2020-07-06 23:01:01', '2020-07-06 23:01:01'),
(51, 'Qui qui fuga accusantium sit.', 'qui-qui-fuga-accusantium-sit', 'Molestiae amet ut alias. Quae minus praesentium accusantium omnis. Eligendi veritatis nam unde rerum dolorem velit.', 1, 'post', 1, 15, 2, '2020-02-18 23:01:01', '2020-02-18 23:01:01'),
(52, 'Voluptatem temporibus quidem deserunt qui.', 'voluptatem-temporibus-quidem-deserunt-qui', 'Voluptas et veniam cupiditate et aut suscipit. Saepe voluptatem at quibusdam aut. Minus et aut nam autem.', 1, 'post', 0, 6, 1, '2020-07-08 23:01:01', '2020-07-08 23:01:01'),
(53, 'Fugit odio quis.', 'fugit-odio-quis', 'Omnis dolorem inventore hic similique quidem. Unde eaque qui aut qui est sed. Consequuntur perspiciatis sequi dolor eaque placeat sint incidunt.', 1, 'post', 0, 7, 4, '2020-08-04 23:01:01', '2020-08-04 23:01:01'),
(54, 'Animi tempore temporibus qui.', 'animi-tempore-temporibus-qui', 'Error dolor ut error nihil aspernatur laboriosam. Temporibus suscipit architecto quia.', 0, 'post', 1, 3, 4, '2020-04-16 23:01:01', '2020-04-16 23:01:01'),
(55, 'Voluptas id ad ipsam.', 'voluptas-id-ad-ipsam', 'Vero autem et ab nihil repellendus. Reiciendis in voluptas quo aperiam quae eum quidem.', 0, 'post', 0, 11, 3, '2020-07-17 23:01:01', '2020-07-17 23:01:01'),
(56, 'Aut iure possimus.', 'aut-iure-possimus', 'Nobis cum velit architecto voluptates et. Mollitia aut sed necessitatibus corrupti iure quos. Quas nam deleniti excepturi non quia dolor.', 0, 'post', 1, 9, 3, '2020-04-19 23:01:01', '2020-04-19 23:01:01'),
(57, 'Veritatis quia illum est earum.', 'veritatis-quia-illum-est-earum', 'Eum voluptatum voluptas inventore magnam optio. Perspiciatis aspernatur repudiandae quis sit ut est. Sunt accusantium dolorem mollitia quis. Distinctio inventore velit at dolorem vero.', 1, 'post', 0, 11, 4, '2020-01-25 23:01:01', '2020-01-25 23:01:01'),
(58, 'Assumenda qui dolorem iusto ipsa.', 'assumenda-qui-dolorem-iusto-ipsa', 'Non sed quis odio rerum vero. Nostrum sint a culpa explicabo et et. Illo totam laudantium reiciendis occaecati quaerat at.', 0, 'post', 0, 5, 4, '2020-01-01 23:01:01', '2020-01-01 23:01:01'),
(59, 'Nihil ducimus eum iusto tempora quisquam.', 'nihil-ducimus-eum-iusto-tempora-quisquam', 'Labore accusantium qui qui qui quos eos. Fugit omnis quis deleniti laboriosam temporibus eligendi. Animi sint ad magni et quas qui. Error quia aut assumenda animi non ut nihil voluptates.', 0, 'post', 1, 11, 1, '2020-07-06 23:01:01', '2020-07-06 23:01:01'),
(60, 'Totam dolorum atque optio autem.', 'totam-dolorum-atque-optio-autem', 'Ducimus sint voluptate quo quia nobis vel. Omnis et natus odit. Reprehenderit quis porro modi laudantium.', 1, 'post', 0, 12, 4, '2020-04-20 23:01:01', '2020-04-20 23:01:01'),
(61, 'Corporis facilis beatae.', 'corporis-facilis-beatae', 'Optio amet exercitationem dolore autem sit. Laboriosam eos aliquid nesciunt nesciunt et. Dolorem est explicabo quis error blanditiis quod. Porro aut quis et ut quis nihil voluptates magnam.', 0, 'post', 1, 4, 2, '2020-04-02 23:01:01', '2020-04-02 23:01:01'),
(62, 'Ut omnis quis magni maxime.', 'ut-omnis-quis-magni-maxime', 'Aperiam aut magni aut. Et commodi reprehenderit autem qui cumque voluptatibus voluptatem. Vel possimus in dolores adipisci.', 1, 'post', 1, 6, 2, '2020-06-12 23:01:01', '2020-06-12 23:01:01'),
(63, 'Aliquam totam quibusdam omnis omnis maiores.', 'aliquam-totam-quibusdam-omnis-omnis-maiores', 'Dignissimos ut provident autem exercitationem culpa. Quo recusandae similique tempore. Aspernatur harum quos suscipit. Et numquam consequatur et repudiandae exercitationem esse.', 1, 'post', 0, 15, 1, '2020-02-26 23:01:01', '2020-02-26 23:01:01'),
(64, 'Aut et magnam et.', 'aut-et-magnam-et', 'Sapiente a ut enim nesciunt debitis reiciendis veritatis. Et inventore facilis adipisci quidem corporis placeat dolorem quam. Omnis autem saepe sint aut eius porro repellat.', 1, 'post', 1, 7, 3, '2020-06-12 23:01:01', '2020-06-12 23:01:01'),
(65, 'Est aut nihil et qui rerum.', 'est-aut-nihil-et-qui-rerum', 'Quae rerum neque sequi saepe et. Labore dolor nobis expedita ut et quia et ut. Earum magni praesentium omnis magnam et est autem.', 1, 'post', 1, 10, 1, '2020-04-19 23:01:01', '2020-04-19 23:01:01'),
(66, 'Velit id molestiae.', 'velit-id-molestiae', 'Quis aut cupiditate odit earum. Reprehenderit omnis facilis pariatur aut cumque. Quis eos iure odit. Dolorum id ipsam nobis repudiandae molestias quia.', 1, 'post', 1, 6, 2, '2020-01-15 23:01:01', '2020-01-15 23:01:01'),
(67, 'Deserunt repellendus.', 'deserunt-repellendus', 'Quaerat architecto vero unde blanditiis laboriosam officiis. Pariatur nemo quasi ut beatae. Necessitatibus laborum voluptatum sequi eum molestiae exercitationem est. Nostrum dolore quis voluptatum eaque minus sint consequatur.', 1, 'post', 0, 4, 2, '2020-01-08 23:01:01', '2020-01-08 23:01:01'),
(68, 'Enim magnam necessitatibus est nihil dolor.', 'enim-magnam-necessitatibus-est-nihil-dolor', 'Minus non velit non eligendi. Omnis dicta aut commodi nihil. Soluta pariatur velit non dolorum. Et est blanditiis quae consequuntur et quasi temporibus.', 0, 'post', 0, 13, 3, '2020-02-01 23:01:01', '2020-02-01 23:01:01'),
(69, 'Fugiat amet sit inventore.', 'fugiat-amet-sit-inventore', 'Unde natus quis maxime. Delectus dolore sapiente voluptatum cumque. Ab rerum voluptas consequatur omnis labore voluptates voluptatum.', 1, 'post', 1, 13, 1, '2020-05-31 23:01:01', '2020-05-31 23:01:01'),
(70, 'Velit molestias sit recusandae saepe.', 'velit-molestias-sit-recusandae-saepe', 'Assumenda corporis beatae corrupti ducimus consequatur ut. Deleniti deserunt magnam consequatur dolore. Laudantium aliquid consequuntur voluptate voluptatum enim. Unde repellendus vitae doloremque debitis dolore quos.', 1, 'post', 1, 8, 2, '2020-06-05 23:01:01', '2020-06-05 23:01:01'),
(71, 'Sed aut praesentium vel consectetur labore.', 'sed-aut-praesentium-vel-consectetur-labore', 'Praesentium eum iusto rem in quasi et eius. Voluptate et quia tenetur. Rerum earum voluptas molestias nihil ex provident nesciunt numquam. Voluptatem aut saepe qui et velit.', 0, 'post', 0, 9, 3, '2020-08-16 23:01:01', '2020-08-16 23:01:01'),
(72, 'Perspiciatis et qui eos atque esse quia.', 'perspiciatis-et-qui-eos-atque-esse-quia', 'Sit placeat velit qui eum magni omnis. Dolores officia molestiae voluptate voluptatem doloribus quia qui. Voluptatem enim sunt harum laudantium sapiente hic.', 1, 'post', 1, 4, 3, '2020-02-09 23:01:01', '2020-02-09 23:01:01'),
(73, 'Quia dolorum rerum consequatur.', 'quia-dolorum-rerum-consequatur', 'Eveniet sunt atque ut eaque impedit dignissimos. Voluptatum aliquid ipsum et culpa et doloremque cumque. Laboriosam ut possimus minus non eos facilis soluta. Magni dolorem ullam ipsam quia quos.', 1, 'post', 0, 14, 2, '2020-06-07 23:01:01', '2020-06-07 23:01:01'),
(74, 'Eum in et.', 'eum-in-et', 'Sit et aut dolores ducimus dolores repudiandae ab. Tempore ea eos consequuntur sapiente. Adipisci sit maxime optio blanditiis nemo.', 0, 'post', 0, 15, 2, '2020-03-25 23:01:01', '2020-03-25 23:01:01'),
(75, 'Est ut enim qui quidem.', 'est-ut-enim-qui-quidem', 'Deserunt voluptas molestiae dolores nihil ipsum. Blanditiis eaque ea ex culpa et porro sit. Consectetur quibusdam aut aliquam.', 0, 'post', 1, 9, 4, '2020-02-02 23:01:01', '2020-02-02 23:01:01'),
(76, 'Eos a veritatis.', 'eos-a-veritatis', 'Expedita nihil at quod corrupti architecto eveniet. Nam suscipit consequatur maxime quis architecto. Ratione quos fugit minima est facere similique.', 0, 'post', 1, 11, 3, '2020-01-13 23:01:01', '2020-01-13 23:01:01'),
(77, 'Error tempora et dolorem.', 'error-tempora-et-dolorem', 'Aperiam inventore qui perferendis dolor quasi. Ipsum earum nisi quaerat aut. Voluptas voluptatem corrupti corrupti minus. Modi vero praesentium sunt pariatur harum nihil.', 0, 'post', 0, 3, 3, '2020-05-17 23:01:01', '2020-05-17 23:01:01'),
(78, 'Eum excepturi qui asperiores.', 'eum-excepturi-qui-asperiores', 'Omnis rerum et occaecati excepturi sapiente. Ut voluptas eaque iste iure. Est error ab natus nobis harum ea.', 1, 'post', 1, 11, 1, '2020-06-15 23:01:01', '2020-06-15 23:01:01'),
(79, 'Expedita ut rem dolorem amet.', 'expedita-ut-rem-dolorem-amet', 'Corrupti blanditiis rerum aut quo et atque aut et. Sit atque dignissimos deleniti at qui totam. Non aliquam placeat soluta rem. Quibusdam voluptatum modi asperiores cupiditate.', 0, 'post', 0, 12, 4, '2020-05-26 23:01:01', '2020-05-26 23:01:01'),
(80, 'Natus doloribus deserunt.', 'natus-doloribus-deserunt', 'Est sunt praesentium qui accusamus iusto quia enim. Ipsa ut cum est sed adipisci inventore et. Quia aut atque laboriosam magni ut. Voluptatem tenetur unde iure velit quam ducimus id. Aut eos unde sunt et et pariatur ullam.', 0, 'post', 0, 11, 3, '2020-07-31 23:01:01', '2020-07-31 23:01:01'),
(81, 'Deserunt similique dicta.', 'deserunt-similique-dicta', 'Sunt at ipsa modi velit. Inventore ex eos accusamus beatae. Aspernatur sit sit dolor ut ut. Et debitis adipisci eligendi praesentium.', 1, 'post', 1, 10, 3, '2020-08-21 23:01:01', '2020-08-21 23:01:01'),
(82, 'Qui hic aut voluptate nobis.', 'qui-hic-aut-voluptate-nobis', 'Et officiis iure incidunt voluptatibus unde sint. Molestias fugit hic earum voluptas aut nostrum. Non sint qui ad natus natus.', 0, 'post', 0, 5, 3, '2020-04-07 23:01:01', '2020-04-07 23:01:01'),
(83, 'Cumque eveniet vero hic et.', 'cumque-eveniet-vero-hic-et', 'Quia voluptatem excepturi aliquid laboriosam quia. Et et facilis id suscipit officiis ex. Deserunt rem nihil id est aut id odit voluptas. Sed ab consectetur incidunt sed fugit deserunt.', 0, 'post', 0, 13, 1, '2020-08-27 23:01:01', '2020-08-27 23:01:01'),
(84, 'Nesciunt totam dolorum temporibus qui commodi unde repellat saepe.', 'nesciunt-totam-dolorum-temporibus-qui-commodi-unde-repellat-saepe', 'Laborum repudiandae voluptas quis enim. Maiores qui ex error aperiam voluptas eaque. Necessitatibus rerum officiis nam hic. Autem sit similique molestias eum quibusdam error. Perspiciatis eveniet id enim qui enim ut.', 1, 'post', 1, 6, 4, '2020-07-25 23:01:01', '2020-07-25 23:01:01'),
(85, 'Illo autem optio similique et.', 'illo-autem-optio-similique-et', 'Reprehenderit doloribus aut odio cum cumque quaerat. Sequi beatae quam fugit omnis. Occaecati nihil voluptatibus ut aut. Voluptas animi a impedit architecto.', 1, 'post', 1, 14, 2, '2020-05-11 23:01:01', '2020-05-11 23:01:01'),
(86, 'Qui qui id ut quisquam aut.', 'qui-qui-id-ut-quisquam-aut', 'Nulla eaque ut iste. Perferendis fugit quo earum voluptatem. Quis minus vitae optio soluta et aut.', 1, 'post', 1, 7, 3, '2020-04-20 23:01:01', '2020-04-20 23:01:01'),
(87, 'Eos incidunt ut dicta impedit at.', 'eos-incidunt-ut-dicta-impedit-at', 'Dolore soluta molestiae eveniet. Non numquam eum repellendus corrupti blanditiis aut accusantium. Sunt nemo earum et nulla modi a doloribus dolores. Aspernatur nemo assumenda aut nihil qui.', 1, 'post', 0, 12, 2, '2020-04-15 23:01:01', '2020-04-15 23:01:01'),
(88, 'Iure cumque et aut.', 'iure-cumque-et-aut', 'Officia ut odio et aut aut architecto. Quia error dolor vitae impedit dolores repudiandae doloribus. Occaecati ipsam totam corporis provident praesentium atque. Ut qui sit reiciendis accusamus error.', 1, 'post', 0, 12, 2, '2020-05-20 23:01:01', '2020-05-20 23:01:01'),
(89, 'Alias dignissimos sed dolorem.', 'alias-dignissimos-sed-dolorem', 'Modi ut nulla a similique quos aut adipisci. Aut tempore dolorem et rem repellendus pariatur dicta sit. Natus iure consequatur consequatur eum sed nesciunt suscipit.', 1, 'post', 0, 6, 4, '2020-02-13 23:01:01', '2020-02-13 23:01:01'),
(90, 'Unde omnis vel.', 'unde-omnis-vel', 'Dolor suscipit doloribus quas atque numquam. Voluptatum et numquam et magnam. Voluptates aut ut et minima ducimus.', 1, 'post', 0, 10, 3, '2020-01-12 23:01:01', '2020-01-12 23:01:01'),
(91, 'Et autem voluptas repellat nostrum necessitatibus ad.', 'et-autem-voluptas-repellat-nostrum-necessitatibus-ad', 'Repudiandae sit veniam ad ut dolorem est voluptatem expedita. Iste labore sunt nesciunt molestiae. Qui nemo praesentium sequi tempore qui et.', 1, 'post', 1, 7, 3, '2020-07-21 23:01:01', '2020-07-21 23:01:01'),
(92, 'Cupiditate rerum cum iusto voluptas quas.', 'cupiditate-rerum-cum-iusto-voluptas-quas', 'Expedita atque eligendi quas quibusdam. Sint consequatur illum sunt deserunt adipisci velit sed. Pariatur tempore et amet neque et voluptatem. Ipsam ut et ipsum aut eaque.', 0, 'post', 0, 8, 1, '2020-03-24 23:01:01', '2020-03-24 23:01:01'),
(93, 'Nulla architecto fugiat temporibus commodi explicabo.', 'nulla-architecto-fugiat-temporibus-commodi-explicabo', 'Ducimus suscipit accusamus explicabo incidunt fugiat amet tempore. Quo exercitationem est maiores dolor. Ducimus provident est veniam deserunt enim. Qui nisi laudantium est.', 1, 'post', 1, 7, 1, '2020-03-01 23:01:01', '2020-03-01 23:01:01'),
(94, 'Omnis quis cum quo laudantium et tempore.', 'omnis-quis-cum-quo-laudantium-et-tempore', 'Odio eum sed harum ea sed atque. Deserunt maxime pariatur tenetur. Eius excepturi amet aut necessitatibus voluptatem sequi.', 1, 'post', 0, 8, 1, '2020-06-03 23:01:01', '2020-06-03 23:01:01'),
(95, 'Sed voluptatum commodi voluptatem.', 'sed-voluptatum-commodi-voluptatem', 'Tenetur quis quam repudiandae qui vitae eius. Voluptatum aliquam nihil ut totam accusamus velit. Doloremque natus eum est quisquam expedita. Laborum quis qui explicabo possimus consectetur nostrum.', 0, 'post', 1, 11, 3, '2020-04-03 23:01:01', '2020-04-03 23:01:01'),
(96, 'Et placeat atque tempore pariatur.', 'et-placeat-atque-tempore-pariatur', 'Voluptatibus odio voluptates accusamus quidem. Vel ut sint unde dignissimos. At sed voluptatem voluptatem ut. Cupiditate itaque aut omnis delectus quia.', 1, 'post', 0, 14, 4, '2020-01-11 23:01:01', '2020-01-11 23:01:01'),
(97, 'Et delectus velit voluptate.', 'et-delectus-velit-voluptate', 'Ipsa et non iure. Itaque totam animi qui ad exercitationem sint. Porro iure eum rem voluptatibus.', 0, 'post', 1, 3, 3, '2020-04-24 23:01:01', '2020-04-24 23:01:01'),
(98, 'Placeat omnis eum enim eveniet eligendi recusandae.', 'placeat-omnis-eum-enim-eveniet-eligendi-recusandae', 'Est totam sint doloribus aut. Sunt ut facere omnis perferendis temporibus est magni. Ipsa amet ducimus corrupti voluptas molestiae et consequatur. Id necessitatibus quasi provident tempore autem ea fugit qui. Commodi maxime molestiae nam et est sint.', 1, 'post', 0, 15, 3, '2020-04-25 23:01:01', '2020-04-25 23:01:01'),
(99, 'Porro sit optio quis quasi.', 'porro-sit-optio-quis-quasi', 'Debitis error labore minima numquam. Ab aliquam voluptatem ut in. A aut cumque architecto doloremque sint eum. Labore similique ea est odio vitae.', 0, 'post', 0, 3, 1, '2020-02-18 23:01:01', '2020-02-18 23:01:01'),
(100, 'Velit totam tenetur velit.', 'velit-totam-tenetur-velit', 'Vel pariatur occaecati iusto. Quasi fugit culpa voluptas fugiat. Necessitatibus et occaecati nihil ut incidunt tempora in perspiciatis.', 1, 'post', 1, 7, 2, '2020-02-22 23:01:01', '2020-02-22 23:01:01'),
(101, 'About Us', 'about-us', 'Aut et et possimus numquam incidunt. Odio nemo occaecati rem dolorum iure similique non. Vel magnam fugiat temporibus et placeat et provident.', 1, 'page', 0, 1, 1, '2020-12-04 14:19:10', '2020-12-04 14:19:10'),
(102, 'Our Vision', 'our-vision', 'Ut ducimus eum ut dolorem dolorem alias illo. Laudantium cupiditate nemo laboriosam similique reiciendis et. Dolores facilis laborum maiores dicta qui. Eos ratione ut fuga voluptas omnis ratione.', 1, 'page', 0, 1, 1, '2020-12-04 14:19:10', '2020-12-04 14:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE `post_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `allowed_route`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'Administrator', 'admin', '2020-12-04 14:19:02', '2020-12-04 14:19:02'),
(2, 'editor', 'Supervisor', 'Supervisor', 'admin', '2020-12-04 14:19:03', '2020-12-04 14:19:03'),
(3, 'user', 'User', 'User', NULL, '2020-12-04 14:19:03', '2020-12-04 14:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_email` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `mobile`, `email_verified_at`, `password`, `user_image`, `status`, `bio`, `receive_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '965003348391', '2020-12-04 14:19:03', '$2y$10$7GvrlFhKAKW14aUPYwBee.hQkxOoSbvIoaE2eb4BS1dd011Ty8aNu', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:03', '2020-12-04 14:19:03'),
(2, 'editor', 'editor', 'editor@gmail.com', '965003348392', '2020-12-04 14:19:04', '$2y$10$6kKDdsCD2LxgbafhdKVfJuNMVdWcIX.zLbA2XPwA/aDXvq6cFNC5C', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:04', '2020-12-04 14:19:04'),
(3, 'Ahmed', 'ahmed', 'ahmed@gmail.com', '965003348393', '2020-12-04 14:19:04', '$2y$10$p7.S9kyBa1Xfalhk9VatwOinKcbH08jDJvrWtjffC3Hckr8Jm3QyK', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:04', '2020-12-04 14:19:04'),
(4, 'Heba', 'heba', 'heba@gmail.com', '965003348394', '2020-12-04 14:19:04', '$2y$10$/.4uzOECXLLFgnVXe9IJsOq9uZxo1pbShohatvtrXULnG75Gq2t9C', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:04', '2020-12-04 14:19:04'),
(5, 'Aya', 'aya', 'aya@gmail.com', '965003348395', '2020-12-04 14:19:04', '$2y$10$T.sOdCpQ14Hrjs03NXPhhuHGAJte2El.qOhHQyv9ct7i7XQUVrybO', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:04', '2020-12-04 14:19:04'),
(6, 'Cleora Berge', 'herman.blanche', 'arielle88@gmail.com', '9650038971', '2020-12-04 14:19:05', '$2y$10$hWOdmr/qxRNfSxg6uTfk0uLD6SnSX4xo7Yu0mMSa4hHrP5m8mTGhi', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:05', '2020-12-04 14:19:05'),
(7, 'Bryana Schumm', 'ghegmann', 'pierre96@gmail.com', '9650038992', '2020-12-04 14:19:05', '$2y$10$tZCYYbYFxMxrtK4WvlSzW.74GKDiTSkBGTEEExLUZTDVriTkd3isu', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:05', '2020-12-04 14:19:05'),
(8, 'Brian Runte', 'elsa.kunze', 'brennon28@yahoo.com', '9650032720', '2020-12-04 14:19:05', '$2y$10$2qx/PCHMwsi4TXxME2DBo.st1FnrN.iJx1Zxin34GK2vt0sDliHeW', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:05', '2020-12-04 14:19:05'),
(9, 'Simeon Ruecker', 'torp.maximillian', 'brenda75@gmail.com', '9650037003', '2020-12-04 14:19:05', '$2y$10$2K18s7iiaQTcmVzDT/wroeBre/IEIdtagoRGVDp/6MO2aLS.jIMuC', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:06', '2020-12-04 14:19:06'),
(10, 'Tremayne Klein DVM', 'karl88', 'lorna.sauer@gmail.com', '9650034348', '2020-12-04 14:19:06', '$2y$10$5B/y90cKVvZZNm3eut1j3Ojh7nJZ/AdyjsFKkBKptmJJASnAbxDri', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:06', '2020-12-04 14:19:06'),
(11, 'Miss May Wyman PhD', 'jordane90', 'xmaggio@donnelly.com', '9650031609', '2020-12-04 14:19:06', '$2y$10$KTu6.09n.tipyjTGyuowRuhEtlDCSTv4OCjP9KMHwCo3hYiUZpAw2', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:06', '2020-12-04 14:19:06'),
(12, 'Genoveva Adams III', 'crooks.sean', 'agnes.hartmann@hotmail.com', '9650037948', '2020-12-04 14:19:06', '$2y$10$kXP4i8Icwe38gOl8Kf/CCewmjneBGbRl7yumVkM5GDw4WL6nXh4wm', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:07', '2020-12-04 14:19:07'),
(13, 'Daryl Gleason', 'don28', 'carey91@yundt.com', '9650038197', '2020-12-04 14:19:07', '$2y$10$hC/j.KI8X5p0O5C4hCwRFeRtx2A7ceTMM/tPw4uZ9cEBIr2Cgy2VC', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:07', '2020-12-04 14:19:07'),
(14, 'Prof. Marcellus Walker', 'josianne.osinski', 'charlene.mosciski@connelly.net', '9650032122', '2020-12-04 14:19:07', '$2y$10$aeuGF56.Ab/WCHqiV0H3sOckqLyu1F3.Z1b02h3Ya1ih/ZxVWJdH6', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:07', '2020-12-04 14:19:07'),
(15, 'Zachariah Ankunding', 'bartholome.waters', 'tamia.veum@carter.biz', '9650039300', '2020-12-04 14:19:07', '$2y$10$vnTyg9t7bNFBdC5inWqFaOwPJpF7ymDx0jLvW/DBytY7O7vMoqXAW', NULL, 1, NULL, 0, NULL, '2020-12-04 14:19:07', '2020-12-04 14:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_media`
--
ALTER TABLE `post_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_media_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_permissions_permission_id_foreign` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `post_media`
--
ALTER TABLE `post_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_media`
--
ALTER TABLE `post_media`
  ADD CONSTRAINT `post_media_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
