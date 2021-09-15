-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 11:43 AM
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
-- Database: `math_2`
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
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `exam_id`, `mark`, `user_id`, `date`, `lesson_id`, `answer`) VALUES
(1, 14, 1, 1, '2021-01-16', NULL, ''),
(2, 14, 1, 1, '2021-01-16', NULL, ''),
(3, 14, 1, 1, '2021-01-16', NULL, ''),
(4, 14, 1, 1, '2021-01-16', NULL, ''),
(5, 14, 1, 1, '2021-01-16', NULL, ''),
(6, 14, 1, 1, '2021-01-16', NULL, '');

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
(1, '', '43897_s5.jpg', '2021-01-16'),
(2, '', '80044_s2.png', '2021-01-16'),
(4, '', '66293_s4.jpg', '2021-01-16');

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
  `event_id` int(11) NOT NULL,
  `events_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `events_description` text CHARACTER SET utf8 DEFAULT NULL,
  `events_time` time DEFAULT NULL,
  `events_date` date DEFAULT NULL,
  `event_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

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
  `number` int(11) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `exam_name`, `exam_date`, `categ_id`, `member_id`, `lesson_id`, `link`, `exam_desc`, `number`) VALUES
(14, 'dgbnhhfgdfde', '2021-01-16', 7, 1, 78, '', NULL, 10),
(15, 'fgbgv', '2021-01-16', 7, 1, 0, 'vbvnvnb', NULL, 10),
(16, 'امتحان مايكرو', '2021-02-22', 0, 1, 0, 'https://drive.google.com/file/d/16rSg-Av-zVPIXpDCGSwPF65eug_jXOaa/view?usp=sharing', NULL, 10);

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
  `tags` varchar(225) NOT NULL,
  `allow_comments` tinyint(4) NOT NULL DEFAULT 0,
  `Approve` tinyint(1) NOT NULL DEFAULT 0,
  `pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `lesson_name`, `lesson_description`, `video`, `lesson_data`, `member_id`, `cat_id`, `tags`, `allow_comments`, `Approve`, `pdf`) VALUES
(79, 'Lecture 1-1', '(Lecture 1-1: in Arabic): Difference between Microprocessor and Microcontroller\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q6Wb2lUGBxA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 1, 14, '', 0, 1, 'https://drive.google.com/file/d/1zOSBWW-GSj3H7xY6XFASVHW4njjRDGiG/view?usp=sharing'),
(80, 'Lecture 1-2', '(Lecture 1-2: in Arabic): Difference between Microprocessor and Microcontroller\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SxZapKs85nU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 1, 14, '', 0, 1, 'https://drive.google.com/file/d/1zOSBWW-GSj3H7xY6XFASVHW4njjRDGiG/view?usp=sharing'),
(81, 'Lecture 1-3', '(Lecture 1-3: in Arabic): Difference between Microprocessor and Microcontroller\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bNvGw9TRxKg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 1, 14, '', 0, 1, 'https://drive.google.com/file/d/1zOSBWW-GSj3H7xY6XFASVHW4njjRDGiG/view?usp=sharing'),
(82, 'Lecture 1-4', '(Lecture 1-4: in Arabic): Difference between Microprocessor and Microcontroller\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_kqYL-C-wIQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2021-01-16', 1, 14, '', 0, 1, 'https://drive.google.com/file/d/1zOSBWW-GSj3H7xY6XFASVHW4njjRDGiG/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `live_id` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `lang` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `live`
--

INSERT INTO `live` (`live_id`, `link`, `cat_id`, `date`, `lang`) VALUES
(2, 'سؤي', 1, '2021-01-10', NULL);

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
(1, 'ahmed', '601f1889667efaebb33b8c12572835da3f027f78', 'amged@gmail.com', '', 2, 0, '2021-01-31', 'img.png', NULL, NULL, NULL, 2147483647, 1);

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
(55, 'About Microprocessor', 'A microprocessor is a computer processor that incorporates the functions of a computers central processing unit (CPU) on a single integrated circuit (IC), or at most a few integrated circuits. The microprocessor is a multipurpose, programmable device that accepts digital data as input, processes it according to instructions stored in its memory, and provides results as output. Microprocessors contain both combinational logic and sequential digital logic. Microprocessors operate on numbers and symbols represented in the binary numeral system. The integration of a whole CPU onto a single chip or on a few chips greatly reduced the cost of processing power. Integrated circuit processors are produced in large numbers by highly automated processes resulting in a low per unit cost. Single-chip processors increase reliability as there are many fewer electrical connections to fail. As microprocessor designs get faster, the cost of manufacturing a chip (with smaller components built on a semiconductor chip the same size) generally stays the same. Before microprocessors, small computers had been implemented using racks of circuit boards with many medium- and small-scale integrated circuits. Microprocessors integrated this into one or a few large-scale ICs. Continued increases in microprocessor capacity have since rendered other forms of computers almost completely obsolete, with one or more microprocessors used in everything from the smallest embedded systems and handheld devices to the largest mainframes and super computers. A microcontroller is a small computer (SoC) on a single integrated circuit containing a processor core, memory, and programmable input/output peripherals. Program memory in the form of Ferroelectric RAM, NOR flash or OTP ROM is also often included on chip, as well as a typically small amount of RAM. Microcontrollers are designed for embedded applications, in contrast to the microprocessors used in personal computers or other general purpose applications. Microcontrollers are used in automatically controlled products and devices, such as automobile engine control systems, implantable medical devices, remote controls, office machines, appliances, power tools, toys and other embedded systems. By reducing the size and cost compared to a design that uses a separate microprocessor, memory, and input, output devices, microcontrollers make it economical to digitally control even more devices and processes. Mixed signal microcontrollers are common, integrating analog components needed to control non-digital electronic systems. Some microcontrollers may use four-bit words and operate at clock rate frequencies as low as 4 kHz, for low power consumption (single-digit milliwatts or microwatts). They will generally have the ability to retain functionality while waiting for an event such as a button press or other interrupt; power consumption while sleeping (CPU clock and most peripherals off) may be just nanowatts, making many of them well suited for long lasting battery applications. Other microcontrollers may serve performance-critical roles, where they may need to act more like a digital signal processor (DSP), with higher clock speeds and power consumption', '42350_microprocessor-chip-500x500.jpg', '2021-01-16', 0, 1, '', 1, NULL),
(56, 'PIC Microcontroller ', 'الميكروكونترولر – PIC: هي نوع من أنواع المتحكمات الدقيقة، وهي عبارة عن وحدات تحكم قابلة للبرمجة، تتكون من دوائر إلكترونية يمكن برمجتها لتنفيذ مجموعة واسعة من المهام، مثل أن تكون مؤقتاً أو للتحكم في خط الإنتاج وغير ذلك الكثير. توجد في معظم الأجهزة الإلكترونية مثل أنظمة الإنذار وأنظمة التحكم في الكمبيوتر والهواتف، وفي الواقع أي جهاز إلكتروني تقريباً. توجد أنواع عديدة من المتحكمات الدقيقة (PIC)، والأفضل قد يكون موجوداً في مجموعة (GENIE) للمتحكمات الدقيقة القابلة للبرمجة. تمت برمجتها ومحاكاتها بواسطة برنامج (Circuit Wizard).\r\n', '90578_shutterstock_1219568797-780x470.jpg', '2021-01-16', 0, 1, '', 1, NULL),
(57, 'قواعد البيانات', ' قاعدة المعطيات  DataBase : هي مجموعة من عناصرِ البيانات المنطقية المرتبطة مع بعضها البعض بعلاقة رياضية، وتتكون قاعدة البيانات من جدول واحد أو أكثر. ويتكون الجدول من سجل (صف (قواعد البيانات)) أو أكثر ويتكون السجل من حقل (حقل (علم الحاسوب)) أو أكثر. ومثال عليه السجل الخاص بموظف معين يتكون من عدة حقول مثل رقم الموظف – اسم الموظف – درجة الموظف – تاريخ التعيين – الراتب – والقسم التابع له، وغير ذلك من بيانات الموظفين تخزن في جهاز الحاسوب عَلى نحو منظّم، حيث يقوم برنامج (حاسوب) يسمى محرك قاعدة البيانات (database engine) بتسهيل التعامل معها والبحث ضمن هذه البيانات، وتمكين المستخدم من الإضافة والتعديل عليها\r\n\r\nوعند ذلك يجب علينا معرفة نشأة قواعد البيانات ..\r\n\r\nان مع تطور التكنولوجيا وتطور العمل بالبيانات ظهر ما يسمى ب Data Base   لتسهيل العمليات والتعامل مع الكم الهائل من البيانات فكان أول ظهور لها في العام 1960 بما يسمى ال Flat File   ثم ظهر النظام الهرمي  والشبكي ,ثم قواعد البيانات الكائنية Object Oriented Database   وهو ما اصبح يعرف الآن ب Sql  و NoSql  وقواعد البيانات السحابية Cloud Database  .', '55176_p7XBZe0Mjau9p2dXygmEnRAIcgTFB81n9mwJ7v59.png', '2021-01-16', 0, 1, '', 1, NULL),
(59, 'الفرق بين MySQL و SQL Server', 'الاختلافات الرئيسية بين MySQL و SQL Server:\r\nالآن وبعد أن حصلنا على مخطط لماهية هذه الأنظمة، دعنا نلقي نظرة على العديد من الاختلافات الرئيسية بين MySQL و SQL Server:\r\n\r\n1.   البيئة:\r\nكما تم التلميح سابقاً بأن SQL Server يعمل بشكل أفضل مع .NET، بينما يمكن إقران MySQL مع كل اللغات الأخرى تقريباً، وعادةً ما يكون مع PHP.\r\n\r\nكما يجب الإشارة إلى أن SQL Server يستخدم لتشغيل Windows حصرياً، ولكن هذا تغير منذ عامين عندما أعلنت Microsoft دعم Linux لـ SQL Server.\r\n\r\nبالرغم من ذلك فإن إصدار Linux يكاد يكون ناضجاً بما فيه الكفاية، مما يعني أن توصياتنا تبقى لك لمواصلة العمل على Windows إذا كنت تستخدم SQL Server، والتحول إلى Linux إذا كنت تستخدم MySQL.\r\n\r\n2.   بناء الجملة (Syntax):\r\nبالنسبة لمعظم الناس فإن هذا الفرق يعتبر الأكثر أهمية بين النظامين.\r\n\r\nحيث يمكن أن يؤثر التعرف على مجموعة واحدة من قواعد النحو على أخرى بشكل كبير على قرارك فيما يتعلق بالنظام الذي يناسبك.\r\n\r\nعلى الرغم من أن كل من MySQL و SQL Server يعتمدان على SQL، إلا أن الاختلافات في بناء الجملة لا تزال بارزة وجديرة بالاهتمام.\r\n\r\nفعلى سبيل المثال، انظر إلى المثال التالي:\r\n\r\nMySQL:\r\n\r\nSELECT age\r\nFROM person\r\nORDER BY age ASC\r\nLIMIT 1 OFFSET 2\r\nMicrosoft SQL Server:\r\n\r\n*SELECT TOP 3 WITH TIES \r\nFROM person\r\nORDER BY age ASC\r\nكلا الجزأين من الكود يحققان نفس النتيجة، حيث أنهما يعيدان 3 مداخل مع العمر الأصغر من جدول اسمه person.\r\n\r\nلكن هناك تغيير جذري في بناء الجملة، وبطبيعة الحال فإن بناء الجملة ذاتي ولذا لا يمكننا تقديم أي توصيات.\r\n\r\nالذهاب مع أي منهما يعتبر شيء بديهي بالنسبة لك.\r\n\r\nكما يمكنكم العثور على القائمة الكاملة للتغيرات التنفيذية بين MySQL و SQL Server هنا.\r\n\r\n3.   SQL Server هو أكثر من RDBMS:\r\nالميزة الرئيسية للبرمجيات الاحتكارية مقابل البرمجيات مفتوحة المصدر هو الدعم الحصري الذي تتلقاه.\r\n\r\nفي هذه الحالة بالذات، تصبح الميزة أكثر عمقاً، حيث أن SQL Server مدعوم من قبل واحدة من أكثر شركات التكنولوجيا حول العالم.\r\n\r\nقامت Microsoft بإنشاء أدوات إضافية لـ SQL Server والتي تأتي مجمعة مع RDBMS، بما في ذلك أدوات تحليل البيانات، كما تحتوي على خادم لإعداد التقارير (خدمات تقارير SQL Server)، بالإضافة إلى أداة ETL.\r\n\r\nيمكنكم الحصول على ميزات مماثلة على MySQL أيضاً، ولكن يجب عليكم البحث في الويب عن حلول خارجية، وهذا ليس مثالياً لمعظم الأشخاص.\r\n\r\n4.   محركات التخزين:\r\nهناك فرق كبير آخر يتم تجاهله في بعض الأحيان بين MySQL و SQL Server، ألا وهو طريقة تخزين البيانات.\r\n\r\nSQL Server يستخدم محرك تخزين واحد تم تطويره بواسطة Microsoft.\r\n\r\nعلى نقيض ذلك يوجد هناك محركات متعددة معروضة لـ MySQL، وهذا يمنح مطوري MySQL مزيداً من المرونة، حيث يمكنهم استخدام محركات مختلفة لجداول مختلفة، استناداً إلى السرعة أو الموثوقية أو بعض الأبعاد الأخرى.\r\n\r\nأشهر محرك تخزين لـ MySQL هو InnoDB والذي يقع في الطرف الأبطأ من الطيف، ولكنه يحافظ على الموثوقية.\r\n\r\nكما يوجد محرك آخر وهو MyISAM.\r\n\r\n5.   إلغاء الاستعلام:\r\nالكثير من الناس لا يعرف هذا، ولكن الفرق المحتمل في التعامل بين MySQL و SQL Server هو أن MySQL لا يسمح لك بإلغاء الاستعلام في منتصف التنفيذ.\r\n\r\nهذا يعني أنه بمجرد بدء تنفيذ الأمر، من الأفضل أن يكون أي ضرر قد يحدثه هو عكسه.\r\n\r\nعلى الجانب الآخر فإن SQL Server يسمح لك بإلغاء تنفيذ الاستعلام في منتصف العملية.\r\n\r\nيمكن أن يكون هذا الاختلاف ضاراً بشكل خاص لمشرفي قواعد البيانات، على العكس من مطوري الويب، الذين يقومون بتنفيذ الأوامر المكتوبة والتي نادراً ما تتطلب إلغاء الاستعلام أثناء التنفيذ.\r\n\r\n6.   الأمان:\r\nلا يوجد الكثير من أجل النظر عند مقارنة فروق الأمن بين كل من MySQL و SQL Server.\r\n\r\nكلاهما متوافق مع EC2، مما يعني أنك في معظم الأحيان في أيدٍ أمينة حيث يمكنك اختيار أياً منهما.\r\n\r\nبعد قول ذلك، فإن ظل Microsoft أيضا يلوح في الأفق هنا، حيث أنه تم تزويد SQL Server بميزات أمان خاصة وحديثة.\r\n\r\nحيث أن أداة الأمان المخصصة Microsoft Baseline Security Analyzer تضمن أماناً قوياً لـ SQL Server.\r\n\r\nلذا في حال كان الأمن يمثل أولوية قصوى بالنسبة لك، فقد تم تحديد اختيارك.\r\n\r\n7.   الكلفة:\r\nهذا هو المكان الذي يصبح فيه SQL Server أقل جاذبية، و MySQL تكسب النقاط الرئيسية.\r\n\r\nحيث أن Microsoft تطلب منك شراء تراخيص لتشغيل قواعد بيانات متعددة على SQL Server، وهناك نسخة مجانية ولكن الغرض منها هو تعريفك بـ RDBMS فقط.\r\n\r\nفي المقابل فإن MySQL تستخدم رخصة GNU الشعبية العامة، مما يجعلها مجانية الاستخدام.\r\n\r\nبالرغم من ذلك، فإذا احتجت إلى دعم أو مساعدة لـ MySQL فأنت بحاجة لدفع ثمنها.\r\n\r\n8.   دعم المجتمع:\r\nهذا ما يقودنا إلى النقطة التالية، في حين يمكنك الدفع مقابل دعم MySQL، نادراً ما ينشأ هذا السيناريو نظراً لمساهمته المجتمعية الممتازة ودعمه لها.\r\n\r\nإن الفائدة من وجود المجتمع الأوسع على جانبك هو أن معظم الناس لا يحتاجون إلى الوصول إلى المساعدة الرسمية، إذ يمكنهم البحث على شبكة الانترنت والعثور على طن من الحلول.\r\n\r\n9.   بيئات التطوير المتكاملة IDEs:\r\nمن المهم أن نلاحظ بأن كل من RDBMS يدعم أدوات بيئة التطوير المتكاملة (IDE) المختلفة.\r\n\r\nتوفر هذه الأدوات بيئة متماسكة للتطوير، ويجب أن تنتبه جيداً إلى أي منها يناسبك احتياجاتك.\r\n\r\nتفتخر MySQL بمدير Oracle Enterprise، بينما SQL Server يستخدم Management Studio (SSMS).\r\n\r\nكلاهما لهما مزايا ومساوئ وقد يقلبان التوازن إذا لم يكن لديك أي شيء آخر ليتم اتخاذ قرار بشأنه.', '60403_02ad099e200bc9178d4677da2dbb2314.MySQL-و-SQL-Server-1024x576.jpg', '2021-01-16', 0, 1, '', 1, NULL),
(60, 'بدء اجازة الفصل الدراسى الاول ', 'بدء اجازة الفصل الدراسى الاول اليوم بالجامعات والمعاهد حتي 20 فبراير', '83190_85840d0b5c.jpg', '2021-01-16', 0, 1, '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `ques` text NOT NULL,
  `added_date` date NOT NULL,
  `answer_1` text NOT NULL,
  `answer_2` text NOT NULL,
  `answer_3` text NOT NULL,
  `answer_4` text NOT NULL,
  `right_answer` varchar(255) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `exam_id`, `ques`, `added_date`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `right_answer`, `photo`, `answer`) VALUES
(1, 14, 'sdfbnbgbfgf', '2021-01-16', 'dsdsdfsdf', 'dfdf', 'dfdf', 'ae', '2', 'img4.jpg', NULL),
(2, 14, 'fvfdd', '2021-01-16', 'fdsfsfd', 'sfdsfs', 'dfsdfs', 'dfsfsd', '2', 'img4.jpg', NULL);

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
(1, 'رءبرؤرahmed', 'mcGVaZggSu', '2021-01-16 09:50:15');

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
  ADD PRIMARY KEY (`event_id`);

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
  ADD KEY `ques` (`exam_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `benfits`
--
ALTER TABLE `benfits`
  MODIFY `benfit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `live_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `user_message` FOREIGN KEY (`user_id`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `user_name` FOREIGN KEY (`users`) REFERENCES `members` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `ques` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
