-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 08:45 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larajobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(2, 'Engineering', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(3, 'Government', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(4, 'Medical', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(5, 'Construction', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(6, 'Software', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(7, 'Management', NULL, NULL),
(8, 'Sports', NULL, NULL),
(9, 'Marketing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `cname`, `slug`, `address`, `phone`, `website`, `logo`, `cover_photo`, `slogan`, `description`, `created_at`, `updated_at`) VALUES
(1, 16, 'Durgan, Kris and Trantow', 'durgan-kris-and-trantow', '512 Oberbrunner Way\nLake Moises, NH 41684-1004', '1-940-741-2824', 'parisian.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Id quod voluptas ullam unde provident deserunt pariatur. Enim doloremque porro est deserunt repellendus perspiciatis voluptates eius. Consequatur totam quibusdam et et reiciendis maiores. Rerum ut eum deserunt nulla possimus placeat. Non totam et et dolore optio. Quos necessitatibus eum ex id provident quibusdam. Delectus sint aut nisi quo quis et.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(2, 4, 'Kovacek PLC', 'kovacek-plc', '57340 Erdman Meadow Suite 602\nWest Kelsie, OK 48533', '209-458-9901 x68869', 'beier.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Sed necessitatibus quod et. Excepturi esse similique numquam quo. Nisi suscipit ut quam reiciendis. A occaecati sunt non dolores omnis. Omnis aliquid ut odio qui ut maxime corrupti. Et ut culpa eaque. Occaecati corrupti ipsa beatae voluptate. Omnis culpa et totam quo. Commodi fugit accusantium exercitationem nobis molestiae tenetur fugiat. Maiores consequatur nulla neque iure repellendus. Molestiae voluptas repudiandae voluptas incidunt rerum. Corporis ea sed saepe mollitia sit aut cumque suscipit.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(3, 11, 'Pfeffer LLC', 'pfeffer-llc', '504 Will Ferry\nAlisabury, RI 59559-6382', '779-882-2603 x2267', 'konopelski.org', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptas maiores reprehenderit eum tempore molestias cumque. Ut eaque suscipit hic inventore quis quis. Laboriosam eos autem eos in facere similique dolore. Architecto incidunt beatae dignissimos qui est tempora amet. Voluptas asperiores quo quis tempore nobis sit. Ipsum doloribus laudantium sed quia earum modi. Totam et dignissimos ducimus saepe dolorum sit natus molestias. Et ut quod vel quia quibusdam excepturi explicabo. Rem tempore asperiores doloremque. Labore vitae eveniet quasi consequuntur. Et velit autem nisi commodi doloribus aut repellendus et.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(4, 3, 'Waters Inc', 'waters-inc', '170 Kiel Causeway\nPort Reillyville, NE 77291-9920', '628.806.8058', 'schinner.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptatem numquam modi quia minima ut repellat et. Cum quam natus odit nihil. Quibusdam occaecati consequatur qui. Fugiat facere magni quia repudiandae aut corrupti. Asperiores occaecati facilis ratione in. Praesentium enim corporis commodi. Et commodi enim animi dolorum non.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(5, 18, 'Bode-Buckridge', 'bode-buckridge', '32670 Alisha Flats\nLake Jessika, IN 03690', '265.845.4978', 'braun.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Eius sed est ut explicabo aperiam voluptatum nemo. Dolor corporis modi beatae explicabo. Nemo possimus corrupti beatae accusamus. Repellat exercitationem perferendis sunt cupiditate nulla.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(6, 11, 'Wisoky, Ernser and Collins', 'wisoky-ernser-and-collins', '235 Della Dam Suite 583\nRobertsland, FL 30807', '582-350-2837 x976', 'donnelly.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptatibus maiores doloremque eum. Sit dolor ut sequi quod doloribus. Tenetur assumenda sunt voluptatem et quaerat minus. Tempora enim omnis repellendus dolor. Atque aut mollitia possimus ullam et. Dolor aut enim vel sed molestiae qui.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(7, 9, 'Marks-Hickle', 'marks-hickle', '290 Stanton Summit Apt. 451\nArdellaport, VT 17514-2879', '+1.882.810.0798', 'gottlieb.net', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptatem facilis earum similique nihil sit quibusdam. Temporibus aliquid quibusdam exercitationem sed est voluptatibus non.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(8, 8, 'Johns-Schuppe', 'johns-schuppe', '60114 Johnson Squares Suite 468\nHalliefurt, LA 73034', '829.639.2289', 'vandervort.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'In est qui repellat eaque eum odio sunt impedit. Sit facilis animi rerum odio aut nisi rerum. Sequi harum quidem perspiciatis porro et explicabo nihil. In voluptatem excepturi nobis atque qui illo ea. Quod magni molestias officiis molestiae vel. Voluptatem consequatur natus quis error nobis rerum id. Voluptatem assumenda commodi voluptatem saepe reprehenderit dolore repellat. Et minus omnis fugit voluptatem. Assumenda fugiat repudiandae optio.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(9, 2, 'Ryan-McLaughlin', 'ryan-mclaughlin', '1866 Elroy Walk Suite 848\nWest Marilou, MA 71680', '1-443-379-0561', 'boyer.info', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Illum non fuga ullam suscipit ratione. Corporis laudantium magni distinctio harum earum. Quae et ut ut perspiciatis ipsa. Nobis velit molestiae placeat. Quasi excepturi ut officia maxime sed quis error. Mollitia laborum dolor et omnis velit et. Sint veniam sit recusandae libero quis consequatur nihil. Ab praesentium tempora vero magnam dolore doloribus. Esse perspiciatis numquam exercitationem placeat. Illum occaecati sed officia reiciendis. Placeat praesentium alias id. Enim incidunt qui error quia et distinctio.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(10, 20, 'Macejkovic-Goodwin', 'macejkovic-goodwin', '4854 Hill Creek Suite 473\nPort Marisol, RI 67157', '+1-629-532-2029', 'hudson.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Sint nisi ipsum facere velit. Consequuntur architecto ut veritatis mollitia neque ut voluptatibus. Ipsam et molestias sunt voluptas voluptatem est maxime. Possimus eos magnam est corporis quos. Cumque et dolore qui eaque mollitia quod. Sint accusamus nemo beatae fugiat ut. Modi quidem alias eum et eius nesciunt sapiente.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(11, 13, 'Ruecker-Buckridge', 'ruecker-buckridge', '46867 Amie Shoal\nLake Madilyn, HI 97974-0710', '776-777-5494 x64982', 'veum.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Laborum voluptatem et saepe dolore voluptas et soluta. Aspernatur aut non voluptatem et. Dolores error ullam porro consequatur eum. Culpa quaerat voluptas minus accusantium incidunt dolorem. Ea labore qui animi nulla est inventore ut. Est sit quis quis eius non dolorem suscipit qui. Nisi nulla molestiae aliquam pariatur commodi et repellat.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(12, 8, 'Bruen, Volkman and Rodriguez', 'bruen-volkman-and-rodriguez', '6780 Marques Isle\nPort Claudie, WV 94010', '+1.463.391.5793', 'cassin.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Ab repudiandae reiciendis numquam optio. Reiciendis quia odio quod. Quia ab sit qui deserunt aut. Dolores accusamus autem quisquam soluta exercitationem vitae voluptas. Quia velit qui sit hic quia.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(13, 19, 'Russel, Mante and Larkin', 'russel-mante-and-larkin', '32030 Joesph Drive Apt. 586\nLubowitzton, WA 77545', '1-275-408-3655 x290', 'kuhlman.org', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Eos perferendis recusandae asperiores possimus. Vitae iure dolor consequatur voluptas. Praesentium corporis ea ab sapiente sapiente dolores. Non eum assumenda blanditiis enim dignissimos nihil.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(14, 12, 'Gleason-Lang', 'gleason-lang', '1438 Irwin Ridge\nLake Brody, ME 76818', '543-286-1024 x89105', 'von.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Aut id placeat at voluptatum sed est quis. Veniam provident quia modi expedita est recusandae provident. Culpa eos ducimus inventore quis dicta. Autem veritatis et quaerat quia. Asperiores alias aut vel labore.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(15, 6, 'Murazik-Trantow', 'murazik-trantow', '45623 Cummings Turnpike Suite 445\nPort Magdalenfort, NE 66109-9849', '1-718-309-0599', 'nitzsche.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Cum cumque architecto aperiam non doloremque eum. Fuga quaerat rerum consequatur.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(16, 16, 'Erdman-Sipes', 'erdman-sipes', '7961 Raven Island\nMaryfurt, TX 28118-3258', '318.641.5629 x86534', 'reichel.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Sint quibusdam deleniti impedit vitae molestiae odio sunt iste. Consequuntur nobis autem tempore corrupti maiores. Sed unde necessitatibus aut. Reprehenderit molestiae optio dignissimos officia autem. Tempore aut doloremque ut. Reiciendis aliquam natus nostrum nihil accusantium illum. Molestiae quia velit officia delectus qui accusamus quaerat. Nemo aut aut voluptatem minus porro aspernatur aliquam. Quae sint odit ipsam eos earum enim. Sint consectetur veritatis id dolores quisquam rerum ut. Recusandae ut ratione optio dolorem sunt.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(17, 18, 'Ward Group', 'ward-group', '607 Pouros Ways Suite 386\nPort Aliya, UT 41562', '391.929.7366 x30024', 'legros.net', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Perspiciatis id optio ipsum omnis dolor. Id voluptatum voluptatem minima impedit. Facilis qui sint expedita inventore error qui et. Nobis et dolorem hic soluta voluptas. Rerum eos sed ut. Et magnam occaecati quae nihil incidunt. Voluptatem quaerat quia magni sed quaerat. Nihil delectus nisi quis. Magni hic hic natus accusamus tenetur dolores ullam.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(18, 6, 'Hessel, Schimmel and Altenwerth', 'hessel-schimmel-and-altenwerth', '4814 Gavin Canyon\nLake Kathryn, OK 36786-7228', '+1-953-544-5304', 'jacobi.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Sunt ex aut corporis molestias. Eum et quidem molestiae. Impedit exercitationem veniam nisi vitae consequatur. Eos aut voluptatem molestiae eaque quis architecto. Veritatis exercitationem ipsum praesentium perspiciatis iure.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(19, 19, 'Ryan-Prohaska', 'ryan-prohaska', '5928 Myrl Point\nMcGlynnhaven, KY 40295', '+1-263-428-0596', 'schulist.net', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Vero tempora sit at quia dignissimos. Consequuntur in qui nihil eum cupiditate ut. Ut fugit sunt iusto atque voluptatum tempora. Error facilis quis placeat fugiat ducimus accusantium quo.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(20, 20, 'Kulas Ltd', 'kulas-ltd', '2852 Rico Squares Apt. 138\nNew Melbaview, ND 44018-4316', '(859) 592-7130', 'fadel.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Consequatur qui et nisi non. Suscipit corrupti ipsum magnam necessitatibus laudantium ipsam placeat. In fugit sed vitae aut. Omnis ullam quia itaque nihil. Optio non occaecati quia quia. Voluptatem delectus aliquid consequuntur dolorem libero. Voluptatem praesentium et et quos architecto vitae fugiat sit. Sed voluptatem qui deleniti tenetur. Earum aut ex dignissimos ex sint. Iure reprehenderit enim officiis deleniti.', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(21, 23, 'Ebert-Mohr', 'ebert-mohr', '1912 Daniel Center Suite 998\nLake Marta, OR 54714-8247', '(370) 364-4371 x14965', 'purdy.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Est non eum quisquam nemo accusamus. Illum consectetur voluptatibus et. Earum quis veritatis omnis et nostrum saepe magni. Sunt similique fuga quae quaerat odio dolorum cum sit. Fugit omnis sapiente officia quidem. Maxime cupiditate qui et optio. Aut eum error consequatur et perferendis. Reprehenderit et voluptatem suscipit cum non. Rerum quis voluptatem sint quas illo corrupti.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(22, 26, 'Cummerata, Goldner and Bruen', 'cummerata-goldner-and-bruen', '962 Pagac Throughway Apt. 559\nGreenfelderbury, NM 62539-4424', '1-783-392-1928 x39598', 'conn.net', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Accusantium cum voluptatum ea et ab repellendus. Maxime reiciendis distinctio animi. Quod voluptas necessitatibus in. Omnis ex quo natus. Reprehenderit pariatur qui consequatur expedita magnam hic totam. Vero necessitatibus in qui sed fuga. Doloremque impedit rerum accusantium labore atque sint. Qui accusamus voluptatem et nisi nihil.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(23, 39, 'Kreiger, Hegmann and Hettinger', 'kreiger-hegmann-and-hettinger', '47640 Reggie Springs Apt. 425\nFraneckifurt, ME 48780', '(213) 860-5990', 'roberts.info', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptatem perferendis quas necessitatibus quia atque rerum. Ratione ipsam fugit velit. Unde nam eligendi officiis.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(24, 19, 'Bayer LLC', 'bayer-llc', '491 Brennon Road\nSouth Freda, PA 71346-1232', '+1-493-845-2430', 'walker.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Ut et pariatur et dolorum harum. Veritatis quos repudiandae eveniet sunt ut. Ut deleniti officiis sapiente quae non amet harum illum. Nemo ab dolorem quo. Voluptatem sit voluptas sapiente cupiditate aliquid sit numquam.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(25, 35, 'Romaguera Group', 'romaguera-group', '344 Asa Curve Suite 692\nBereniceborough, WY 68749', '374.449.8496', 'hand.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Consequatur assumenda aperiam repellat sed. Sit modi sunt nostrum velit in provident. Aut et nihil enim aut ex. Quae quibusdam suscipit quos labore est non. Quasi et ea pariatur odio optio esse.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(26, 22, 'Greenfelder-Hane', 'greenfelder-hane', '60262 Feil Spur\nSwaniawskiborough, TN 08703', '1-825-265-4860 x8645', 'mcclure.net', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Dolorem distinctio autem earum ratione. Voluptatem non enim fuga molestias ratione. Nulla fugiat et totam assumenda eum expedita. Vitae explicabo aliquid blanditiis tenetur at. Qui temporibus omnis doloribus est molestiae. Ipsa accusantium et veniam itaque excepturi consequatur. Recusandae nostrum ut magnam est aut.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(27, 16, 'Ferry LLC', 'ferry-llc', '6852 Roman Mews Suite 215\nFeeneychester, WY 32765', '823-541-5513 x956', 'rutherford.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Laboriosam similique eos est quaerat sapiente architecto eius quasi. Explicabo est libero voluptas veritatis culpa quibusdam. Dicta et tenetur quis. Qui recusandae nulla rerum in labore architecto enim. Qui facere modi natus distinctio ipsa dolor et. Sit accusantium consequatur ut enim. Placeat officiis omnis eius cumque ducimus enim eum.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(28, 22, 'Bartoletti-Wilderman', 'bartoletti-wilderman', '323 Madelynn Plains\nO\'Harafurt, IA 10686-9703', '1-223-228-2922 x3791', 'parker.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Quod et numquam qui. Eaque culpa voluptas aspernatur qui odit. Est consectetur et dolore et harum similique.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(29, 21, 'Collier, Bergstrom and Marvin', 'collier-bergstrom-and-marvin', '16535 Malika Plain\nPort Ken, NE 24068', '454-572-5960 x85240', 'raynor.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Labore hic nostrum quisquam qui qui repellendus provident tenetur. Qui et quod culpa sequi. Voluptas dolorem aspernatur cupiditate et vitae sint quos. Qui odio enim odio impedit impedit est et. Et recusandae sunt quasi deleniti id quia. Aut explicabo at recusandae ullam aliquam. Qui et ut voluptas sed dolorem alias. Et sint iste ipsam.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(30, 13, 'Sipes-Leffler', 'sipes-leffler', '17077 Jaylin Falls Suite 528\nPort Garrison, GA 02035', '483.743.4820 x4387', 'west.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Non aspernatur dolorum aspernatur. Quae nisi exercitationem sapiente. Rerum eveniet laboriosam nesciunt. Qui quia ad fuga ea est et. Voluptate sed saepe alias id sapiente. Cum dolor rerum debitis modi est nihil quasi.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(31, 8, 'Wisoky, Welch and Gerhold', 'wisoky-welch-and-gerhold', '3464 Grant Ford Apt. 298\nSouth Efren, NE 10069-1008', '1-662-999-3097 x242', 'kreiger.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Consectetur quidem rerum ut sint itaque optio. Laborum debitis non repellendus molestiae sit laboriosam. Corporis nesciunt aut vel inventore occaecati. Minus est dolores et beatae rem aut.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(32, 29, 'Hill, Howe and Zulauf', 'hill-howe-and-zulauf', '9081 Mann Road Apt. 024\nWaltermouth, MT 16752', '734.844.6407', 'botsford.info', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Vel laudantium quos commodi dolorum blanditiis praesentium porro. At maxime dolore provident consectetur est tempora.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(33, 24, 'Stroman and Sons', 'stroman-and-sons', '903 Kuhlman Light Suite 022\nSouth Mathias, ME 38219', '+1 (814) 826-9231', 'frami.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Veritatis sit sapiente voluptatibus vel maiores beatae. Optio sed voluptates et aut. Doloribus non quos aliquam reprehenderit iure perferendis. Illo earum rerum sit et recusandae rerum. Voluptatem a in distinctio vero ex illum pariatur non. Minus asperiores ea pariatur aut deserunt at dolorum ut.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(34, 12, 'Ebert and Sons', 'ebert-and-sons', '6662 Freddy Flats Apt. 737\nKozeyberg, CO 90084-9313', '1-451-641-9665 x96021', 'hill.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Fugiat est dolorem esse iste deleniti eligendi quia. Odit et commodi similique soluta amet qui qui. Est et architecto sunt cupiditate laborum voluptatem minima. Impedit adipisci dolor sed dignissimos culpa sed. Quo aut nesciunt rerum et consequatur consequatur vitae.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(35, 27, 'Kautzer-Lang', 'kautzer-lang', '7457 Kira Via\nEast Zola, MN 24389-7426', '612.866.1384', 'harber.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Magni voluptatem voluptas vel ex. Recusandae aut est animi nam non. Pariatur eum minus et voluptatem enim quia inventore.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(36, 35, 'Beatty-Kunde', 'beatty-kunde', '29124 Kling Springs\nMoentown, DC 41229', '787.506.0705 x41099', 'mills.info', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Vitae fugiat eos blanditiis omnis ducimus. Quasi id architecto nemo quidem iste inventore. Esse provident quas adipisci et sed exercitationem. Ipsa nisi ipsum quasi cum beatae. Autem ad fugiat quibusdam tenetur modi inventore tenetur. Ipsam et facilis excepturi. Et voluptas cum voluptas et cum repudiandae. Soluta tempore cumque corporis.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(37, 29, 'Lubowitz Group', 'lubowitz-group', '29018 Dana Neck\nHandburgh, HI 11168', '247.937.3088 x488', 'orn.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Sunt sint architecto omnis velit rem harum aut. Quo et dignissimos omnis laudantium beatae quae et. Qui sint et velit inventore quis. Sint laudantium aut quaerat in accusamus natus tempora. Dolorum similique architecto molestias vitae dolorem. At omnis est possimus ab accusamus. Veritatis facilis quia distinctio repellendus recusandae similique reprehenderit. Et aut voluptates ullam sit. Quia odit culpa nulla tempore sed. Dolorum sint sapiente saepe doloremque earum placeat rem. Possimus pariatur vitae voluptatem quod debitis ea. Quo dolorem voluptate ad nesciunt quae cumque omnis. Repudiandae exercitationem cum sit et facilis.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(38, 36, 'Nikolaus, Hartmann and Hermann', 'nikolaus-hartmann-and-hermann', '835 Jonas Lodge Apt. 373\nWest Eino, WI 13837', '1-748-428-3713', 'hintz.com', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Eos aspernatur officiis optio non iure omnis maiores. Et eos repellat voluptatem adipisci id. A sunt rem in molestias labore et. Eos autem laborum est laboriosam sequi est.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(39, 24, 'Turner-Bins', 'turner-bins', '2688 Crist Brooks\nSouth Ceceliatown, SD 99048-2039', '212-965-4130', 'vonrueden.info', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Voluptatibus quibusdam vitae et laborum est accusamus eius non. Ratione fugiat ut dicta possimus reiciendis.', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(40, 2, 'Fisher, Donnelly and Armstrong', 'fisher-donnelly-and-armstrong', '7032 Gusikowski Well\nNathanaelview, WA 39642', '648.716.4151 x63255', 'gulgowski.biz', 'man.jpg', 'tumblr-image-sizes-banner.png', 'learn-earn and grow', 'Asperiores sequi dicta tempora dolores voluptatem quia. Ipsam aperiam id nesciunt voluptate. Dolores sunt voluptatem unde ut repellendus neque animi.', '2020-09-05 03:56:42', '2020-09-05 03:56:42');

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
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `last_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_of_vacancy` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `company_id`, `title`, `slug`, `description`, `roles`, `category_id`, `position`, `address`, `type`, `status`, `last_date`, `created_at`, `updated_at`, `number_of_vacancy`, `experience`, `gender`, `salary`) VALUES
(1, '14', '15', 'Labore laborum dolorem qui aut quos nobis harum. Asperiores consequatur fuga a. Voluptatem eius at rerum inventore qui quibusdam repudiandae.', 'labore-laborum-dolorem-qui-aut-quos-nobis-harum-asperiores-consequatur-fuga-a-voluptatem-eius-at-rerum-inventore-qui-quibusdam-repudiandae', 'Illum veritatis vitae voluptatem. Quia repellat enim culpa quisquam perspiciatis. Corporis perspiciatis dolores quis voluptatem. Et molestiae velit minus itaque perspiciatis quia. Nobis magnam maiores quae non. Similique nobis dolor similique ut et voluptas accusamus. Sit ipsam deleniti quia sequi laboriosam laborum et. Qui sit id id quo consequatur necessitatibus ab eum. Quam libero consequuntur quia assumenda. Alias quidem quibusdam ratione sequi non.', 'Error dignissimos voluptatem aliquam esse et consequatur ut. Fuga aliquam omnis quia exercitationem reiciendis sed totam. Veritatis voluptas nihil excepturi dignissimos ut et.', 5, 'Optical Instrument Assembler', '599 Spinka Glens\nNorth Claude, MO 20513', 'parttime', 1, '2020-10-12', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 6, 4, 'male', '28054'),
(2, '10', '17', 'Nostrum vitae dolorum nobis nihil tenetur accusamus culpa. At quia perspiciatis est et. Molestiae reiciendis illo aliquid laboriosam tenetur.', 'nostrum-vitae-dolorum-nobis-nihil-tenetur-accusamus-culpa-at-quia-perspiciatis-est-et-molestiae-reiciendis-illo-aliquid-laboriosam-tenetur', 'In aut ratione quam omnis ea voluptas. Doloribus officiis omnis quibusdam et itaque hic. Veniam quos et enim non cupiditate. Illo totam dolorem recusandae dolor ea consequatur odit odio. Molestias quae occaecati labore nam hic dolor tempore.', 'Eius excepturi ipsam excepturi enim. Eveniet omnis sed quod illum repellat consectetur itaque. Et quis in repudiandae assumenda.', 3, 'Travel Agent', '297 Drake Turnpike\nEast Elianview, OR 91293-3273', 'fulltime', 1, '2020-10-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 8, 8, 'female', '44600'),
(3, '4', '13', 'Tenetur accusantium soluta ipsum sequi. Quis et voluptates enim nesciunt accusantium expedita esse. Quia voluptate tempora praesentium saepe praesentium amet.', 'tenetur-accusantium-soluta-ipsum-sequi-quis-et-voluptates-enim-nesciunt-accusantium-expedita-esse-quia-voluptate-tempora-praesentium-saepe-praesentium-amet', 'Vero accusamus nihil sint porro. Et et odio eaque nobis voluptatem ea necessitatibus qui. Saepe laborum quae perspiciatis et veritatis aut. Et minus sint qui eum aliquam.', 'Exercitationem voluptatem molestiae ex fugiat est et consequatur. Excepturi eveniet vitae aut non odit. Nulla qui quo ut beatae. Corporis quia et enim qui dignissimos.', 2, 'Head Nurse', 'New Delhi', 'fulltime', 0, '2020-09-07', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 6, 8, 'male', '19769'),
(4, '8', '1', 'Mollitia ut iure sunt. Sapiente et unde veritatis laborum. Delectus nisi vitae in dolor rem quia voluptatem.', 'mollitia-ut-iure-sunt-sapiente-et-unde-veritatis-laborum-delectus-nisi-vitae-in-dolor-rem-quia-voluptatem', 'Quia minima rerum ut non aut molestiae rerum. At aut earum voluptatem veritatis. Sit porro nam assumenda vel dolor enim. Placeat hic aut ut eos quia qui qui. Rerum ullam sint eius facilis eligendi necessitatibus provident itaque. Pariatur et rem delectus at facilis a minima. Ad ea voluptatem doloribus fugiat aperiam et in accusamus. Velit neque aliquid rem necessitatibus et. Consequatur illum possimus officiis sed ut. Omnis eos repellat quasi id corrupti ut. Nam tempora atque autem aperiam. Iste nam doloremque quasi et dignissimos eum qui.', 'Id ducimus sit tempora sapiente et ipsam. Voluptatem veniam dignissimos omnis praesentium aut. Ipsum perspiciatis ipsum quia sed aut nam.', 5, 'Architecture Teacher', '27931 Jarod Hill Apt. 543\nWalshshire, NJ 87212-0895', 'fulltime', 0, '2020-09-20', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 8, 1, 'male', '20678'),
(5, '7', '5', 'Delectus non ea rerum ipsa aut et. Enim repellendus facilis quo cumque ut expedita. Eum quasi aut aut voluptas consequuntur qui corporis.', 'delectus-non-ea-rerum-ipsa-aut-et-enim-repellendus-facilis-quo-cumque-ut-expedita-eum-quasi-aut-aut-voluptas-consequuntur-qui-corporis', 'Accusamus ipsam ut qui repudiandae. Magnam nostrum sed blanditiis ut quis debitis. Quibusdam consequatur voluptatem perspiciatis saepe qui nobis eos. Asperiores sit eveniet et ratione temporibus. Sit ea expedita voluptate. Quis explicabo quos nesciunt dolorem ut eum provident aperiam.', 'Id blanditiis voluptatem unde accusamus minus modi voluptatibus. Cumque atque molestias quasi veritatis quidem. Deserunt non qui rerum. Eveniet quaerat reprehenderit amet.', 4, 'Freight and Material Mover', '8467 Ankunding Glen\nSouth Abbeymouth, IN 66720-8496', 'fulltime', 0, '2020-09-20', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 6, 9, 'female', '34628'),
(6, '20', '7', 'Occaecati sed nostrum voluptas pariatur. Rerum optio numquam et cum. Laudantium debitis dicta voluptatem aperiam.', 'occaecati-sed-nostrum-voluptas-pariatur-rerum-optio-numquam-et-cum-laudantium-debitis-dicta-voluptatem-aperiam', 'Esse sed ut hic ut. Quis sit quisquam architecto quo omnis sed cumque.', 'Nulla sit porro doloribus minus. Dignissimos non maxime voluptates quia quod sed sed quod. Est quaerat praesentium quia et. Quia corrupti est at voluptatibus aut quae.', 2, 'Statistician', '719 Koepp Square\nBotsfordmouth, CA 68621-1615', 'fulltime', 0, '2020-10-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 8, 8, 'male', '18718'),
(7, '9', '12', 'Aspernatur voluptas ut dignissimos earum nostrum. Non totam alias omnis consequatur. Eaque perferendis est architecto totam maxime nobis quisquam. Qui et atque perferendis est et aliquam voluptatem.', 'aspernatur-voluptas-ut-dignissimos-earum-nostrum-non-totam-alias-omnis-consequatur-eaque-perferendis-est-architecto-totam-maxime-nobis-quisquam-qui-et-atque-perferendis-est-et-aliquam-voluptatem', 'Tenetur reiciendis non ratione nulla. Omnis consectetur sequi tenetur. Aliquid nihil consequuntur dolor velit itaque. Numquam eaque hic in tenetur molestiae consequatur consequatur. Debitis iste est error saepe iusto excepturi ut quae. Corporis voluptatem quia quia ad. Libero voluptatibus eaque voluptates et fugit id. Nisi est ut voluptatem omnis quia delectus quam aut. Reprehenderit amet rerum error nihil. Nisi mollitia ad cumque nihil corporis voluptatum ut.', 'Blanditiis dolore veniam voluptas cupiditate. Recusandae quasi sit quibusdam sunt sunt.', 2, 'Plumber OR Pipefitter OR Steamfitter', '8837 Stefanie Bridge Apt. 123\nJonathonmouth, HI 04930', 'fulltime', 0, '2020-09-10', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 10, 6, 'male', '44028'),
(8, '12', '18', 'Officiis consectetur non iusto. Ut consequuntur error sunt et inventore accusantium omnis. Consequatur similique nihil sed porro sit amet incidunt.', 'officiis-consectetur-non-iusto-ut-consequuntur-error-sunt-et-inventore-accusantium-omnis-consequatur-similique-nihil-sed-porro-sit-amet-incidunt', 'Ullam maiores non doloribus assumenda. Autem rerum corporis aliquam et eos mollitia dolorum. Quidem deserunt id itaque ex. Ut soluta nesciunt dignissimos dolor aut labore occaecati. Magni expedita ducimus harum. Iste ea sunt illo accusantium totam. Sint aspernatur incidunt fuga placeat corporis. Velit tempore ad sapiente.', 'Fuga mollitia praesentium rerum. Facilis reiciendis recusandae qui sed deserunt. Est dolor id numquam dolore vero et amet. Sed numquam ipsum fugit molestiae ut dolore architecto.', 3, 'Offset Lithographic Press Operator', '415 Alvah Road Apt. 408\nBergstrommouth, SC 27237-0679', 'fulltime', 1, '2020-10-01', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 3, 9, 'female', '22113'),
(9, '15', '12', 'Quibusdam a rerum pariatur. Error porro et qui quae. Tenetur dolores et quia ipsa explicabo quos consequatur. Dolor autem officiis rem dolore ut vel.', 'quibusdam-a-rerum-pariatur-error-porro-et-qui-quae-tenetur-dolores-et-quia-ipsa-explicabo-quos-consequatur-dolor-autem-officiis-rem-dolore-ut-vel', 'Ullam nam asperiores commodi sint saepe. Est tempora suscipit ducimus ut aliquam modi vero. Reiciendis velit mollitia aperiam. Illum nobis natus nihil fugit itaque quia. Consequatur earum placeat amet provident assumenda. Aut itaque provident neque quaerat assumenda et suscipit accusamus. Magni molestias dolorem iusto quam dolor velit explicabo aliquid. Est tempore accusantium culpa repellendus rerum.', 'Numquam sunt ut aut enim eius officia sed. Et est ad ab fuga voluptatem et. Voluptas qui non nisi laudantium.', 7, 'Account Manager', '786 Micaela Ramp Apt. 793\nMeggiehaven, AK 90945-4734', 'fulltime', 1, '2020-10-03', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 9, 4, 'male', '32360'),
(10, '13', '1', 'Perferendis et nam pariatur voluptatem aut. Inventore quam totam quaerat ipsum ullam. Laudantium voluptatem maiores cumque et. Voluptatem rerum voluptas rerum laborum qui id.', 'perferendis-et-nam-pariatur-voluptatem-aut-inventore-quam-totam-quaerat-ipsum-ullam-laudantium-voluptatem-maiores-cumque-et-voluptatem-rerum-voluptas-rerum-laborum-qui-id', 'Tempore suscipit aliquam sit sint accusantium non rerum. Culpa velit quaerat illo repellat quia consequatur quisquam. Minus et minima non. Autem tenetur modi a ipsa hic labore. Suscipit consectetur quod id quo beatae suscipit. Repellat provident eaque laborum perferendis ut explicabo. Quam ullam voluptates et nihil consequuntur laborum quia est. Et a quod ex at sunt vel debitis. Odio minus molestiae est distinctio voluptatem et sunt. Non eos repellendus necessitatibus voluptas veritatis pariatur.', 'Unde culpa quidem eius saepe iste iste nobis. Quia et in doloribus necessitatibus rerum.', 3, 'Biochemist or Biophysicist', '80741 Hill Field\nLake Karlview, KS 28041-6794', 'fulltime', 0, '2020-12-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 7, 4, 'male', '42309'),
(11, '9', '2', 'Vel corporis accusantium eveniet dolorem. Quisquam commodi et labore eveniet. Rem officiis cumque labore nihil minima. Velit quia qui natus repellat voluptate quas.', 'vel-corporis-accusantium-eveniet-dolorem-quisquam-commodi-et-labore-eveniet-rem-officiis-cumque-labore-nihil-minima-velit-quia-qui-natus-repellat-voluptate-quas', 'Quidem impedit illo autem voluptatem labore quisquam. Expedita eum perspiciatis aut in necessitatibus. Modi ducimus accusantium voluptate quo. Nemo incidunt aliquid et repellat consequuntur porro dolores ipsam. At cupiditate qui aliquid ipsam corrupti consequatur ex. Ut quibusdam impedit nemo quibusdam ullam qui. Ut quia dignissimos laboriosam laudantium ratione alias.', 'Similique dicta labore rem voluptatem rerum animi qui beatae. Distinctio quod et minima esse. Eveniet corporis et iste dolorum porro.', 2, 'Numerical Control Machine Tool Operator', '33276 Verna Skyway\nSouth Deven, TX 23308-9575', 'fulltime', 1, '2020-12-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 1, 4, 'female', '41189'),
(12, '8', '13', 'Aut dolorum ex error at aut nihil qui. Autem amet iure officiis. Veritatis eos hic velit enim dolor. Aut voluptatem autem non et.', 'aut-dolorum-ex-error-at-aut-nihil-qui-autem-amet-iure-officiis-veritatis-eos-hic-velit-enim-dolor-aut-voluptatem-autem-non-et', 'Numquam dolorem eos consequatur nisi nulla. Beatae dolorem incidunt debitis. Consectetur sed laboriosam occaecati et illum molestiae. Perspiciatis occaecati laborum exercitationem inventore distinctio modi. Numquam esse earum et accusamus sint in. Quis veniam vel nemo totam et qui. Minus quos porro eos. Incidunt id est et sunt dolores repellendus omnis. Inventore eligendi sint voluptas voluptate beatae odit consequatur.', 'Quia at doloremque et maiores. Iusto autem quia exercitationem est sint et dicta. Est quis mollitia harum adipisci nihil et. Quam deserunt explicabo minus nihil ab.', 5, 'Homeland Security', '8535 Medhurst Canyon\nNew Margarette, KY 58163-0442', 'fulltime', 0, '2020-10-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 7, 4, 'male', '15528'),
(13, '16', '17', 'Nostrum molestiae ipsa molestiae unde aut similique ducimus ipsum. Eos laborum placeat illo doloribus. Dolores voluptas sint quasi officiis quas natus.', 'nostrum-molestiae-ipsa-molestiae-unde-aut-similique-ducimus-ipsum-eos-laborum-placeat-illo-doloribus-dolores-voluptas-sint-quasi-officiis-quas-natus', 'Consequuntur quia error nam placeat ut omnis mollitia. Vel sint quis pariatur omnis eligendi. Praesentium praesentium et sunt sed est quod est pariatur.', 'Doloribus non animi hic est qui fugit. Necessitatibus quaerat non incidunt minus. Labore sapiente maiores atque est doloremque.', 4, 'Nursing Instructor', '47894 Willis Trail Apt. 753\nSouth Tracystad, WV 12041', 'fulltime', 1, '2020-11-22', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 5, 3, 'female', '32584'),
(14, '2', '3', 'Inventore repudiandae ut nesciunt animi. Maiores cupiditate voluptas earum eos nostrum aperiam ratione quam. Laborum ut est laboriosam debitis.', 'inventore-repudiandae-ut-nesciunt-animi-maiores-cupiditate-voluptas-earum-eos-nostrum-aperiam-ratione-quam-laborum-ut-est-laboriosam-debitis', 'Nostrum incidunt non voluptate error. Optio consequatur harum et expedita fuga temporibus nisi. Autem cupiditate maxime aut atque et nulla natus qui. Ut consequatur repellat nulla nihil repellat dolor facere. Repudiandae expedita sit et fugit et animi. Laudantium nobis deserunt voluptatem dolor aliquam expedita suscipit. Reprehenderit magni laudantium mollitia ut similique atque. In beatae earum quia voluptas. Dolorem temporibus omnis ea exercitationem.', 'Est ullam nihil maiores eius et magni. Suscipit et quo corporis accusamus. Facere expedita libero quo sint dolorem veritatis provident. Est quos dolores harum.', 5, 'Bridge Tender OR Lock Tender', '35225 Nona Prairie\nEldridgefort, MI 94284', 'fulltime', 0, '2020-09-10', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 4, 1, 'female', '26273'),
(15, '4', '11', 'Officiis fugiat dicta sapiente ullam. Perferendis voluptatibus esse provident ipsa eos. Perspiciatis excepturi saepe dolore perspiciatis et. Aut vel possimus et inventore et.', 'officiis-fugiat-dicta-sapiente-ullam-perferendis-voluptatibus-esse-provident-ipsa-eos-perspiciatis-excepturi-saepe-dolore-perspiciatis-et-aut-vel-possimus-et-inventore-et', 'Pariatur id tempora mollitia at rerum beatae. Ullam quia voluptates et in. Quo voluptates impedit rem quibusdam eligendi ut. Aut voluptate maxime eius dolor autem molestiae.', 'Sed sunt eligendi labore vitae eum dolorem aperiam. Aspernatur nulla rerum minus quae aut aperiam voluptas. Sed optio dolore dolore veniam.', 5, 'Veterinary Technician', '788 Adams Oval Apt. 769\nNew Bernhard, AR 67720-4647', 'fulltime', 1, '1988-03-24', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 3, 4, 'male', '18003'),
(16, '14', '17', 'Facere hic sed ea vel aliquam. In ea itaque magnam dolorem ratione assumenda vitae. Repudiandae qui ut hic quia. Earum et vel repellendus est ut non natus.', 'facere-hic-sed-ea-vel-aliquam-in-ea-itaque-magnam-dolorem-ratione-assumenda-vitae-repudiandae-qui-ut-hic-quia-earum-et-vel-repellendus-est-ut-non-natus', 'Molestias officia voluptatem nisi omnis animi eligendi consequatur. Voluptatum deserunt repellat necessitatibus omnis consectetur. Sint illum quam minima hic. Quis ex consequuntur sed eligendi est aut assumenda assumenda.', 'Error distinctio non sed quia deserunt animi. Possimus aut qui ut rerum deserunt. Maxime laudantium voluptatum non mollitia recusandae excepturi sed pariatur. Repellat omnis cum molestiae aliquam.', 4, 'Administrative Support Supervisors', '57101 Otha Square\nHodkiewiczstad, KS 37502', 'fulltime', 1, '2020-11-02', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 7, 8, 'female', '24190'),
(17, '3', '16', 'Praesentium eos consequuntur inventore dignissimos numquam. Porro recusandae molestiae iusto veniam in eligendi. Et ex quisquam tenetur.', 'praesentium-eos-consequuntur-inventore-dignissimos-numquam-porro-recusandae-molestiae-iusto-veniam-in-eligendi-et-ex-quisquam-tenetur', 'Minima est et eius mollitia numquam est. Rerum alias ut a nesciunt ullam vel est. Iste consequuntur autem ullam aut earum.', 'Quidem tempora magnam mollitia corporis incidunt. Omnis adipisci ea veritatis impedit. Provident in quod quia. Repellendus perferendis aut quisquam aut ab impedit a.', 4, 'Library Technician', '93677 Austin Coves Apt. 489\nJeromytown, MN 55483-1446', 'fulltime', 1, '2020-10-04', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 2, 2, 'male', '49613'),
(18, '20', '8', 'Quia blanditiis perferendis molestias accusamus esse sit debitis. Sint suscipit illo eligendi dolore. Quia est quasi nihil est ipsum. Sunt blanditiis est ex.', 'quia-blanditiis-perferendis-molestias-accusamus-esse-sit-debitis-sint-suscipit-illo-eligendi-dolore-quia-est-quasi-nihil-est-ipsum-sunt-blanditiis-est-ex', 'Et non libero inventore est. Nemo numquam quidem consequuntur fugiat aut pariatur qui. Cupiditate consequatur veniam eveniet nam culpa voluptas magnam. Nihil corporis labore voluptate molestiae sint eos vero. Iusto rerum omnis repellat minima numquam sequi facilis maxime. Quo pariatur vero aperiam architecto voluptatem consequuntur. Repellat tempora sint accusamus porro autem autem.', 'Est beatae veritatis corporis id. Nesciunt occaecati veritatis consequatur et et. Non quis voluptatem ipsum voluptatum aut repellat ducimus. Suscipit porro labore voluptatum maiores fugiat sed.', 3, 'Human Resource Director', '485 Witting Highway\nNew Lonzo, MD 73461', 'fulltime', 1, '2020-10-07', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 8, 9, 'male', '17251'),
(19, '2', '8', 'Sed eum hic est at repudiandae. Placeat optio officia error maiores ad et sunt. Error dignissimos saepe earum id. Ab sed nostrum dolorum iste. Sed sit veniam inventore assumenda eos fuga debitis.', 'sed-eum-hic-est-at-repudiandae-placeat-optio-officia-error-maiores-ad-et-sunt-error-dignissimos-saepe-earum-id-ab-sed-nostrum-dolorum-iste-sed-sit-veniam-inventore-assumenda-eos-fuga-debitis', 'Deserunt possimus maxime aspernatur animi reiciendis. Repellat facilis excepturi quae voluptas delectus. Amet molestiae exercitationem eius iure. Explicabo ea eveniet aspernatur non est ullam.', 'Deleniti aliquid est modi ducimus ut. Officia aut et dicta qui. Veniam eaque odio quasi mollitia id. Dolore perferendis dolorum corrupti ut aliquid atque. Autem quo voluptatum ut eos.', 3, 'Extraction Worker', '762 Emery Passage Suite 539\nLake Kallie, IA 76290', 'fulltime', 0, '2020-10-08', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 3, 6, 'female', '31615'),
(20, '7', '5', 'Consequatur dolores quo explicabo quia minima quia. Vel et ad sed quidem provident qui et. Est rerum omnis qui veniam error iure dolores. Architecto eveniet a modi itaque.', 'consequatur-dolores-quo-explicabo-quia-minima-quia-vel-et-ad-sed-quidem-provident-qui-et-est-rerum-omnis-qui-veniam-error-iure-dolores-architecto-eveniet-a-modi-itaque', 'Sed qui autem praesentium adipisci. Facere aliquam omnis mollitia accusamus aspernatur consequatur non. Laborum aut autem sit aut sapiente voluptatem. Explicabo fugit expedita qui.', 'Est autem doloribus quos distinctio nobis eum ut. Vitae est officiis autem exercitationem et tempora. Odio aut et veritatis molestias. Beatae reprehenderit labore occaecati beatae incidunt.', 2, 'Costume Attendant', '85326 Ratke Lights\nNorth Spencerville, WA 57472-0713', 'parttime', 0, '2020-10-10', '2020-09-03 05:29:23', '2020-09-03 05:29:23', 1, 3, 'male', '35062'),
(21, '36', '29', 'Voluptas doloribus non nesciunt aut et eos hic eius. Cum eum doloremque cum. Optio enim mollitia tempore a praesentium.', 'voluptas-doloribus-non-nesciunt-aut-et-eos-hic-eius-cum-eum-doloremque-cum-optio-enim-mollitia-tempore-a-praesentium', 'Tempore et quia fugit fuga quis. Voluptas labore dolor provident fugiat. Et saepe similique possimus aperiam ea perferendis. Eveniet culpa facere ea sed incidunt assumenda. Quisquam veniam quibusdam voluptas aut reprehenderit quia. Maxime quaerat fugiat alias. Vero officiis natus nulla non. Hic earum quis totam ipsa nihil vitae. Dolores ad sit ex maiores quod. Velit tenetur eaque consequuntur dolore saepe tempora. Laborum ducimus et nisi soluta perspiciatis.', 'Autem sunt ducimus saepe sit sit quaerat blanditiis assumenda. Impedit tempora animi reiciendis et aperiam. Doloribus quos quo ducimus ut ut voluptatem. Inventore animi et non minus ipsam omnis.', 4, 'Electrician', '3099 Kuvalis Common\nMetztown, CO 56861', 'fulltime', 0, '1977-09-22', '2020-09-05 03:56:42', '2020-09-07 02:29:27', 10, 2, 'female', '22107'),
(22, '3', '22', 'Esse voluptas odio est quaerat saepe. Aut dignissimos vero iure voluptatem. Temporibus nemo provident modi mollitia voluptatem. Accusamus exercitationem eum ut mollitia ullam iste iusto molestias.', 'esse-voluptas-odio-est-quaerat-saepe-aut-dignissimos-vero-iure-voluptatem-temporibus-nemo-provident-modi-mollitia-voluptatem-accusamus-exercitationem-eum-ut-mollitia-ullam-iste-iusto-molestias', 'Voluptatem qui ut nihil non. Assumenda ut possimus occaecati soluta nemo rem in consequuntur. Itaque aut cupiditate fugit recusandae. Ipsum occaecati est dignissimos accusamus totam et dolores. Expedita voluptas sunt iure. Provident voluptas voluptatem nulla error. Culpa reprehenderit est sapiente architecto.', 'Temporibus commodi beatae rerum esse. Cupiditate et consequatur eos ut optio ratione. Qui non assumenda sit at saepe perspiciatis ducimus. Quae delectus magnam magnam.', 4, 'Engineering', '733 Keagan Lane Apt. 485\nSchmidtmouth, WV 61747', 'fulltime', 1, '2006-02-10', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 1, 9, 'female', '14071'),
(23, '14', '11', 'Cum exercitationem labore provident sed minus. Iure impedit rerum aliquid nesciunt quidem. Aut animi consequatur dolore autem.', 'cum-exercitationem-labore-provident-sed-minus-iure-impedit-rerum-aliquid-nesciunt-quidem-aut-animi-consequatur-dolore-autem', 'Maiores quia et voluptatem delectus et at occaecati. Aut laboriosam voluptas quia non quia. Sit ea ut magnam. Quia aut aut praesentium voluptatem est asperiores. Saepe repellat qui voluptatem iusto ut. Maxime asperiores et dolorem minus omnis corporis numquam. Delectus possimus reprehenderit ipsum autem. Sed nemo aperiam dolor voluptas. Explicabo ut sequi et tempore et.', 'Officiis occaecati ut excepturi dolorum velit perspiciatis quos. Aliquid modi dolorem doloremque impedit. Temporibus quo vel quibusdam eum deserunt.', 1, 'Psychiatric Aide', '126 Ernser Extension\nLake Paris, MI 12732-0232', 'fulltime', 1, '2015-05-17', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 8, 6, 'female', '19823'),
(24, '34', '24', 'Amet quo provident expedita illo. Ut fugit similique optio voluptas atque quidem suscipit. Ipsam harum voluptate deleniti excepturi maiores similique. Temporibus fugit minima sit est et omnis.', 'amet-quo-provident-expedita-illo-ut-fugit-similique-optio-voluptas-atque-quidem-suscipit-ipsam-harum-voluptate-deleniti-excepturi-maiores-similique-temporibus-fugit-minima-sit-est-et-omnis', 'Tempora eum autem omnis voluptas provident. Sint debitis qui quisquam. Magni laudantium consectetur hic maiores laboriosam. Consequatur eligendi nisi quae voluptas et quis accusamus voluptatem. Exercitationem perspiciatis voluptatem illum. Similique laboriosam doloribus ut qui. Expedita cumque atque quia modi molestiae. Quis est impedit maxime nihil.', 'Possimus et sint consequuntur aliquam asperiores ipsum possimus. Aut doloremque at est molestiae dolorum vel et rerum. Mollitia quo deserunt doloremque nam alias. Unde dolorem blanditiis est.', 3, 'Hand Presser', '155 Volkman Rapid\nNorth Chadrick, AK 97866-4804', 'fulltime', 0, '2011-04-03', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 5, 10, 'female', '35806'),
(25, '14', '36', 'Enim et ut in cum. Quasi illum aut aliquam excepturi. Totam natus eos qui voluptas numquam tempore. Voluptate alias maxime maiores occaecati.', 'enim-et-ut-in-cum-quasi-illum-aut-aliquam-excepturi-totam-natus-eos-qui-voluptas-numquam-tempore-voluptate-alias-maxime-maiores-occaecati', 'Molestiae asperiores omnis quia aliquam minus. In aliquid voluptatem pariatur quaerat officiis sit consequuntur et. Et veritatis distinctio asperiores reprehenderit quam ut quia. Modi voluptas fugiat reprehenderit officia. Minus maiores quisquam at odit atque. Nisi sint porro sunt.', 'Perferendis id ea officia reiciendis quia aut aut. Cupiditate excepturi tempora facilis. Veniam sapiente ea qui modi qui aut. Ut eaque quia debitis impedit voluptas.', 9, 'Social Media Marketing Manager', '35060 Kaci Mountain Apt. 699\nHoracioland, WA 19689-1549', 'fulltime', 0, '1972-08-07', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 3, 9, 'male', '31979'),
(26, '23', '33', 'Aliquam dolore repudiandae eos pariatur veritatis eligendi rem consectetur. Illum tempora ex corrupti. Molestiae quia sit in soluta dignissimos.', 'aliquam-dolore-repudiandae-eos-pariatur-veritatis-eligendi-rem-consectetur-illum-tempora-ex-corrupti-molestiae-quia-sit-in-soluta-dignissimos', 'Voluptatibus quas ea dolor est. Quis unde sit molestiae sed quod qui sit magnam. Voluptatem quaerat rem maiores. Omnis omnis ea quia enim. Nihil consequatur vitae ut est. Dolores reprehenderit unde quia. Ut sunt aut ut commodi totam rem esse enim.', 'Iure accusantium facere commodi. Neque aliquam pariatur odio aut quos quia amet. Quia quia sint cum qui rerum quaerat. Nihil non sed ut sed quo.', 5, 'Conservation Scientist', '9288 Roberto Shoal Apt. 325\nWest Jermeyland, WV 14770', 'fulltime', 1, '2018-04-23', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 6, 1, 'male', '34670'),
(27, '36', '4', 'Magni commodi hic blanditiis autem sit. Qui nam molestias ullam dolorem ut pariatur et tempore. Ut dolores laborum quo reprehenderit excepturi nobis. Quas adipisci quia unde qui aut aut.', 'magni-commodi-hic-blanditiis-autem-sit-qui-nam-molestias-ullam-dolorem-ut-pariatur-et-tempore-ut-dolores-laborum-quo-reprehenderit-excepturi-nobis-quas-adipisci-quia-unde-qui-aut-aut', 'Id culpa autem quia illum est. Est aut quasi iure beatae labore. Vel consectetur autem enim ut dolorem.', 'Quidem odio neque illum consequatur quia consequuntur dignissimos. Modi ut soluta velit et. Explicabo vero modi et placeat eum sit blanditiis.', 5, 'Anthropology Teacher', '28740 Zella Shoal\nGuillermoport, TN 62741-8486', 'fulltime', 1, '1985-07-21', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 1, 8, 'male', '18125'),
(28, '33', '36', 'Praesentium incidunt possimus illo nisi laboriosam dignissimos ut. Ut quidem veniam ab magni et veritatis velit officiis. Deserunt aperiam voluptate quaerat non.', 'praesentium-incidunt-possimus-illo-nisi-laboriosam-dignissimos-ut-ut-quidem-veniam-ab-magni-et-veritatis-velit-officiis-deserunt-aperiam-voluptate-quaerat-non', 'Occaecati inventore tenetur qui esse iste. Qui aspernatur eos molestiae occaecati ducimus omnis.', 'Voluptatibus et veniam molestias sit numquam numquam. Occaecati repellat excepturi aliquam unde.', 2, 'Brattice Builder', '8701 Rosemary Spurs\nWest Edyth, OH 91424', 'fulltime', 1, '1976-11-05', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 7, 3, 'female', '12376'),
(29, '19', '4', 'Ea repudiandae aut ullam ad. Aut consectetur est blanditiis magnam sunt ea minima. Repudiandae laboriosam aliquid eum repellendus earum quidem.', 'ea-repudiandae-aut-ullam-ad-aut-consectetur-est-blanditiis-magnam-sunt-ea-minima-repudiandae-laboriosam-aliquid-eum-repellendus-earum-quidem', 'Ipsam ut aliquam quia maiores necessitatibus a qui. Voluptas voluptatum pariatur dolorum qui illum vero. Animi exercitationem pariatur recusandae optio. Aliquid architecto voluptatem dolore vel quis ad. Et fugit voluptates quibusdam et reprehenderit facilis. Ut minima ipsa iste quos. Id dolor perspiciatis placeat ad accusamus nobis. Iusto nihil iste magnam neque quis et quas. Ipsam rem harum voluptas quis explicabo. Qui labore minima eius.', 'Consectetur quia omnis error sed doloribus. Molestias qui animi veritatis. Aliquam ad provident quam ratione ea ut.', 3, 'Bookbinder', '805 Bosco Turnpike Suite 010\nPort Moshe, UT 32168', 'fulltime', 1, '1999-10-12', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 9, 2, 'female', '44968'),
(30, '20', '36', 'Voluptate molestiae quia molestiae ut voluptas quam. Dolorum labore eum earum ratione. Iure est totam magnam itaque ut.', 'voluptate-molestiae-quia-molestiae-ut-voluptas-quam-dolorum-labore-eum-earum-ratione-iure-est-totam-magnam-itaque-ut', 'Incidunt sed sequi consequatur. Incidunt aperiam deserunt vitae sit. Inventore perspiciatis perspiciatis aut ducimus error fuga.', 'Qui velit illum ipsam veritatis consectetur illum. Quo et earum quia sunt rerum. Voluptatibus minus illum aut sunt.', 4, 'Crane and Tower Operator', '985 Berge Inlet Suite 439\nVidatown, MS 95708', 'fulltime', 0, '1988-08-31', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 2, 2, 'male', '32171'),
(31, '33', '5', 'In necessitatibus qui ducimus sed dolores. Fugiat dignissimos sint vel ea hic et natus. Temporibus ex praesentium tempore ratione aliquid omnis enim.', 'in-necessitatibus-qui-ducimus-sed-dolores-fugiat-dignissimos-sint-vel-ea-hic-et-natus-temporibus-ex-praesentium-tempore-ratione-aliquid-omnis-enim', 'Et sapiente non corrupti eveniet tenetur quia. Aut expedita reiciendis temporibus aut. Voluptatem molestias deserunt est voluptas harum. Voluptatem molestias dignissimos tempore sapiente repudiandae. Quis sed dolores sapiente nisi aut dignissimos.', 'Impedit libero qui non alias sunt explicabo provident vitae. Et laborum consectetur rerum in velit qui. Distinctio nisi enim nihil ea. Totam dolore quidem nostrum error non ut.', 5, 'Vice President Of Human Resources', '4739 Kirlin Fields\nBorermouth, MS 69784-9840', 'fulltime', 1, '2010-02-12', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 5, 1, 'male', '31676'),
(32, '32', '16', 'Fugit earum aut aut optio alias ipsum. Quidem quam eum est et quis rerum autem. Ut laboriosam quas est culpa tenetur vero. Facere temporibus et accusantium voluptas unde quos ea ducimus.', 'fugit-earum-aut-aut-optio-alias-ipsum-quidem-quam-eum-est-et-quis-rerum-autem-ut-laboriosam-quas-est-culpa-tenetur-vero-facere-temporibus-et-accusantium-voluptas-unde-quos-ea-ducimus', 'Voluptates qui ut corrupti. Omnis distinctio veritatis quibusdam omnis harum distinctio hic non. Quo nulla architecto vitae recusandae cumque ducimus dolore. Assumenda voluptas et impedit voluptatem. Dolorem qui fugiat sint blanditiis porro optio. Voluptas facilis qui nihil. Qui sunt ex autem iure totam tenetur est.', 'Quae qui aliquid ut nemo id rerum sit. Culpa quisquam odit vel voluptatem exercitationem odio. Rerum eaque asperiores qui at consequatur dolorem sit eaque.', 2, 'Teacher', '43817 Reynolds Plaza Apt. 512\nSouth Cullenborough, WY 08652', 'fulltime', 1, '2001-04-04', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 7, 10, 'female', '44572'),
(33, '13', '39', 'Dolorem aliquid aut iusto quod. Iste praesentium dolorem aut eaque. Facilis ipsum rem ut. Voluptate nostrum voluptatem velit earum aut.', 'dolorem-aliquid-aut-iusto-quod-iste-praesentium-dolorem-aut-eaque-facilis-ipsum-rem-ut-voluptate-nostrum-voluptatem-velit-earum-aut', 'Ratione eos doloremque nostrum quam quis saepe. Neque voluptatem reprehenderit vel. Illum adipisci et iure nisi illo. Beatae incidunt voluptatem necessitatibus error quaerat. Nihil ipsum iste ab aut iste. Et esse non rerum enim sapiente error consequatur.', 'Ut est sit sequi error at atque et. Id molestiae est ipsum et sapiente vitae ut. Molestias labore eos sit repudiandae enim labore.', 2, 'Installation and Repair Technician', '1829 Sammie Mills\nKelvinville, NE 46704-9118', 'fulltime', 1, '1981-02-01', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 3, 7, 'female', '20169'),
(34, '16', '5', 'Et adipisci necessitatibus quia temporibus hic sunt. Fugit suscipit quisquam quas alias recusandae. Omnis et eos earum ex beatae est officia.', 'et-adipisci-necessitatibus-quia-temporibus-hic-sunt-fugit-suscipit-quisquam-quas-alias-recusandae-omnis-et-eos-earum-ex-beatae-est-officia', 'At iusto repellendus et praesentium laboriosam quod id. Rerum tempore officia cupiditate in et. Velit praesentium maiores sint quo asperiores distinctio aliquam. Consequatur aut atque qui odio est perspiciatis quae. Aspernatur quidem qui molestias enim. Itaque rerum in omnis similique dicta. Ipsam mollitia qui repudiandae sunt. Laborum odio dolorem voluptatem. Et nisi quasi id consequatur ut architecto eveniet. Est enim harum rerum et quis.', 'Quo doloribus in eaque unde ab. Quos repudiandae pariatur aspernatur ratione sunt. Et voluptatem voluptatem voluptas deleniti quaerat quia. Dolorem nobis voluptatibus perferendis in accusamus.', 2, 'Hand Sewer', '2585 Audreanne Burgs\nRyanfurt, MD 40419', 'fulltime', 0, '2019-05-24', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 10, 7, 'female', '19185'),
(35, '10', '1', 'Soluta ut ut rerum officiis quod assumenda totam. Consectetur corporis quia voluptas repudiandae voluptate. Consequuntur earum tenetur eveniet ullam dolorem.', 'soluta-ut-ut-rerum-officiis-quod-assumenda-totam-consectetur-corporis-quia-voluptas-repudiandae-voluptate-consequuntur-earum-tenetur-eveniet-ullam-dolorem', 'Suscipit ipsam magni quaerat incidunt eos. Quia quia saepe eius. Quibusdam nihil occaecati laudantium doloremque harum quia.', 'Quasi quos et aliquid iste et excepturi voluptas. Ex et amet blanditiis vero debitis. Reiciendis facilis dolorem quas totam reprehenderit unde molestias. Optio voluptatem delectus nesciunt omnis.', 3, 'Fishery Worker', '791 Thelma Pass Suite 123\nTreutelside, NJ 61627-5245', 'fulltime', 1, '2014-01-06', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 7, 4, 'male', '10094'),
(36, '35', '27', 'Quis repellat provident illo soluta ad animi iste. Esse quod facilis dolores necessitatibus ad. Voluptatem atque eum aut dolor quod.', 'quis-repellat-provident-illo-soluta-ad-animi-iste-esse-quod-facilis-dolores-necessitatibus-ad-voluptatem-atque-eum-aut-dolor-quod', 'Vel repellendus ullam expedita recusandae repellat molestiae magni dignissimos. Dolorem labore repellendus quam est voluptatem. Quis aspernatur doloribus et at aliquid debitis. Quo ab vel sunt pariatur. Doloribus repellendus et et ratione porro voluptas. Nemo facilis qui est sunt molestiae aut quo est.', 'Rerum at id officia dolores numquam. Placeat est eligendi nostrum itaque eveniet blanditiis culpa. Ut quidem quisquam placeat libero.', 3, 'Electromechanical Equipment Assembler', '73038 Ledner Underpass Suite 967\nKobetown, OK 06990-9156', 'fulltime', 0, '1999-04-05', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 7, 8, 'male', '39694'),
(37, '7', '28', 'Ut commodi laborum qui consectetur omnis totam. Quibusdam impedit aut aut.', 'ut-commodi-laborum-qui-consectetur-omnis-totam-quibusdam-impedit-aut-aut', 'Asperiores atque et voluptatibus vel. Expedita consectetur ut dignissimos nemo rerum. Aliquid sunt rem voluptatem sed. Ex laborum est ea voluptatem sed sunt et aliquam. Occaecati expedita perferendis non qui commodi autem totam. Qui dicta quia ut autem voluptate. Vel quod ex suscipit qui nobis. Omnis sed culpa laborum. Dignissimos veritatis recusandae et. Et dolore nemo eos non. Doloremque eum at eos. Enim porro amet odio odio et.', 'Optio sit qui et culpa quia ullam voluptas. Commodi explicabo eum ea laudantium.', 5, 'Life Science Technician', '708 Bergnaum Loaf\nMartinmouth, TN 35131-9043', 'fulltime', 0, '2016-09-10', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 2, 2, 'male', '15070'),
(38, '18', '24', 'Quo fuga et sint provident exercitationem voluptatum a. Ipsa optio voluptatem qui rem.', 'quo-fuga-et-sint-provident-exercitationem-voluptatum-a-ipsa-optio-voluptatem-qui-rem', 'Dolores ea fuga aliquid. Eos quos delectus sint deserunt quam consequatur. Molestiae ratione cumque sed ut illum iure. Quaerat cumque quis quos magnam et voluptatem necessitatibus natus. Doloribus eum itaque excepturi esse id beatae. Sint recusandae ut at neque. Deleniti eius exercitationem ipsum qui natus. Quidem qui sit optio qui velit consequatur. Aut neque ad consectetur exercitationem nihil. Nesciunt repellat cupiditate tenetur quis qui. Maiores iusto pariatur architecto nulla.', 'Non nisi et sapiente quia ut. Quis repellat sunt sed repellendus. Dolore porro ut qui consequatur eius. Ipsam optio nobis ratione rerum architecto.', 5, 'Pharmacy Aide', '60973 Gorczany Wall\nPort Rickeyview, AZ 61581-6032', 'fulltime', 0, '2018-10-11', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 1, 9, 'female', '46795'),
(39, '2', '39', 'Sunt voluptas nostrum quo a et omnis iure. Quis sint placeat eligendi nulla est aliquid. Voluptatum nemo voluptatem aut et.', 'sunt-voluptas-nostrum-quo-a-et-omnis-iure-quis-sint-placeat-eligendi-nulla-est-aliquid-voluptatum-nemo-voluptatem-aut-et', 'Est tempora ullam magnam doloribus cumque in hic. Animi adipisci dignissimos quisquam quia temporibus ut quisquam consequuntur. Ipsam dicta occaecati beatae unde recusandae minus. Sit est reiciendis illum est facere velit. Nihil quia veniam fuga ut enim ipsum. Minima ipsam ut molestiae mollitia et corporis consequuntur. Corrupti voluptatem fugiat facilis aut debitis consequatur. Quod accusantium ut qui tenetur et labore. Eos officiis dolores ipsa et at et. Occaecati saepe eligendi quasi explicabo rerum quos et. Voluptas aut ullam velit qui hic. Eveniet soluta voluptas minima voluptatem adipisci corrupti quia ut. Et asperiores sit labore tempore.', 'Aut dignissimos est ut. Reprehenderit nihil veritatis ut cupiditate aut vel amet. Aut mollitia quam totam ut. Voluptatibus blanditiis aut sunt dolorem.', 4, 'Hand Presser', '6692 Reilly Divide\nZackmouth, MO 17844-6408', 'fulltime', 1, '1999-12-09', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 4, 3, 'female', '32690'),
(40, '14', '21', 'Est alias et dolorum sunt laborum aliquid cumque. Perferendis velit ut quo quia fugiat. Delectus ut officiis tempora omnis est nisi.', 'est-alias-et-dolorum-sunt-laborum-aliquid-cumque-perferendis-velit-ut-quo-quia-fugiat-delectus-ut-officiis-tempora-omnis-est-nisi', 'Voluptatem repellat nesciunt ut labore rerum. Aliquid vel veritatis ratione quo inventore tempore. Vel eaque saepe repudiandae. Velit aut adipisci a sit minima voluptatem. Labore culpa rerum qui. Ut eos illum accusamus sunt error delectus. Omnis voluptas iste eos et quaerat.', 'Est ipsa quo inventore. Natus et sit magni aliquid ipsam eligendi dolorem. Maiores sed saepe nesciunt reprehenderit. Neque dolores non eum aut sapiente eos. Quidem iure dolore amet non repellendus.', 8, 'Sports Teacher', '782 Ron Trail Suite 226\nLake Nash, WI 68883', 'fulltime', 0, '1971-04-17', '2020-09-05 03:56:42', '2020-09-05 03:56:42', 6, 4, 'male', '47900');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_user`
--

INSERT INTO `job_user` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 17, 21, '2020-09-03 07:01:45', '2020-09-03 07:01:45');

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
(4, '2020_08_22_092834_create_profiles_table', 1),
(5, '2020_08_22_093059_create_companies_table', 1),
(6, '2020_08_22_093326_create_categories_table', 1),
(7, '2020_08_22_094548_create_jobs_table', 1),
(8, '2020_08_22_100136_create_job_user_table', 1),
(9, '2020_08_22_100217_create_favourites_table', 1),
(10, '2020_08_27_110005_add_phone_number_to_profiles_table', 1),
(11, '2020_09_03_100331_add_column_to_jobs', 1),
(12, '2020_09_05_085945_create_roles_table', 2),
(13, '2020_09_05_090142_create_role_user_table', 2),
(14, '2020_09_05_121719_create_posts_table', 3),
(15, '2020_09_06_124352_create_testimonials_table', 4);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Updated Title 123', 'title', 'Updated Content 123', 'uploads/J6MqsLfrvKHILaUSGqAiucNDyViYtW9a4zdCRX0G.jpeg', 1, NULL, '2020-09-06 01:29:44', '2020-09-06 05:15:46'),
(2, 'This is another Title', 'title', 'This is another Content', 'uploads/0rcFRLNTOMvHoS8irOvXeKWr6UuOg3RlskT8ItQM.jpeg', 1, NULL, '2020-09-06 01:32:02', '2020-09-06 06:16:38'),
(3, 'My New Post', 'title', 'This is some special Content!!!!!!', 'uploads/fTprIVRDUsR7fw6DDdrq9LGCXsokNYcqRJdkdviO.png', 1, NULL, '2020-09-06 01:38:48', '2020-09-06 06:32:49'),
(4, 'This is my new Title', 'title', 'This is my new ContentThis is my new Content', 'uploads/8eWcs2McY15u2Y39gQY9mwDTSHj8JctoZISwHE3n.jpeg', 1, NULL, '2020-09-06 01:55:56', '2020-09-06 06:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_letter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `phone_number`, `gender`, `dob`, `experience`, `bio`, `cover_letter`, `resume`, `avatar`, `created_at`, `updated_at`) VALUES
(1, '21', 'Test Street CA', '9801223064', 'male', '1985-04-08', 'Have 3 Years of Experience in Web evelopment and Designing !!', 'Love to Work On front End As well as back End of My Projects. Loves Pets and Driving', 'public/files/pdoR3uwwKnuNi9VLygro2jtLPAGVDwJOoA2f0B4J.docx', 'public/files/IG4DiKf4hxksInbKKUV9C9s4Oy1TWiS5e4YSk5C9.docx', '1599480579.jpeg', '2020-09-03 07:00:05', '2020-09-08 00:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-05 03:56:42', '2020-09-05 03:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 42, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `content`, `name`, `profession`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Ashutosh Kumar', 'Web Developer', 342979043, '2020-09-06 08:05:10', '2020-09-06 08:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Morissette DVM', 'seeker', 'geovany.sawayn@example.com', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's5Gip3ggzf', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(2, 'Shana Bednar', 'seeker', 'arely25@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JFfgh68viB', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(3, 'Elyse Muller', 'seeker', 'murphy.delta@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'roWLZSK22n', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(4, 'Dr. Kyle Rohan Jr.', 'seeker', 'henriette.gorczany@example.com', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JxC9jR4MzF', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(5, 'Aleen Kunze', 'seeker', 'mozelle20@example.org', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aHuk5aJc3x', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(6, 'Marian Stokes Sr.', 'seeker', 'deshaun.streich@example.com', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TcBRXJXtJT', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(7, 'Prof. Odie Osinski', 'seeker', 'opollich@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AkdvKdFnHU', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(8, 'Pierce Bechtelar', 'seeker', 'fdach@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0srZxzAwjR', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(9, 'Elenor Leuschke', 'seeker', 'hosea.maggio@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHU1muOyQo', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(10, 'Santa King', 'seeker', 'wilkinson.magdalen@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YtHeRgDATk', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(11, 'Carlee Littel', 'seeker', 'charity.haley@example.com', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2LHgGo7iCH', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(12, 'Osborne Leuschke III', 'seeker', 'amira34@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fbzE9N0IId', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(13, 'Sterling Rau', 'seeker', 'aurelia94@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oi4xLWwdVO', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(14, 'Prof. Boyd Macejkovic I', 'seeker', 'zita.heathcote@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cbo0cdNbSq', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(15, 'Mr. Keven Yundt', 'seeker', 'xpfannerstill@example.org', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CijCcObO4U', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(16, 'Mr. Darron Medhurst', 'seeker', 'koelpin.antonina@example.org', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IHWeoMjK7V', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(17, 'Teagan Lesch', 'seeker', 'lloyd94@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vqhpRLAZlp', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(18, 'Opal Anderson', 'seeker', 'jast.trevion@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WggRMfrfHC', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(19, 'Javonte Stanton', 'seeker', 'stokes.augustus@example.com', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x4mJSh9BLZ', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(20, 'Joan Gleason', 'seeker', 'marc77@example.net', '2020-09-03 05:29:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y26ott879S', '2020-09-03 05:29:23', '2020-09-03 05:29:23'),
(21, 'John Doe', 'seeker', 'jd@gmail.com', '2020-09-03 07:00:31', '$2y$10$.vGuzZZLv.fhBuITovXLbO9W4L7oCJyDls3hhggN8X9ZvQ57pWIXm', NULL, '2020-09-03 07:00:05', '2020-09-03 07:00:31'),
(22, 'Aiden Little', 'seeker', 'hermiston.reinhold@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DYyL36SnC3', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(23, 'Dr. Conor Crona IV', 'seeker', 'gleichner.maryjane@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zpDvH1aISb', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(24, 'Dr. Kimberly Kuvalis DDS', 'seeker', 'nolan.arnoldo@example.net', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pzRJggloqG', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(25, 'Amani Toy', 'seeker', 'shayna.rice@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wqtiqvfguF', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(26, 'Carolina Grant', 'seeker', 'melody.steuber@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gTUMfbc2ui', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(27, 'Maurine Von IV', 'seeker', 'diego90@example.net', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Aq7smX6wfl', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(28, 'Westley Kassulke', 'seeker', 'davis.delta@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sRAkpesD5T', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(29, 'Sylvia Lakin', 'seeker', 'crist.tressa@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4xbPvb1LYM', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(30, 'Andre Murphy', 'seeker', 'cody28@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JYWDi10dXC', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(31, 'Miss Kenya Upton', 'seeker', 'larkin.mayra@example.net', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HuhJc6F97c', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(32, 'Jeramie McLaughlin', 'seeker', 'rodriguez.trinity@example.net', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AeVZXuQGDQ', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(33, 'Marty Luettgen', 'seeker', 'durgan.cortez@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4lib0EnihD', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(34, 'Mr. Tad Beatty I', 'seeker', 'faustino11@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lthAslIXL6', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(35, 'Marques Durgan', 'seeker', 'karine.tremblay@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZoyrxVWGVJ', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(36, 'Euna Treutel', 'seeker', 'west.rosalee@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bwmy6yXqyN', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(37, 'Mrs. Dariana Prosacco PhD', 'seeker', 'daphney.schimmel@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YcgOq64Y0I', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(38, 'Mr. Uriah Kulas Jr.', 'seeker', 'tkassulke@example.org', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TVFLFybOis', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(39, 'Miss Oceane Cummings', 'seeker', 'marks.nick@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dGtuHdtK5l', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(40, 'Keegan Kuphal', 'seeker', 'hauck.eve@example.com', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sJqwmFGP15', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(41, 'Gay Zulauf', 'seeker', 'myah.murray@example.net', '2020-09-05 03:56:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xxwvT3Lusd', '2020-09-05 03:56:42', '2020-09-05 03:56:42'),
(42, 'admin', '', 'admin@gmail.com', '2020-09-05 03:56:43', '$2y$10$7rSxyVl3Y8QhBe/bYvPWYuPFKjgWV4cxWyBNzF6ZoI82lkok.ccxG', NULL, '2020-09-05 03:56:43', '2020-09-05 03:56:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
