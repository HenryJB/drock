-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2018 at 06:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delyork`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `body`, `photo`, `date`) VALUES
(4, '<div class="blackColor">Who We\n								<span class="redColor" style="background-color:transparent !important; display:inline!important; padding:0px !important">Are</span>\n							</div>', '<p class="innersmall">Del-York is a full service marketing communications firm, capable of delivering integrated communication projects suited to meet client&rsquo;s needs. We believe the working relationship and communication between a brand and its consumers should consistently be engaging, consumers only react to conversations that get their interests. Our creative excellence and strategy, combined with our experience working with several top brands over the years, have the power to change the course of companies and brands alike. At the very core, that&rsquo;s who we are, but the people on the other side of these pages are more than that, we are thorough professionals made for one purpose only, to conquer the norm, and facilitate truly epoch making executions for brands and businesses</p>', 'about.png', '2018-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `post` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `author` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `post`, `photo`, `author`, `date`) VALUES
(1, 'FRESH SUMMER CAMPAIGN', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Vivamus sagittis lacus vel augue</p>', 'b1.jpg', 'Del-York', '2018-04-24'),
(2, 'FRESH SUMMER CAMPAIGN', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Vivamus sagittis lacus vel augue</p>', 'b2.jpg', 'Del-York', '2018-04-24'),
(3, 'FRESH SUMMER CAMPAIGN', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Vivamus sagittis lacus vel augue</p>', 'b3.jpg', 'Del-York', '2018-04-24'),
(4, 'FRESH SUMMER CAMPAIGN', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Vivamus sagittis lacus vel augue</p>', 'content.jpg', 'Del-York', '2018-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `description`, `logo`, `date`) VALUES
(1, 'GAC Motor', '<p>GAC motors</p>', 'gacmotor_color.png', '2018-04-25'),
(2, 'GREE', '<p>GREE</p>', 'gree_color.png', '2018-04-25'),
(3, 'LONTOR', '<p>LONTOR</p>', 'lontor_color.png', '2018-04-25'),
(4, 'DSTV', '<p>DSTV</p>', 'dstv_color.png', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `message` text NOT NULL,
  `status` enum('New','Replied','','') NOT NULL DEFAULT 'New',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1523418271),
('m130524_201442_init', 1523418276);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `client_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `websiteurl` varchar(255) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `subtitle`, `description`, `client_id`, `year`, `websiteurl`, `date`) VALUES
(1, 'Gree Branding', 'Product Rebranding', '<p>Gree Air condiontioners</p>', 2, 2017, 'www.gree.com.ng', '2018-04-25'),
(2, 'GAC Motor', 'Product branding', '<p>Product branding</p>', 1, 2017, 'www.gacmotor.com.ng', '2018-04-25'),
(3, 'Lontor', 'Lontor products Branding', '<p>Lontor products Branding</p>', 3, 2017, 'www.lontorpay.com.ng', '2018-04-25'),
(4, 'DSTV', 'DCA Campaign', '<p>DCA Campaign</p>', 4, 2014, 'www.dstv.com', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `photos`, `date`) VALUES
(1, 1, 'gac_v1.jpg', '2018-04-25'),
(2, 1, 'gac_v3.jpg', '2018-04-25'),
(3, 1, 'gac_v4.jpg', '2018-04-25'),
(4, 1, 'gac_v5.jpg', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `content`, `photo`, `date`) VALUES
(1, 'DIGITAL', '<p>Our teams of digital designers are well known for attention to detail and out-of-the-box thinking. Their creativity is matched<br />with long-term experience in using an array of digital design softwares that enables them interpret your brief<br />and bring them to life through stunning visual solutions.<br />&lt;ul&gt;<br />&lt;li&gt; 4a. Marketing: We create and monitor social media accounts professionally, infusing content creation with timely<br />posts, and participating in pop culture, developing social media campaigns that engage users and drives sales.<br />&lt;/li&gt;<br />&lt;li&gt;4b. Web app development: We design websites and apps that are consistent with your brand identity and deliver<br />an unforgettable consumer experience.&lt;/li&gt;<br />&lt;/ul&gt;</p>', NULL, '2018-04-23'),
(3, 'MEDIA/MARKETING', '<p>From concept development to design and execution, Del &ndash; York Media creates stunning marketing media, to guarantee that you<br />make the best first impression. Our team comprises of a group of talented, innovative and analytical minds; schooled<br />in the art of interpreting creative briefs for national and international TV formats, documentaries and print.<br />&lt;ul&gt;<br />&lt;li&gt;<br />1a. New product development: NPD requires an understanding of customer needs and wants, the competitive environment, and<br />the nature of the market. At Del &ndash; York Media, we monitor cost, time and quality; which are the main variables<br />that drive customer needs. Aiming at these three variables, we develop continuous practices and strategies to<br />better satisfy customer requirements and to increase your own market share by a regular development of new products.<br />&lt;/li&gt;<br />&lt;li&gt;<br />1b. Content Creation: Del &ndash; York Media creates content for print, audio, video and any other media for distribution, marketing<br />and/or publication. Typical forms of content creation for digital include maintaining and updating websites,<br />blogging, videography, and online commentary, the maintenance of social media accounts, and editing and distribution<br />of digital media.<br />&lt;/li&gt;<br />&lt;li&gt;<br />1c. Media buying and planning: We purchase and make placement of media content on both international and local platforms<br />including video, audio, and print media. We have built strong relationships with major broadcast houses across<br />Europe, Middle East, Asia, Africa and the United States; we have helped maximize the visibility of our clients<br />on platforms like CNN, BBC, CCTV, Bloomberg, CNBC and Aljazeera.<br />&lt;/li&gt;<br />&lt;/ul&gt;</p>', NULL, '2018-04-23'),
(4, 'PUBLIC RELATIONS', '<p>Del &ndash; York Media develops a strategic communication process that builds mutually beneficial relationships between organizations<br />and their publics.<br />&lt;ul&gt;<br />&lt;li&gt;2a. Corporate Social Responsibility: Del &ndash; York media works with your organization to develop CSR campaigns that<br />further some social good. From conceptualization to execution, we guarantee great campaigns to give your organization<br />relevant social recognition. &lt;/li&gt;<br />&lt;li&gt;<br />2b. Activations / Experiential Campaigns: Del &ndash; York media works with your organization to design product activations, launches<br />and experiential campaigns to boost awareness to your brand. We provide excellent support from conceptualization<br />to execution.</p>\r\n<p>&lt;/li&gt;<br />&lt;li&gt;<br />2c. Special Projects: Del &ndash; York media works with your organization to ensure seamless media support for special projects<br />like annual sports events, fashion and more. We ensure world class production of your special projects.<br />&lt;/li&gt;<br />&lt;li&gt;<br />2d. Events Management: Del &ndash; York media provides events management services, for corporate events. From venue sourcing, to<br />decoration, catering and of course, media deployment.<br />&lt;/li&gt;<br />&lt;/ul&gt;</p>', NULL, '2018-04-23'),
(5, 'STUDIOS', '<p>We have a world class pre-production and post-production studio facility in Lagos, Nigeria committed to the creation of award<br />winning film projects.<br />&lt;ul&gt;<br />&lt;li&gt;<br />3a. Film Production: Television commercials, documentaries and much more. We have a highly skilled team of producers, animators,<br />scriptwriters and graphic artists, who can together produce some of the smartest campaigns for corporates in<br />both private and public sectors.<br />&lt;/li&gt;<br />&lt;li&gt;3b. Animation: With state of the art technology, we create animation for commercials, informative and educative<br />stories&lt;/li&gt;<br />&lt;/ul&gt;</p>', NULL, '2018-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'LBxiT7QpBTNuOOC1Nqi3H4BcsW3ZKLFJ', '$2y$13$t6J.AsA/YEdhLnwVDfbdZ.6.OCJb5UTa.Ih15SgwDbqIzvl3HsbXO', NULL, 'admin@delyork.com', 10, 1523418682, 1523418682);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PorfolioClient` (`client_id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PortfolioImage` (`portfolio_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `FK_PorfolioClient` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD CONSTRAINT `FK_PortfolioImage` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
