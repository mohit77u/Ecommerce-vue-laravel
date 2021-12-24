-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2021 at 10:18 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingone` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentone` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingtwo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenttwo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingthree` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentthree` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingfour` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentfour` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingfive` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentfive` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headingsix` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentsix` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `category_id`, `featured_image`, `description`, `headingone`, `contentone`, `headingtwo`, `contenttwo`, `headingthree`, `contentthree`, `headingfour`, `contentfour`, `headingfive`, `contentfive`, `headingsix`, `contentsix`, `created_at`, `updated_at`) VALUES
(4, 'What makes a good website?', 'what-makes-a-good-website', '6', '/storage/blogs/1639587212_web-development.jpg', 'What makes a decent web composition comes up when one hopes to get a site assembled. The utilization of pictures, text styles, tones, and others adds to the site\'s feel. In basic words, how gorgeous your site is to a typical client.', 'Layout and structure', 'The design of the site ought to be very much considered and mirror a legitimate way that the client\'s eye needs to follow. A regular format could show different administrations and items the site brings to the table, source of inspiration set fittingly, tributes of customers, and presumably processes that clients need to follow.', 'Page speed', 'A decent site will have a high page speed. A decent engineer will keep how much code less as he realizes that a ton of codes will affect the page speed unfavorably. He will utilize just the necessary libraries and follow due cycles to keep the page speed high.\n\nWhat makes a decent site in 2020 is page speed as low page speed impacts client experience. Google approaches this extremely in a serious way and its calculation will keep your rankings done. Google designer device shows page speed for both portable and work areas. It is more straightforward to get page speed on a work area than versatile. Ensure your site has great page speed on portable as well.', 'Mobile responsiveness', 'A larger part of the hunts occur through versatility thus your site should look great on portable as well. You can check how your site looks on changed sizes by squeezing F12 or right-click and go to review. There you can really take a look at the perspective on versatility in various sizes.', 'Contact forms', 'Guarantee clients can connect with you by filling structures. A decent site will likewise send reaction messages to the clients to guarantee them that their mail has been gotten. The contact structure information filled ought to be put away in some data set for future reference.', 'Social media Icons', 'Guarantee your social media symbols are available on the footer or header of the site. Clients and particularly understudies check the social media record of brands prior to settling the buy. Having online media scraps or symbols is the thing that makes a decent site for understudies.', '404 page', 'Assuming a client type in a URL that doesn\'t exist, he ought to be coordinated to a 404 Page. You can utilize this 404 page to be shamelessly loaded up with your imagination.', '2021-12-19 12:48:15', '2021-12-19 12:49:29'),
(5, 'What is Digital Marketing?', 'what-is-digital-marketing', '10', '/storage/blogs/1639587253_seo.jpg', 'With web access across each breath and corner of the world and surprisingly in an agricultural nation like India, Digital is the best approach. The excellent significance of internet advertising can be perceived from the way that each brand either has a web-based promoting administrator in the house or they re-appropriate this work. Web-based showcasing has made some amazing progress in an extremely brief time frame fundamentally because of the progressions by Google and its out-of-world calculation. In this article, we attempt to address all inquiries identified with what is computerized advertising.', 'What is Digital Marketing?', 'In simple words – computerized advertising is advancement through computerized ways.\n\nAny advertising exertion that utilizes the web and online computerized methods can be decently called advanced or internet promoting. Taking into account that the degree of human association has diminished definitely promoting offices assume a critical part in the achievement of the business. The significance of computerized showcasing for independent companies can be perceived from the way that all of them have an online media page and a nice-looking site. They probably won\'t spend huge however they know how urgent internet-based businesses s for them.', 'The Advantages of Online Marketing', 'Benefits are enormous as displayed underneath which makes it one of the must-get things done for each brand. When contrasted with customary advertising, web-based showcasing offers a ton of benefits that you may have been missing. A decent advertising procedure has a 360-degree approach and it doesn\'t leave out any advanced channel. You can recognize a decent advertising office by the sort of computerized arms stockpile it has and how much 360-degree inclusion they can do.', 'Provides Two-Way Communications', 'Advanced advertisers get an opportunity to reach back to their clients and draw in them head-on. This forms a solid association with the clients. Item administrators can comprehend the trouble spot of their clients and adjust the items in a like manner. Two-way correspondences are most certainly perhaps the greatest benefit of digital marketing.', 'Allows Selective Targeting', 'On the web, you can focus on your correspondence specifically relying upon different boundaries like demography or activity. Online media stages arrange clients on different boundaries that permit them to be focused on without any problem. You can choose the age class, standards of gender, the region they live in, etc.', 'Connects with Mobile Users', 'Information utilization through mobiles has soared as clients invest a great deal of energy on it particularly while voyaging. They check web-based media posts, read web journals and articles, and love watching recordings. Every one of these is sufficient ammo for web advertisers who would then be able to target clients in any event when they are portable.', 'The time required in seeing results', 'Digital marketing requires 3 months, in addition, to beginning showing upgrades in positioning. In the event that the catchphrases are extremely serious, this time can go as long as a half year. With forceful work, this time can go down however will require a great deal of exertion from the showcasing group.', '2021-12-19 12:57:15', '2021-12-19 12:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Web Development', 'web-development', '/storage/blogs/1639916538_web-development.jpg', '2021-12-19 12:22:18', '2021-12-19 12:22:18'),
(7, 'Mobile App Development', 'mobile-app-development', '/storage/blogs/1639916580_app-development.jpg', '2021-12-19 12:23:00', '2021-12-19 12:23:00'),
(8, 'Search Engine Optimization', 'search-engine-optimization', '/storage/blogs/1639916614_seo.jpg', '2021-12-19 12:23:34', '2021-12-19 12:23:34'),
(9, 'Social Media Marketing', 'social-media-marketing', '/storage/blogs/1639916645_smm.jpg', '2021-12-19 12:24:05', '2021-12-19 12:24:05'),
(10, 'Digital Marketing', 'digital-marketing', '/storage/blogs/1639916699_digital-marketing.jpg', '2021-12-19 12:24:59', '2021-12-19 12:24:59'),
(11, 'Ecommerce', 'ecommerce', '/storage/blogs/1639916717_ecommerce.jpg', '2021-12-19 12:25:17', '2021-12-19 12:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `available_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product`, `product_id`, `image`, `price`, `quantity`, `available_quantity`, `created_at`, `updated_at`) VALUES
(13, 1, 'Casual Sneakers Black Shoes For Men Sneakers For Men  (Black)', 14, '/storage/products/1640019605_a.jpeg', '451', 1, 10, '2021-12-23 04:35:09', '2021-12-23 04:35:09'),
(14, 1, 'Casual Sneakers Black Shoes For Men Sneakers For Men  (Black)', 14, '/storage/products/1640019605_a.jpeg', '451', 1, 10, '2021-12-23 04:38:28', '2021-12-23 04:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positions` int(11) NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility_five` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(86, '2021_11_15_155737_create_admins_table', 1),
(169, '2014_10_12_000000_create_users_table', 2),
(170, '2014_10_12_100000_create_password_resets_table', 2),
(171, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(172, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(173, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(174, '2016_06_01_000004_create_oauth_clients_table', 2),
(175, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(176, '2019_08_19_000000_create_failed_jobs_table', 2),
(177, '2021_11_07_094620_create_jobs_table', 2),
(178, '2021_11_18_164817_create_students_table', 2),
(179, '2021_11_27_172320_create_products_table', 2),
(180, '2021_12_01_145656_create_cart_table', 2),
(181, '2021_12_04_154831_create_orders_table', 2),
(182, '2021_12_08_160405_create_product_categories_table', 3),
(183, '2021_12_09_051023_create_product_categories_table', 4),
(184, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(185, '2021_12_13_174400_create_blogs_table', 5),
(186, '2021_12_14_152150_create_blog_categories_table', 5),
(187, '2021_12_15_173747_create_contacts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06cde5b8a9aa903b46e46342846ecbdb1adffe54c9e200c16064b58072f4a62fbb510cc99af21690', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:32:35', '2021-12-08 09:32:35', '2021-12-09 15:02:34'),
('080115b10f1ef81c51a790e2f11dde30a658a313f07e4990cd944d59b4dbbd4ea7d0485577814e36', 7, 1, 'Ashish Patel', '[]', 0, '2021-12-11 00:04:18', '2021-12-11 00:04:18', '2021-12-12 05:34:17'),
('0d0b6de83df95fcafdcbdcb1600da7b70bd6df1e217b561511626cb81253045e737f259a5c9cfb4a', 1, 1, 'Mohit', '[]', 0, '2021-12-09 08:55:44', '2021-12-09 08:55:44', '2021-12-10 14:25:43'),
('10d228aea506ab77f2782c3a45800ed264017ec3a64c651bfd6a754ad03699dbb5bde1dbe90959f3', 10, 1, 'Pramod Patel', '[]', 0, '2021-12-11 05:34:46', '2021-12-11 05:34:46', '2021-12-12 11:04:45'),
('16275263d94fe398f3ad321bf20debc8645ff908fef4f8c66641c5b6f312af981c8276ad69956413', 1, 1, 'Mohit', '[]', 0, '2021-12-10 09:28:54', '2021-12-10 09:28:54', '2021-12-11 14:58:53'),
('1bd4bf5ebda81c1b607b22c76403fc5b12a4d648143f2e625b23f600693a48b6f5f6612f2cabfecf', 1, 5, 'Mohit', '[]', 0, '2021-12-22 00:14:32', '2021-12-22 00:14:32', '2021-12-23 05:44:32'),
('1f04934eb076746f80866e720ebaeb1854aad8cab871538106c0af340e2a249a849ba2d236cea6ab', 1, 5, 'Mohit', '[]', 0, '2021-12-23 04:38:15', '2021-12-23 04:38:15', '2021-12-24 10:08:15'),
('2496d79b0bccf5413c75ba0ddc0ba40201c8b64a60ecceb23f721ef4dec0cd1b599a4cf7cdf300fd', 1, 5, 'Mohit', '[]', 0, '2021-12-22 05:00:16', '2021-12-22 05:00:16', '2021-12-23 10:30:16'),
('26c94761177a67b10c855a5deeabf7ccf2decc9f65d3674205cb22ace584e3236c0dfe4a5a0ba290', 9, 1, 'Ashish Patel', '[]', 0, '2021-12-11 10:56:38', '2021-12-11 10:56:38', '2021-12-12 16:26:37'),
('29317525dcbe8da8adfd75c92530a4940e450b2dbf0f3f8d27316043c1147a9d8c374015e85ea3fa', 1, 5, 'Mohit', '[]', 0, '2021-12-21 00:36:36', '2021-12-21 00:36:36', '2021-12-22 06:06:36'),
('2a6fcf7da6209622eb60a0567663a5f00deefb0a17f9b495a4a5b17eabe1ce8eba1301c96dff17b5', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:39:53', '2021-12-08 09:39:53', '2021-12-09 15:09:53'),
('320594e389904bebf9083bcf30ae8b5899f66ed1c6acd1a51bec871829969a50eded7ae96d3858a0', 1, 1, 'Mohit', '[]', 0, '2021-12-06 11:00:56', '2021-12-06 11:00:56', '2021-12-07 16:30:55'),
('3246642726554e58224a48eb0a3030b0863f14a0636d83b9d34d0bc3bcb415be846c13457f95a15f', 1, 5, 'Mohit', '[]', 0, '2021-12-21 00:22:42', '2021-12-21 00:22:42', '2021-12-22 05:52:42'),
('373d915ba8dc8ebc6264b0414a7269ac7de04a307cbe0b1c2d7f4def0611e4f435849707b6093260', 8, 1, 'david singh', '[]', 0, '2021-12-11 00:21:20', '2021-12-11 00:21:20', '2021-12-12 05:51:20'),
('39c05232b75bfe5019c8fc0154af5320b0143ef34163749b1c2780d780262e4c51ed316516d44ef5', 1, 1, 'Mohit', '[]', 0, '2021-12-07 09:37:53', '2021-12-07 09:37:53', '2021-12-08 15:07:53'),
('3ef0e9119b1e9e9cf70031ccc8d3adce8433b581ade53699281fb274cd258fbea4fb02f2108b9c35', 15, 1, 'Ashish Patel', '[]', 0, '2021-12-14 01:55:47', '2021-12-14 01:55:47', '2021-12-15 07:25:46'),
('42647860fa5477c3d5e8eaa20eae26d712a6880d82ad1911e37d20eea70f7f3666ce35b952e46a05', 7, 1, 'Ashish Patel', '[]', 0, '2021-12-11 05:33:37', '2021-12-11 05:33:37', '2021-12-12 11:03:36'),
('42b4bd525180dd6c633b35b5a525339a588de641061dbe5282588dca7aad9d1b0176c709c8296926', 7, 1, 'Ashish Patel', '[]', 0, '2021-12-11 01:46:10', '2021-12-11 01:46:10', '2021-12-12 07:16:09'),
('42e41191e8bc4f44f740736401f91cff68c1e0821104ea75e96dad20455464e4db7269168f14298a', 7, 1, 'Ashish Patel', '[]', 0, '2021-12-11 02:39:04', '2021-12-11 02:39:04', '2021-12-12 08:09:03'),
('47cd1a0d884fd5a1d691db8b93895f999534e579c88ef6ed03b6091226dc0ec322559a08b65c2503', 9, 1, 'Ashish Patel', '[]', 0, '2021-12-11 00:55:09', '2021-12-11 00:55:09', '2021-12-12 06:25:08'),
('48f734844ce12d31c7f54c1a4a464d3311736aa2760329fb561e8a1e34b641e705c25fc84fe5384f', 1, 3, 'Mohit', '[]', 0, '2021-12-20 10:57:55', '2021-12-20 10:57:55', '2021-12-21 16:27:55'),
('4bdf24edbb5fd31f27c89c0194ca00163a158aa2bb50827889c476b07a79c6a3b2b0a6f8082b8410', 1, 1, 'Mohit', '[]', 0, '2021-12-08 10:50:41', '2021-12-08 10:50:41', '2021-12-09 16:20:41'),
('561eab77504fe1acb19e77e87a1e01c9c87164ddcac529c73a43f36820c482246a692b3d556c2758', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:36:59', '2021-12-08 09:36:59', '2021-12-09 15:06:59'),
('5d18fca07c3a8579254f1b30ebed3f1e9cb406a2a68c0457eb67cd92a8b56013ac8aeb98d668267e', 1, 1, 'Mohit', '[]', 0, '2021-12-07 11:57:39', '2021-12-07 11:57:39', '2021-12-08 17:27:39'),
('6dc54824ad317232e412f5730567329227e577bc4242837f489684e92a90ae7ff4b64e8cbc14501d', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:53:53', '2021-12-08 09:53:53', '2021-12-09 15:23:53'),
('7968caeb492cb4fdbe320ae0eed87e7866d1331a12d934d175e4c9c8398bdb64edfc9b3c0b4bd52e', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:41:44', '2021-12-08 09:41:44', '2021-12-09 15:11:44'),
('8c2f98cef445e2a31c9e02713874fa78fa3a25c9e08a58522b4abbf1be16b4e9649acf15c3992bcf', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:51:25', '2021-12-08 09:51:25', '2021-12-09 15:21:25'),
('8fe37c88f383b70ded0ebbcc011f2ff6419b402307c2404271619ad3b2e0e9d948133a47af1b2d69', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:40:53', '2021-12-08 09:40:53', '2021-12-09 15:10:53'),
('a337b3139e32e0bd8a987f96fac79151e4f8fd9a1bd9b9c06c1e3aa009fe50afdbe923182fcb8a36', 1, 1, 'Mohit', '[]', 0, '2021-12-07 12:06:58', '2021-12-07 12:06:58', '2021-12-08 17:36:58'),
('aca84187cae60aeb5195b7327eb6cafd5c053598b9aa56e7587a9fd42248548399bba6cba3ddba7f', 1, 1, 'Mohit', '[]', 0, '2021-12-07 11:36:48', '2021-12-07 11:36:48', '2021-12-08 17:06:48'),
('b4bd138c25be4fb1a1a428ef64c463be8ff6fdd2be320a24d9ffd579542b3f2e403e33aa2b772024', 1, 5, 'Mohit', '[]', 0, '2021-12-23 03:03:23', '2021-12-23 03:03:23', '2021-12-24 08:33:23'),
('d3be4b7284146488d0a5fb1ed52e3fd58630ec04090560fe1c335dbc9c317c8c3364760105229e8a', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:35:29', '2021-12-08 09:35:29', '2021-12-09 15:05:29'),
('dc86113f099c56470a75a38b44bf4da7162113609bb694c5e10c5e1a3cdec4d25d2c90f420451513', 1, 1, 'Mohit', '[]', 0, '2021-12-08 09:38:00', '2021-12-08 09:38:00', '2021-12-09 15:07:59'),
('e85f67947bf8ff75c554d1985b27ea856626988ce1683deeec8d08e603572e147a791b17e581c955', 14, 1, 'Ashish Patel', '[]', 0, '2021-12-11 11:24:12', '2021-12-11 11:24:12', '2021-12-12 16:54:11'),
('ebd8da0e5a1098fd29cfabebecf6c204885bc3edcdc14533773b2926d9daea372ce2740dfffc5538', 1, 1, 'Mohit', '[]', 0, '2021-12-10 12:49:28', '2021-12-10 12:49:28', '2021-12-11 18:19:27'),
('ed599c6d2ab5b2c84b5aec4a6dd53a265cf393665924268e40ff3a70e16e6a61ba4ed753d0b4ddbd', 1, 5, 'Mohit', '[]', 0, '2021-12-22 04:56:02', '2021-12-22 04:56:02', '2021-12-23 10:26:02'),
('f8a7f7ecfd4b310517620fc9c38bc9266a783ea19ec228f009c933b7c70f5592358edf9c90b81bc3', 15, 1, 'Ashish Patel', '[]', 0, '2021-12-17 02:41:11', '2021-12-17 02:41:11', '2021-12-18 08:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '9bbD6lOtBvNsE8qhg6uzgToXLN1CNiTmZU8w2WMg', NULL, 'http://localhost', 1, 0, 0, '2021-12-06 11:00:24', '2021-12-06 11:00:24'),
(2, NULL, 'Laravel Password Grant Client', 'M2Vjcws9ZzHJMcuK6DQrcLqKSQYUDEqP0HfuHkKB', 'users', 'http://localhost', 0, 1, 0, '2021-12-06 11:00:24', '2021-12-06 11:00:24'),
(3, NULL, 'The_Shop_X Personal Access Client', 'BUkX3uel7yjaYeGFDxRpQa0LuKQMfYi39SrThnNZ', NULL, 'http://localhost', 1, 0, 0, '2021-12-20 10:56:46', '2021-12-20 10:56:46'),
(4, NULL, 'The_Shop_X Password Grant Client', 'eI82PetWGCO6E7LmNdCcvMbcEogGT6V5RqyjSYAW', 'users', 'http://localhost', 0, 1, 0, '2021-12-20 10:56:47', '2021-12-20 10:56:47'),
(5, NULL, 'The_Shop_X Personal Access Client', 'AdRNqTPutczkE9bxH7lEPs0YKMlK9T0812vq04iG', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 00:10:16', '2021-12-21 00:10:16'),
(6, NULL, 'The_Shop_X Password Grant Client', 'K1HeYw6i1SCSzQst1ekmgtrGGHZvopXRKAjmAVdD', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 00:10:17', '2021-12-21 00:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-06 11:00:24', '2021-12-06 11:00:24'),
(2, 3, '2021-12-20 10:56:47', '2021-12-20 10:56:47'),
(3, 5, '2021-12-21 00:10:16', '2021-12-21 00:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `first_name`, `last_name`, `address_line_1`, `address_line_2`, `city`, `state`, `pincode`, `delivery_method`, `product_name`, `price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mohit', 'singh', 'Nehru nagar', 'abc', 'Indore', 'mp', '452001', 'Express Delivery(Delivery within 3 Days)', 'Shark-41 Sneakers For Men  (White)', '449', '1796', '2021-12-21 00:26:28', '2021-12-21 00:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ashish77uab1@gmail.com', 'PBYIbZAcY2ek90HkTYwPTz4XjpuwSWzVeu4AXmNR67hZ0mNMw7', '2021-12-11 16:13:16'),
('ashish77uab1@gmail.com', '2zmkR4ZEPCK1u8RFPsBMgoXgeNp5Zeryt6bHejTvvwaKHY1crz', '2021-12-11 16:17:22'),
('mohiit77u@gmail.com', 'KfW3HUXy75sMuf9J83OGxrh8DyoOq0qwQMX09Qz3hVsL1V6uYK', '2021-12-11 16:20:25'),
('mohiit77u@gmail.com', 'PgATCdi7DyqamfV8yyMePCsx2Jae6uInmjWpWdTxcilXl3X9yY', '2021-12-11 16:22:22'),
('ashish77uab1@gmail.com', 'vJkI4P0TrE6sbLV0Hcrevfg7KPQuEFIoHDT2peD4oGOO7RiBdI', '2021-12-11 16:22:51'),
('ashish77uab@gmail.com', 'zMdEZ5dIvhSy0hklZvagLahrMPzifSyCl4BptKY8xxVqKtn77r', '2021-12-11 16:25:13'),
('ashish77uab@gmail.com', 'yT3vReXW2jkf87WCkYE0swML1TBLy73d2tSlWyNvXYdm8kT4Kj', '2021-12-11 16:25:18'),
('ashish77uab1@gmail.com', 'cCAoq72guzrzVBttIbsQKZPYcys7dMruMbJyvnbMx2RrDZ92T4', '2021-12-11 16:37:01'),
('ashish77uab@gmail.com', 'O5xDixl82tsKdZlC2Hq9ZF6x5sraw95MmxlrdFUsPqdAivEsCK', '2021-12-11 16:37:34'),
('ashish77uab@gmail.com', '7xgWyf4t5hFWrf2RRSIUF0FZbb5wOgrbPxXPwne2CJw82lWiVH', '2021-12-11 16:40:40'),
('ashish77uab@gmail.com', 'NE7AouGsMHs4CYbmtkGGj1xNfMB7VOLs8cxIikD3PQJ4Skv5QR', '2021-12-11 16:57:09'),
('ashish77uab@gmail.com', 'UAV5FHlzgtASWtYUQCJ0tJ5QbdA3lDd6wp9jCgtkU4nSqLIN5y', '2021-12-11 17:00:35'),
('ashish77uab@gmail.com', 'gRxtaXwILwSQyeaRXbSDSz20VEvj7wWe5bixGhpxxWXAUhVgwU', '2021-12-11 17:07:13'),
('ashish77uab@gmail.com', 'mcF68O0Bz99wW38Chnsv4oK9oLLFThaXzvgs6DBErpXUFoWuQy', '2021-12-11 17:26:23'),
('ashish77uab@gmail.com', 'ozShRfMyVGlNddknOwiOs9mUunPZxJustvW1fpIezgaHtgUBO4', '2021-12-11 17:43:44'),
('ashish77uab@gmail.com', '901ot94J2hSTECSYlWYvDtZ5S0LzHez7Jl2ZpXJHh9bI7p3uGY', '2021-12-11 18:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `short_description` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category`, `image`, `path`, `price`, `quantity`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Iphone X', 'iphone-x', '5', '1640018302_1639986923_1638375514_apple-iphone-12-dummyapplefsn-original-imafwg8drqaam5vu.jpeg', '/storage/products/1640018302_1639986923_1638375514_apple-iphone-12-dummyapplefsn-original-imafwg8drqaam5vu.jpeg', 149999, 5, '64 GB ROM\n14.73 cm (5.8 inch) Super Retina HD Display\n12MP + 12MP | 7MP Front Camera\nA11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor\niOS 13 Compatible', 'Meet the iPhone X - the device that\'s so smart that it responds to a tap, your voice, and even a glance. Elegantly designed with a large 14.73 cm (5.8) Super Retina screen and a durable front-and-back glass, this smartphone is designed to impress. What\'s more, you can charge this iPhone wirelessly.', '2021-12-20 11:08:22', '2021-12-23 04:26:44'),
(4, 'APPLE iPhone 12 Mini (White, 256 GB)', 'apple-iphone-12-mini-white-256-gb', '5', '1640018434_1639986948_1638629666_1638374419_apple-iphone-12-dummyapplefsn-original-imafwg8dqq7z8cgh.jpeg', '/storage/products/1640018434_1639986948_1638629666_1638374419_apple-iphone-12-dummyapplefsn-original-imafwg8dqq7z8cgh.jpeg', 99999, 3, '256 GB ROM\n13.72 cm (5.4 inch) Super Retina XDR Display\n12MP + 12MP | 12MP Front Camera\nA14 Bionic Chip with Next Generation Neural Engine Processor\nCeramic Shield\nIndustry-leading IP68 Water Resistance\nAll Screen OLED Display\n12MP TrueDepth Front Camera with Night Mode, 4K Dolby Vision HDR Recording', 'Super Retina XDR Display, 5.4 inch (Diagonal) All Screen OLED Display, HDR Display, True Tone, Wide Colour (P3), Haptic Touch, 2000000:1 Contrast Ratio (Typical), 625 nits Max Brightness (Typical), 1200 nits Max Brightness (HDR), Fingerprint-resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously', '2021-12-20 11:10:34', '2021-12-23 04:29:17'),
(5, 'OPPO Reno6 Pro 5G (Aurora, 256 GB)  (12 GB RAM)', 'oppo-reno6-pro-5g-aurora-256-gb-12-gb-ram', '5', '1640018532_reno6-pro-5g-cph2249-oppo-original-imag4xpc6mc62mzq.jpeg', '/storage/products/1640018532_reno6-pro-5g-cph2249-oppo-original-imag4xpc6mc62mzq.jpeg', 39999, 9, '12 GB RAM | 256 GB ROM\n16.64 cm (6.55 inch) Full HD+ Display\n64MP + 8MP + 2MP + 2MP | 32MP Front Camera\n4500 mAh Lithium-ion Polymer Battery\nMediaTek Dimensity 1200 Processor\n65W SuperVOOC 2.0 Charging\n3D Borderless Screen\nBokeh Flare Portrait Video | AI Highlight Video | OPPO Reno Glow 2.0', 'The OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.', '2021-12-20 11:12:12', '2021-12-23 04:29:06'),
(6, 'vivo V21 5G (Sunset Dazzle, 128 GB)  (8 GB RAM)', 'vivo-v21-5g-sunset-dazzle-128-gb-8-gb-ram', '5', '1640018616_v21-5g-pd2083f-ex-vivo-original-imag2kzczrpgc6s3.jpeg', '/storage/products/1640018616_v21-5g-pd2083f-ex-vivo-original-imag2kzczrpgc6s3.jpeg', 39990, 20, '8 GB RAM | 128 GB ROM\n16.36 cm (6.44 inch) Full HD+ Display\n64MP + 8MP + 2MP | 44MP Front Camera\n4000 mAh Lithium-ion Battery\nMediaTek Dimensity 800U Processor\nAMOLED Display', 'If you are looking for a smartphone to capture every precious moment of your life in all its glory, then the Vivo V21 5G is the device that you can check out. This smartphone features a 44 MP OIS Night Selfie camera for bright and clear selfies in the dark, a 64 MP OIS Night Camera to capture detailed photos, and it runs on a MediaTek Dimensity 800U 5G-enabled Processor for fast and smooth performance.', '2021-12-20 11:13:36', '2021-12-23 04:28:40'),
(7, 'Men Slim Fit Checkered Casual Shirt', 'men-slim-fit-checkered-casual-shirt', '7', '1640018946_m-sffsh132-single-original-imag8nd7cdn2radg.jpeg', '/storage/products/1640018946_m-sffsh132-single-original-imag8nd7cdn2radg.jpeg', 449, 30, 'Color: Grey\nFabric Care: Do not bleach, Do not dry clean, Do not tumble dry, Gentle Machine Wash', 'Pack of\n1\nStyle Code\nSFFSH132\nFit\nSlim\nFabric\nCotton Blend\nSleeve\nFull Sleeve\nPattern\nCheckered\nReversible\nNo\nColor\nGrey\nFabric Care\nDo not bleach, Do not dry clean, Do not tumble dry, Gentle Machine Wash\nSuitable For\nWestern Wear', '2021-12-20 11:19:06', '2021-12-23 04:28:11'),
(8, 'Men Regular Fit Solid Casual Shirt', 'men-regular-fit-solid-casual-shirt', '7', '1640019064_s.jpeg', '/storage/products/1640019064_s.jpeg', 399, 5, 'Specification\nFits:Regular|Size:XL\nSeller\nCR-CREATION 3.5', 'Pack of\n1\nStyle Code\nCRC-DEN-01\nClosure\nButton\nFit\nRegular\nFabric\nDenim\nSleeve\nFull Sleeve\nPattern\nSolid\nReversible\nNo\nColor\nGrey\nFabric Care\nMachine wash as per tag\nSuitable For\nWestern Wear\nThis shirt is made from premium quality material. Durable quality with a stylish look makes it a must have on your shelves.', '2021-12-20 11:21:04', '2021-12-23 04:27:49'),
(9, 'Men Slim Fit Solid Slim Collar Casual Shirt', 'men-slim-fit-solid-slim-collar-casual-shirt', '7', '1640019183_b.jpeg', '/storage/products/1640019183_b.jpeg', 699, 10, 'Color\nBlue\nFabric Care\nSlight color may bleed in all washes\nSuitable For\nWestern Wear', 'Pack of\n1\nStyle Code\nC503_OMBRE\nClosure\nButton\nFit\nSlim\nFabric\nDenim\nSleeve\nFull Sleeve\nPattern\nSolid\nReversible\nNo\nCollar\nSlim\nColor\nBlue\nFabric Care\nSlight color may bleed in all washes\nSuitable For\nWestern Wear\nHem\nCurved', '2021-12-20 11:23:04', '2021-12-23 04:27:38'),
(10, 'Men Regular Fit Washed Cut Away Collar Casual Shirt', 'men-regular-fit-washed-cut-away-collar-casual-shirt', '7', '1640019272_v.jpeg', '/storage/products/1640019272_v.jpeg', 599, 20, 'Color\nLight Blue\nFabric Care\nGentle Machine Wash\nSuitable For\nWestern Wear', 'Mens printed shirt from BRAND Sodeim Culture is made with care and thought. Simple spread collar and softness felt in the fabric which makes the shirt very easy and comfortable to wear casually. From the newest designs and trendiest styles for men at we are making fashionable clothing affordable. Shirts feels soft and light on the body. Pairing with the right coloured denim we can imagine the outfit being best suited for dining parties and night outs. Machine-wash', '2021-12-20 11:24:33', '2021-12-23 04:27:28'),
(11, '411 Casual Sneakers For Men  (Black)', '', '6', '1640019391_10-num411-10-numenzo-black-original-imag3mzf6bzhddmx.jpeg', '/storage/products/1640019391_10-num411-10-numenzo-black-original-imag3mzf6bzhddmx.jpeg', 499, 30, 'Color\nBlack\nInner material\nMesh\nOuter material\nDenim', 'Numenzo shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes. They are exclusively designed to match the latest trends of the new generation. This pair of shoes is sure to make you look smart & classy. These will go with most of your casual outfits. This product is made of premium quality and highly material. The perfect combo of good looks & comfort.', '2021-12-20 11:26:31', '2021-12-20 11:26:31'),
(12, 'Shark-41 Sneakers For Men  (White)', '411-casual-sneakers-for-men-black', '6', '1640019453_f.jpeg', '/storage/products/1640019453_f.jpeg', 449, 20, 'Color\nWhite\nOuter material\nSynthetic Leather', 'Color\nWhite\nOuter material\nSynthetic Leather\nModel name\nShark-41\nIdeal for\nMen\nOccasion\nCasual\nSole material\nAirmix', '2021-12-20 11:27:33', '2021-12-23 04:27:17'),
(13, 'Sneakers For Men  (White)', 'sneakers-for-men-white', '6', '1640019543_sh.jpeg', '/storage/products/1640019543_sh.jpeg', 449, 10, 'Color\nWhite\nInner material\nSheep Napa\nOuter material\nPU\nIdeal for\nMen', 'Care Instructions :- Clean your shoes with Synthetic cleaner or shampoo, and use a Fine brush to remove loose surface dirt; if your shoes are wet after cleaning, let them air-dry before your proceed with the next step; dry shoes in room temperature only and never expose them to the sun, heat from the sun will cause the leather to shrink, wrinkle, harden, dry, and crackCare Instructions :- Clean your shoes with Synthetic cleaner or shampoo, and use a Fine brush to remove loose surface dirt; if your shoes are wet after cleaning, let them air-dry before your proceed with the next step; dry shoes in room temperature only and never expose them to the sun, heat from the sun will cause the leather to shrink, wrinkle, harden, dry, and crack', '2021-12-20 11:29:04', '2021-12-23 04:27:01'),
(14, 'Casual Sneakers Black Shoes For Men Sneakers For Men  (Black)', 'casual-sneakers-black-shoes-for-men-sneakers-for-men', '6', '1640019605_a.jpeg', '/storage/products/1640019605_a.jpeg', 451, 10, 'Color\nBlack\nInner material\nCanvas\nOuter material\nPU\nModel name\nCasual Sneakers Black Shoes For Men', 'Robbie Jones Shoes Are Designed To Keeping In Mind Durability As Well As Trends, The Most Stylish Range Of Shoes. They Are Exclusively Designed To Match The Latest Trends Of The New Generation. This Pair Of Shoes Is Sure To Make You Look Smart & Classy. These Will Go With Most Of Your Casual Outfits. This Product Is Made Of Premium Quality And Highly Material. Wearing This Prime Quality Amazing And Cozy Shoe With The Combination Of Jean And T-Shirt. It Presents Standard Look To Your Personality. We Are Always Providing Latest Fashion Shoes For Men\'s Casual Shoes For Men.', '2021-12-20 11:30:05', '2021-12-23 04:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Mobile', '/storage/productscategory/1640017931_smm.jpg', '2021-12-20 11:02:11', '2021-12-20 11:02:11'),
(6, 'Shoes', '/storage/productscategory/1640018723_10-num411-10-numenzo-black-original-imag3mzf6bzhddmx.jpeg', '2021-12-20 11:15:25', '2021-12-20 11:15:25'),
(7, 'Shirts', '/storage/productscategory/1640018836_m-sffsh132-single-original-imag8nd7cdn2radg.jpeg', '2021-12-20 11:17:16', '2021-12-20 11:17:16'),
(8, 'Electronics', '/storage/productscategory/1640152423_electronics.jpg', '2021-12-22 00:23:43', '2021-12-22 00:23:43'),
(10, 'Home Appliances', '/storage/productscategory/1640152495_home-appliances.jpg', '2021-12-22 00:24:55', '2021-12-22 00:24:55'),
(11, 'Beauty and toys', '/storage/productscategory/1640152520_beauty-toys.jpg', '2021-12-22 00:25:20', '2021-12-22 00:25:20'),
(12, 'Home care', '/storage/productscategory/1640152543_homecare.jpg', '2021-12-22 00:25:43', '2021-12-22 00:25:43'),
(13, 'Furniture', '/storage/productscategory/1640152581_furniture.jpg', '2021-12-22 00:26:21', '2021-12-22 00:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohit', 'admin', 'mohiit77u@gmail.com', NULL, '$2y$10$RKo1eZjqu6OpqQkpeoPbuOosiYrSkk0rZlmhAh5QBRT5kHHoE/./e', NULL, '2021-12-06 11:00:52', '2021-12-06 11:00:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobs_title_unique` (`title`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
