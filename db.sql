-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2017 at 11:50 AM
-- Server version: 5.6.35-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

USE test;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yossil5_lemon_place`
--

-- --------------------------------------------------------

--
-- Table structure for table `designers`
--

CREATE TABLE `designers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_hover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `tags` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `url`, `description`, `tags`) VALUES
(64, 'The Mystical Psychology Series', '', 'Part one of a psychology series, offering help for anxiety and depression. Title, image and body copy are arranged neatly on the page to produce clear communication.', 'poster'),
(66, 'Teela', '', 'Teela New York offers trendy, affordable and tznius pencil skirts for young girls. The pastel color scheme offers distinctive and appropriate style, while the butterfly and emerging heart communicate the companyâ€™s specific demographic. All in all, a fantastic use of color and shape combine for a wonderfully memorable logo identity.', 'kids'),
(67, 'Womens trip to the Ohel', '', 'A web banner promoting a special trip to the Ohel. Gold type against black and white imagery whispers holiness and royalty.', 'banner'),
(69, 'jWest', '', 'A clean logo for a Lubavitch organisation in Westwood,CA. It combines a wordmark and an icon to give the flexibility for the use of either or both elements across a variety of applications.', ''),
(70, 'Torah & Tea', '', 'Torah & Tea weekly womanâ€™s class. The banner combines subtle graphic with fine type and color to express knowledge and quiet placidity. The soft floral overlay accentuates a feminine tone.', 'banner'),
(71, 'Zakons', '', 'A colorful text based logo for a local toys and stationery store. The toy train and pencil clip art compliment the text and exhibit the products and services which the company offers.', 'kingston'),
(74, 'Torah Dedication', '', 'A Torah dedication ceremony promotion with rich warmth, and clean expression.', 'tora'),
(75, 'Beth Menachem', '', 'A fantastic logo identity for Chabad Of Newton, based on the iconic Aron Kodesh in the Synagogue. It is distinctive in shape and color, yet adaptable with numerous colors and backgrounds.', ''),
(78, 'An Evening of Inspiration and Joy', '', 'A special musical event for women, featuring original music interspersed with inspirational talks and the moving drama of one womanâ€™s return to her roots. This ad glows with warm tones and a pleasant sentiment.', 'poster'),
(79, 'Celebrate Passover', '', 'A holiday banner with a traditional feel invites you to rejoice with authentic foods and celebration.', 'banner pesach'),
(80, 'Cafe Chabad', '', 'A superb web banner for a weekly learning group at Chabad of Stamford.', 'banner'),
(81, 'Speed Dating', '', 'An evening with JPI featuring premium chocolates, a full open bar and speed dating for those who just canâ€™t help it. The ad is youthful, chic and attractive.', 'poster'),
(83, 'Am I Obsessive Compulsive or an Addict?', '', 'An intriguing banner with a great catch phrase. Interaction between image and copy help to tell a story, while choice of font and color create a distinctive composition.', 'banner'),
(84, 'Ahron Frank', '', 'A type based logo, utilizing the artistâ€™s name to create a compelling identity.\r\n', 'music band'),
(85, 'JPI Business Card', '', 'JPI is a Manhattan based organization, with an aim for cultivating productive business relationships amongst young israeli professionals through social events, Shabbat meals and holiday parties. The organization takes on a new identity with this professional and ultra sleek branding package.', ''),
(87, 'Machon Stam', '', 'Although from a design perspective, the Sofer industry might seem like a difficult one to represent in a compelling manner, we nonetheless ventured to create something that would stand out in a sea of identities. We achieved a look which is different and engaging yet retains the conservativeness one would expect to see.', 'scribe'),
(88, 'Whats love got to do with it?', '', 'An alluring poster design with neat arrangement. The titleâ€™s synergy between image component, typography and color, combine to convey intense passion.', 'poster'),
(89, 'Dont Wait for the Beep', '', 'A dynamic logo with bodacious shape and color. Sure to stand out amid a sea of identities.', ''),
(91, 'Rabbi 4 me', '', 'An extremely engaging logo with harmonious colors. Although sometimes viewed as generic, the open book shape takes on a new form to make it distinctive, novel and pleasing.', ''),
(92, 'iVolunteer', '', 'iVolunteer is a wonderful organization where young men and women take time to care for elderly holocaust survivors. Our client needed a symbol of recognition that carried within it a very deep message. We created a striking emblem which portrays love, compassion, unity and togetherness, along with a strong Jewish identity.', ''),
(93, 'Shalom Zachor', '', 'The Shalom Zachor Express is a catering company with an aim for client convenience, elegance and reliability. To communicate their contribution and distinction, we created this engaging ad that portrays the settling calm and grace which the company offers. The regal purple and gold accents express the majesty of the birth of a child.\r\n', 'poster'),
(94, '50 Pathways towards parenting wisdom', '', 'A little book with an enlightening collection of practical ideas for good parenting. Here we create a bright cover that radiates wisdom and enchanting serenity.', 'book'),
(95, 'Dont mess with MY FAMILY!', '', 'Don\'t Mess With My Family was a one time event where a ton of artists got together to perform in response to a horrific tragedy in Israel. This ad is forceful and impassioned, with a blunt message.', 'poster'),
(96, 'a Moment of Silence', '', 'A great, relevant logo with simple typography that literally spells out what organization is about.', ''),
(97, 'Shabbat of Thanks & Recognition', '', 'A wonderful poster promoting a wonderful event. Shabbat of Thanks and Recognition saluting wounded Israeli soldiers and honoring victims of terror. The posterâ€™s powerful imagery and light warmth evokes a pensive sensation.', 'shabbos poster'),
(98, 'High Holidays', '', 'A classy web banner using great graphic and solid typography to capture the spirit of the holiday.', 'rosh hashanah banner'),
(99, 'Oselot', '', 'A great identity using the clients obsession with the ocelot wild cat. Bold in color and intentionally misspelled, it makes for a striking trademark with a crisp, contemporary look.', ''),
(100, 'Purim Feast 2013', '', 'A Purim Party ad which catches the eye and portrays a joyous festival in a clean professional manner.', 'poster'),
(102, 'Chabad Niagara', '', 'A clever combination of theme and element. We fused a Niagara Falls feel with the iconic Chabad menorah to create this crisp, professional branding package.', 'canada'),
(109, 'GoRentNY Business Card', '', 'A text-based logo with a clean and super simple look. It is most identifiable by its colors and font. ', ''),
(112, 'CH Shabbaton', '', 'An extreme makeover gives this organizationâ€™s website a sophisticated foundation with smooth navigation and a super friendly user interface.', ''),
(113, 'Rubashkins', '', 'Bold and memorable, blatant and simple, this logo is the epitome of successful branding.', 'meat'),
(114, 'Mivtzah Torah', '', 'An organization uniting yeshivas through an annual Mivtza Torah. The website features an extremely user-friendly interface with clean, comprehensive substance.', ''),
(115, 'The Friendship Scoop', '', 'A visually striking web banner for Friendship Circle of Baltimore. The black & white image creates a soulful and sincere element, while the typography and color choices emphasize youth and exuberance.', 'banner'),
(116, 'Dancing with the Torah', '', 'A marvelous recreation of Dancing with the Stars, this lively Simchas Torah poster causes a double take reaction in the viewer, with delightful comprehension.', 'sukkos poster'),
(117, 'Geulah - What we await', '', 'Great design and solid typography make for a handsome cover design for this book about the times of Moshiach, by Rabbi Gershon Avtzon.', 'book'),
(118, 'Mi Kamocha', '', 'This logo fuses fine typography with abstract shape to produce a classy identity for a kosher dairy cafe.', 'coffe cup cups'),
(119, 'Abrams', '', 'A mergers and acquisitions company with the need to convey professionalism and dependability. Here we create a corporate branding scheme distinctive in color and shape.', ''),
(122, 'Cardone Oyster Bay', '', 'A mesmerizing poster promoting the main event of the Chanukah extravaganza at Town of Oyster Bay Chabad.', 'hanukkah poster'),
(123, 'Chabad of your Town', '', 'A vibrant logo identity with a modern feel. The flame shape is warm, alive and inviting.', ''),
(124, 'G&B Orchestra', '', 'A slick application of the treble clef transforms the company name into a dashing image with subtle flare.', ''),
(125, 'Brunch & Boutiques', '', 'A neat banner uses vivid color and strong type to create an appealing message.', 'banner'),
(126, 'Strategic Initiative Fundraising', '', 'Mark Wilensky, President of High Mark Systems, is a sales development expert with 30 years of experience growing people, sales and companies. Hereâ€™s the poster promoting his program for Chabad on Campus International.', 'poster'),
(127, 'Chabad of Greenville & Upstate', '', 'A clever logo with abundant meaning. Are the parents leading the child or vise versa? Perhaps they are all walking as one. The green and blue are appropriate color for the Upstate South Carolina territory, and the universal shape reflects symmetry and unity amongst Jews and the Torah.', ''),
(128, 'Mitzvos in the time of Moshiach', '', 'Another cover for a book by Rabbi Gershon Avtzon. Beautiful typography with warm tones, atop a golden image create a very appealing display.', 'pamphlet book'),
(129, 'Hip Hop Hanukkah', '', 'Hip Hop Hanukkah with Nosson Zand. This ad features a grunge look in an urban setting. It retains legibility throughout and flawlessly communicates its message to the viewer.', 'music singer poster'),
(130, 'Chabad of Maine', '', 'A logo is all about identity.The iconic Lighthouse is a sure reference point for the state of Maine. In addition, the lighthouse is a figurative expression of Chabad ideology, a beacon of light which serves as a navigation aid to souls lost at sea.', ''),
(131, 'Focus Made Easy', '', 'An attractive website is essential for good business. Since creating their dazzling website, our clientâ€™s educational and mental health company has grown beyond recognition.', ''),
(133, 'Mini Chefs', '', 'Our client was looking for something cute with a slightly fresh, modernistic vibe. With soft color, clean typography and an adorable image, we created a charming poster that goes above and beyond all expectations.', 'hanukkah poster'),
(134, 'GoRentNY Website', '', 'Our client needed a site that would immediately appeal to the user in a way unlike any other. We created a bold, neat interface that is so user-friendly, even a child could do it.', 'rent ny'),
(135, 'Light Up Fountain Square', '', 'One of our most popular Chanukah posters. With great color and an awesome integration between image components and type, itâ€™s really no wonder why it was an absolute â€œyesâ€ from our clients.', 'hanukkah poster'),
(137, 'Otzar Hachasidus', '', 'Otzarhachasidus.com is an online audio library, where one can hear hours of chasidus from a multitude of sources with a simple click of a button. As with any online site, a number one priority is always user-friendliness. Colors and image placement were key factors to creating this crisp and friendly site.', ''),
(138, 'Aleph Beis Pre School', '', 'Children are lively and always growing. The tree portrays nurtured growth, the vibrant colors express energetic youth and the crayon marks just scream â€œpreschoolâ€. All these elements come together to make this logo distinctive and memorable.', ''),
(140, 'Yaldei Hashluchim', '', '', ''),
(141, 'Jcraft Purim Puppet Theatre', '', '', ''),
(142, 'Purim in the Wild West', '', '', ''),
(143, 'Private and Exclusive Dinner ', '', '', ''),
(144, 'Holesome Bagels Menu', '', '', ''),
(145, 'Leovdicha Bemes', '', 'Branding for an organization with the mission to spread Chassidus to all people in all places.', ''),
(146, 'Project Ignite', '', 'A special initiative with an emphasis on empowering local community members to become leaders and lamplighters in their own right. ', 'merkos'),
(148, 'Chabad of Newton Gala Dinner', '', '', ''),
(149, 'Purim Acrobat', '', '', ''),
(152, 'Mishloach Manos from Lemon Place', 'LemonPlace.com', 'Purim 5775', NULL),
(153, 'Chicago Mitzvah Campaign', '', 'Chicago Mitzvah Campaign commissioned us to design this poster for their upcoming Women\'s Cancer event.\r\n', NULL),
(154, 'Shabbat with Brooke Goldstein', '', '', NULL),
(155, 'Canvas', '', '', NULL),
(156, 'Night of Light', 'youtu.be/HQHFwgnnGBE', '', NULL),
(157, 'FreedoMan', '', '', NULL),
(159, 'ZÃ¼m Cleaners', '', '', NULL),
(161, 'Taglit App', '', 'Taglit commissioned us to mockup a design direction for their upcoming app.', NULL),
(162, 'Elite Sterling', '', '', NULL),
(163, 'GoldmanPM', '', '', NULL),
(164, 'Uri Chizkiya', '', '', NULL),
(165, 'Its All A Gift', '', 'A beautiful poster promoting Chabad Israel Centerâ€™s Annual Gala Dinner. The viewerâ€™s eyes are drawn to the center point, digesting the titled event and retaining the necessary information portrayed in simplistic elegance.', NULL),
(167, 'Its good to know', '', 'Itâ€™s Good To Know is a life-learning foundation, which focuses on the practical application of Torah lessons in your life. With the aspiration of becoming the face of Jewish know-how, or the About.com of Judaism, our client needed a branding package which looked professional and expressed knowledge with simplistic application. We delivered.', NULL),
(168, 'Cloud 9', 'flycloudnine.com', '', NULL),
(169, 'High Holidays', '', '', NULL),
(170, 'C Central', 'cursorblue.com/sites/ccentral/', '', NULL),
(171, 'Impact', '', '', NULL),
(172, 'The View', '', '', NULL),
(173, '10 Year Celebration & Torah Dedication', '', '', NULL),
(174, 'Harbor Mobile', '', '', NULL),
(175, 'Sparkliday', '', '', NULL),
(176, 'AMK Productions', 'youtube.com/kalmy16', 'Logo design and intro animation for youtube comedian Meir Kalmenson.', NULL),
(178, 'Chabad Frisco', '', '', NULL),
(179, 'JMN', '', 'Jewish Media Network', NULL),
(180, 'I\'m a Jew t-shirt', '', '', NULL),
(181, 'Corks & Forks II', '', '', NULL),
(182, 'Million for Beth Rivkah', '', 'Charidy Campaign', NULL),
(183, 'Boston Unity Concert', '', 'Avraham Fried Concert Flyer for Chabad of Newtown', NULL),
(184, 'Leadership Summit', '', '', NULL),
(185, 'Million Dollar Ideas', 'milliondollarideas.info', '', NULL),
(186, 'Shin Bet', '', '', NULL),
(188, 'Syrian Art Event', '', '\"The Lost Art of Damascus\" Exhibition in the Jewish Children\'s Museum', NULL),
(190, 'Chabad Jewish Center', '', '', NULL),
(191, 'Chabad Air', '', '', NULL),
(192, 'Fixd', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `portfolio_id`, `category`) VALUES
(64, 64, 'Ads'),
(65, 64, 'Prints'),
(67, 66, 'Branding'),
(68, 67, 'Ads'),
(70, 69, 'Branding'),
(71, 70, 'Ads'),
(72, 71, 'Branding'),
(76, 74, 'Ads'),
(77, 74, 'Prints'),
(78, 75, 'Branding'),
(82, 78, 'Ads'),
(83, 78, 'Prints'),
(84, 79, 'Ads'),
(85, 79, 'Holidays'),
(86, 80, 'Ads'),
(87, 81, 'Ads'),
(88, 81, 'Prints'),
(91, 83, 'Ads'),
(92, 84, 'Branding'),
(93, 85, 'Branding'),
(96, 87, 'Branding'),
(97, 88, 'Ads'),
(98, 88, 'Prints'),
(99, 89, 'Branding'),
(102, 91, 'Branding'),
(103, 92, 'Branding'),
(104, 93, 'Ads'),
(105, 93, 'Prints'),
(106, 94, 'Prints'),
(107, 95, 'Ads'),
(108, 95, 'Prints'),
(109, 96, 'Branding'),
(110, 97, 'Ads'),
(111, 97, 'Prints'),
(112, 98, 'Ads'),
(113, 98, 'Holidays'),
(114, 99, 'Branding'),
(115, 100, 'Ads'),
(116, 100, 'Holidays'),
(117, 100, 'Prints'),
(119, 102, 'Branding'),
(129, 109, 'Branding'),
(132, 112, 'Websites'),
(133, 113, 'Branding'),
(134, 114, 'Websites'),
(135, 115, 'Ads'),
(136, 116, 'Ads'),
(137, 116, 'Holidays'),
(138, 116, 'Prints'),
(139, 117, 'Prints'),
(140, 118, 'Branding'),
(141, 118, 'Prints'),
(142, 119, 'Branding'),
(146, 122, 'Ads'),
(147, 122, 'Holidays'),
(148, 122, 'Prints'),
(149, 123, 'Branding'),
(150, 124, 'Branding'),
(151, 125, 'Ads'),
(152, 126, 'Ads'),
(153, 126, 'Prints'),
(154, 127, 'Branding'),
(155, 128, 'Prints'),
(159, 130, 'Branding'),
(160, 131, 'Websites'),
(163, 133, 'Ads'),
(164, 133, 'Holidays'),
(165, 133, 'Prints'),
(166, 134, 'Websites'),
(172, 137, 'Websites'),
(173, 138, 'Branding'),
(175, 140, 'Prints'),
(176, 141, 'Ads'),
(177, 141, 'Holidays'),
(178, 142, 'Ads'),
(179, 142, 'Holidays'),
(180, 143, 'Ads'),
(181, 143, 'Prints'),
(182, 144, 'Prints'),
(184, 146, 'Branding'),
(195, 149, 'Ads'),
(196, 149, 'Holidays'),
(197, 149, 'Prints'),
(202, 129, 'Ads'),
(203, 129, 'Holidays'),
(204, 129, 'Prints'),
(219, 157, 'Ads'),
(220, 157, 'Holidays'),
(221, 157, 'Prints'),
(225, 154, 'Prints'),
(226, 159, 'Branding'),
(227, 159, 'Websites'),
(244, 148, 'Ads'),
(245, 148, 'Prints'),
(253, 162, 'Ads'),
(254, 162, 'Prints'),
(256, 163, 'Branding'),
(264, 164, 'Ads'),
(265, 164, 'Holidays'),
(266, 164, 'Prints'),
(277, 161, 'Branding'),
(278, 161, 'Websites'),
(284, 167, 'Branding'),
(290, 168, 'Websites'),
(291, 165, 'Branding'),
(292, 165, 'Prints'),
(293, 153, 'Ads'),
(294, 153, 'Prints'),
(301, 169, 'Ads'),
(302, 169, 'Prints'),
(310, 174, 'Websites'),
(314, 170, 'Websites'),
(315, 171, 'Branding'),
(316, 145, 'Branding'),
(319, 175, 'Branding'),
(320, 155, 'Branding'),
(325, 176, 'Branding'),
(327, 178, 'Branding'),
(328, 179, 'Branding'),
(330, 180, 'Prints'),
(331, 135, 'Ads'),
(332, 135, 'Holidays'),
(333, 135, 'Prints'),
(334, 156, 'Prints'),
(337, 182, 'Branding'),
(338, 182, 'Prints'),
(339, 181, 'Prints'),
(345, 183, 'Branding'),
(346, 183, 'Prints'),
(348, 184, 'Prints'),
(379, 188, 'Prints'),
(380, 185, 'Branding'),
(381, 185, 'Websites'),
(382, 185, 'Prints'),
(383, 186, 'Branding'),
(384, 186, 'Prints'),
(387, 192, 'Branding');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `project`, `image`, `caption`, `show`, `sort`) VALUES
(2, 64, '0089_The-Mystical.jpg', '', 1, 1),
(4, 66, '0086_Teela-Identity-Mockup.jpg', '', 1, 1),
(5, 67, '0085_Womans-Trip-to-the-O.jpg', '', 1, 1),
(6, 69, '0083_jWest.jpg', '', 1, 1),
(7, 70, '0082_Torah-and-Tea.jpg', '', 1, 1),
(8, 71, 'Zakons.jpg', '', 1, 1),
(11, 74, '0078_Torah-Detication.jpg', '', 1, 1),
(12, 75, '0077_Beth-Menachem-Identity-Mockup.jpg', '', 1, 1),
(14, 78, '0071_An-Evening-of-Inspiration-and-Joy.jpg', '', 1, 1),
(15, 79, '0070_Cellebrate-Paasover.jpg', '', 1, 1),
(16, 80, '0069_Cafe-Chabad.jpg', '', 1, 1),
(17, 81, '0068_Speed-Dating.jpg', '', 1, 1),
(18, 83, '0066_Am-I-Obsessive-Compulsive-or-an-Addict.jpg', '', 1, 1),
(19, 84, '0065_Aharon-Frank.jpg', '', 1, 1),
(20, 85, '0064_JPI.jpg', '', 1, 1),
(22, 87, '0062_Machon-Stam.jpg', '', 1, 1),
(23, 88, '0061_Whats-Love-Got-to-do-with-it.jpg', '', 1, 1),
(24, 89, '0060_Dont-Wait-for-the-Beep.jpg', '', 1, 1),
(26, 91, '0055_Rabbi-4-Me.jpg', '', 1, 1),
(27, 92, '0054_IVolunteer.jpg', '', 1, 1),
(28, 93, '0053_Sholom-Zochor.jpg', '', 1, 1),
(29, 94, '0052_Shira-Frank.jpg', '', 1, 1),
(30, 95, '0049_Dont-mess-with-my-Family.jpg', '', 1, 1),
(31, 96, '0048_a-Moment-of-Silence.jpg', '', 1, 1),
(32, 97, '0047_a-Shabbos-of-thanks.jpg', '', 1, 1),
(33, 98, '0045_High-Holidays.jpg', '', 1, 1),
(34, 99, '0044_Oselot.jpg', '', 1, 1),
(35, 100, '0043_Purim-Feast.jpg', '', 1, 1),
(36, 102, '0041_Chabad-Niagra.jpg', '', 1, 1),
(42, 109, '0034_GoRentNY.jpg', '', 1, 1),
(44, 112, '0031_Shabbaton-Website.jpg', '', 1, 1),
(45, 113, '0030_Rubashkins-Identity-Mockup.jpg', '', 1, 1),
(46, 114, '0028_Mivtzah-Torah.jpg', '', 1, 1),
(47, 115, '0027_the-Scoop.jpg', '', 1, 1),
(48, 116, '0026_Dancing-with-the-Torah.jpg', '', 1, 1),
(49, 117, '0025_Rabbi-Avtzon.jpg', '', 1, 1),
(50, 118, '0024_Mi-Kamocha-Coffee.jpg', '', 1, 1),
(51, 119, '0023_Abrams.jpg', '', 1, 1),
(53, 122, '0020_Cardone-Oyster-Bay.jpg', '', 1, 1),
(54, 123, '0018_Chabad-of-your-Town.jpg', '', 1, 1),
(55, 124, '0017_G-and-B-Orchestra.jpg', '', 1, 1),
(56, 125, '0016_Brunch--&-Boutiques.jpg', '', 1, 1),
(57, 126, '0015_Strategic-Initiative-Fundraising.jpg', '', 1, 1),
(58, 127, '0013_Chabad-Greenvel-&-Upstate.jpg', '', 1, 1),
(59, 128, '0012_Mitzvos-itto-Moshiach.jpg', '', 1, 1),
(61, 130, '0009_Chabad-Maine-stationary-mock-up.jpg', '', 1, 1),
(62, 131, '0007_Focus-Made-Easy.jpg', '', 1, 1),
(63, 133, '0006_Holiday-Mini-Chefs.jpg', '', 1, 1),
(64, 134, '0005_GoRentNY.jpg', '', 1, 1),
(67, 137, '0001_Otzar-Hachasidus.jpg', '', 1, 1),
(68, 138, '0021_Aleph-Beis-Pre-School.jpg', '', 1, 1),
(70, 140, 'Yaldei-Trifold.jpg', '', 1, 1),
(71, 141, 'Purim-Puppet-Theatre-Poster.jpg', '', 1, 1),
(72, 142, 'Purim-In-the-Wild-West-Poster.jpg', '', 1, 1),
(73, 143, 'Private-Dinner-Poster.jpg', '', 1, 1),
(74, 144, 'Holesome-Menu.jpg', '', 1, 1),
(76, 146, 'Branding-Identity-Mockup-Ignite.jpg', '', 1, 1),
(81, 149, 'Purim-Acrobat-Poster.jpg', '', 1, 1),
(82, 152, 'dbb4899fa770ce39fca4301f06610ab41435876038.jpg', '', 1, 1),
(83, 152, 'f5b06750a10821725947a89e16ee9a5f1435876093.jpg', '', 1, 2),
(84, 152, '760da83981548abf77b4d2662dcac0421435876114.jpg', '', 1, 3),
(87, 129, '0011_Hip-hop-Hanukah.jpg', '', 1, 1),
(88, 129, '200c43b87d28ab46c86d518db513ed0f1436725117.png', '', 1, 2),
(117, 157, 'f385f978b9e588635e3bbd91b726d8aa1436736049.jpg', '', 1, 1),
(118, 157, 'd1dc2ef15a313d2e1a4b10008a9d23c91436736778.jpg', '', 1, 2),
(119, 157, '8761e7f2cc75e0fa9b73ecf41ed183411436736778.jpg', '', 1, 3),
(120, 157, 'd4bd24c545087749ed536cc84ba2a24a1436736054.jpg', '', 1, 4),
(121, 157, '058345218c8e45633d2aa8a06fac31211436736194.jpg', '', 1, 5),
(137, 154, '45d9bec136190279f044106309327eb91436728365.jpg', '', 1, 1),
(138, 154, '2bf3cac76d704b9006a1006938e8e5ca1436750340.jpg', '', 1, 2),
(166, 159, 'd404984e47b76c454972b524c262b5121436816329.jpg', '', 0, 1),
(167, 159, '542f832d5336df76e3ecb66f9997052d1436820727.jpg', '', 1, 2),
(168, 159, '0f0766418ab5caf0481c091077d7a5f71436820727.jpg', '', 1, 3),
(169, 159, 'b6aef0b2d48b678dc98fc7baa59904e01436820727.jpg', '', 1, 4),
(170, 159, '9547a1cb1e3a0d3460bd9c85ea87641c1436820727.jpg', '', 1, 5),
(171, 159, '355aaec136c95d9ab33c5576253416631436820727.jpg', '', 1, 6),
(172, 159, '196d7d6588d0341277f7f7e3c4fd08571436820727.jpg', '', 1, 7),
(173, 159, '212cb956a2e1efc0c19dabdb7d838ccc1436820727.jpg', '', 1, 8),
(216, 148, 'Newton-Gala-Dinner.jpg', '', 1, 1),
(217, 148, 'fbc468408641b1920f8d49e9f561dff31436725224.jpg', '', 1, 2),
(218, 148, '1ff334e3b80ee418314bc45b40b904481436725224.jpg', '', 1, 3),
(219, 148, '018b9779dd4b88181db6d7b1727411391436827195.jpg', '', 1, 4),
(220, 148, '7f39aed91624144ca5c1d35d91bef2c01436827195.jpg', '', 1, 5),
(221, 148, 'd3a190766e7732388d5d0f6d76025fa11436827195.jpg', '', 1, 6),
(222, 148, '9e5af7255ea1a017cccc8c7955ee5dbf1436827195.jpg', '', 1, 7),
(240, 162, '87a833b312b01faac1afe61dc816ea0b1436824260.jpg', '', 0, 1),
(241, 162, '76a3ebf240299f0d41e10c2177cff2801436824260.jpg', '', 1, 2),
(242, 162, 'cd48abcc60d85de5ef28e1a4015b97211436824260.jpg', '', 1, 3),
(243, 162, '1c23f72967f42b0e549843d2bbda5c0e1436824260.jpg', '', 1, 4),
(249, 163, '95421a343488833caa345254746793961436826602.jpg', '', 0, 1),
(250, 163, 'c1bc339a5e671fab72ec468d489147f61436826602.jpg', '', 1, 2),
(251, 163, '16964a17e91ee7368f93f989a50e60921436828379.jpg', '', 1, 3),
(252, 163, 'd30e9a9d14152b8e8fc78dc71db776051436826602.jpg', '', 1, 4),
(253, 163, '36976ab606dd4348b7b227c105d04dee1436826602.jpg', '', 1, 5),
(261, 164, 'f6a4d30963a588a7fa0d79880fdf95611436829800.jpg', '', 1, 1),
(262, 164, '77eb3791f137e211801e05d9c0b8f9961436829650.jpg', '', 1, 2),
(282, 161, '5f39dc8410a938d13c5aa9b3c5e669101436821126.jpg', '', 0, 1),
(283, 161, '17b7588086368421292310b54b2345ed1436821126.jpg', '', 1, 2),
(284, 161, '06ff403f0d639c093657d01bebf950e41436821125.jpg', '', 1, 3),
(285, 161, '3281810c735762eead47096eb8c9ac6a1436821126.jpg', '', 1, 4),
(292, 167, 'd7580fe7fd063be5ed209f42356aa8f31436908454.png', '', 0, 1),
(293, 167, '0036_Manis-Identity-Mockup2.jpg', '', 1, 2),
(294, 167, '1de35e118ecdd5cd77c7fb0a344ea24a1436908509.png', '', 1, 3),
(295, 167, '054007b53fc38fe75c305d1f96c02ae21436908509.png', '', 1, 4),
(296, 167, '492ce3163ff15f4a7b0878b32a2baabd1436908509.png', '', 1, 5),
(317, 168, '0385daae03362f56ab4c7b64a66506f61436917380.jpg', '', 1, 1),
(318, 168, '7f38340a2728d5306c77903d4d06b1fc1436917380.jpg', '', 1, 2),
(319, 165, '01fddb979bd77f0d970859115ecfa3141436830142.jpg', '', 1, 1),
(320, 165, 'd13a819dfdb5e89ffd12997659c7ba041436909086.jpg', '', 1, 2),
(321, 165, 'dbf557030578cbb2f535292f7cdfedc31436830152.jpg', '', 1, 3),
(322, 165, '896109b6be07d1eb18563973657886621436830152.jpg', '', 1, 4),
(323, 165, 'e4c7ace67440ab320ad64c1f353be5b31436830152.jpg', '', 1, 5),
(324, 165, 'fdb1aa47426db350c063454ac3b3fd311436830152.jpg', '', 1, 6),
(325, 165, '40c9213d219ac01af0636f83cfac30891436830152.jpg', '', 1, 7),
(326, 165, '7ce6283f9a9319908b06a1f41f66f4541436830152.jpg', '', 1, 8),
(327, 165, 'e47bc41ba23bf4e8d75cf3d2084276cf1436830152.jpg', '', 1, 9),
(328, 153, '3c45617a1b99e8f84d81716924052cc81436923276.jpg', '', 1, 1),
(342, 169, 'c1674274077f865419175429188ff4551436926070.jpg', '', 1, 1),
(343, 169, '5ac6a01420803594dc017d846b05349c1436926070.jpg', '', 1, 2),
(344, 169, 'd3b05f5c6b6d304c8685b68661ee76c01436926089.jpg', '', 1, 3),
(345, 169, '5dd51458049f7689bffa536e65dcec451436926069.jpg', '', 1, 4),
(372, 172, 'b3a03f6eb5498023192a3fdf377318f31436994185.jpg', '', 1, 1),
(373, 172, 'cd436ec7ed6afed13a5aebff73343d9c1436994188.jpg', '', 1, 2),
(374, 172, '7ccc0685505d3422d2254d1dfa42be1c1436994327.jpg', '', 1, 3),
(375, 172, 'a9ed63c862e7ad1f635580c30ffbcefe1436994278.jpg', '', 1, 4),
(377, 173, 'd0594d5de6a81cd2ea62c51085545a881437080363.jpg', '', 1, 1),
(385, 174, '6f1daa85fe624f2410cb5c20ab6ec1f91437083195.jpg', '', 1, 1),
(386, 174, '148113a1a677e5ad85a8f2836658b9de1437083200.jpg', '', 1, 2),
(387, 174, 'e0dd605ba62acf84a1ae3c23464f74021437083211.jpg', '', 1, 3),
(388, 174, 'f9aec930c113910d50bd327da150bcf51437083221.jpg', '', 1, 4),
(389, 174, '048621648e17c164d17b182e8fc068f01437083221.jpg', '', 1, 5),
(390, 174, 'c9c1239eaf2152dfc57eeb9d5417c0411437083221.jpg', '', 1, 6),
(391, 174, '317c3615851908d7961f2972fee223c41437083221.jpg', '', 1, 7),
(404, 170, '6a81a8a09d0ff25e714133b28e3b30481436929285.jpg', '', 0, 1),
(405, 170, '0bf8f1c28ed8341c4ad06af31097c0441437087431.gif', '', 1, 2),
(406, 170, '5b468b86c2d7cde690b9ef3bc976ec3a1436929905.jpg', '', 1, 3),
(407, 170, 'c50fd0f7f52b2434757a9c0abcd334471436929286.jpg', '', 0, 4),
(408, 171, '674356756334972648ccf3980ad41ac11436930408.jpg', '', 0, 1),
(409, 171, '4644b1ee305ae31c4cf988ce1b97a1e51436930408.jpg', '', 1, 2),
(410, 171, '24148d83b462ee10e304b2b341396da91437305889.jpg', '', 1, 3),
(411, 171, '219dba7b6d0a037072e39ac3059178fa1437305889.jpg', '', 1, 4),
(412, 171, '2bed5da8d06ba8355509aa051899c5591436930408.jpg', '', 1, 5),
(413, 171, 'd34764438a4fd9e006004754cb9f745c1436930408.jpg', '', 1, 6),
(414, 171, 'e7fc5ad3ca074dd405bdf39d7a2cffce1436930408.jpg', '', 1, 7),
(415, 145, 'Branding-Identity-Mockup---Otzar2.jpg', '', 1, 1),
(416, 145, 'bfea5303304bac81246bb81184ef3b9e1436829651.jpg', '', 1, 2),
(417, 145, '96f0047611a7d9bd833f108c7ac88ab61440002896.jpg', '', 1, 3),
(432, 175, '621684480b2c8f677188f7b55c893d921440096361.png', '', 0, 1),
(433, 175, '6516282d09eadce47482ac4e81813b5f1440096563.png', '', 1, 2),
(434, 175, '7464b739a0ccda1a9059127959db39e41440096434.jpg', '', 1, 3),
(435, 175, '6683527d972a50b3ae611a9dd6349aaa1440096438.jpg', '', 1, 4),
(436, 175, 'f8f1f0bbbbb1b50f5aae5494178811341440097324.png', '', 0, 5),
(437, 155, 'c705a084211c087b4c218268abb2d1411436731272.jpg', '', 0, 1),
(438, 155, 'c3a97addab20e9eb022741e15a281d8f1436731272.jpg', '', 1, 2),
(439, 155, '190126ae8d2a4d20b77c5f94658ff3871440198059.jpg', '', 1, 3),
(440, 155, 'bc20f1aa6ce22dcf1176023f20997ac51436731272.jpg', '', 1, 4),
(441, 155, '6c91071f48b4c3c4ca21d8c1c603a59f1436731272.jpg', '', 1, 5),
(442, 155, '19f69a4cabb218726d322251e96a53621436731272.jpg', '', 1, 6),
(449, 176, 'a2b988f818cd9266f7749c80ec7d119d1440309066.jpg', '', 0, 1),
(450, 176, '2774b13d32ebf038eb5ad2bd06a856de1440309066.gif', '', 1, 2),
(452, 178, 'b715c6a7ecdae6cd064521bb649b228a1449010360.png', '', 0, 1),
(453, 178, 'ae0d01193e129a46763173369db278df1449010360.jpg', '', 1, 2),
(454, 179, '03fad8242fd7bf47b0ebf14d5691c0ce1449025275.png', '', 0, 1),
(455, 179, 'a5f1aca8a223a7c042b2ffb4458116211449025275.gif', '', 1, 2),
(458, 180, 'c47b22b22160ad50b3dcfc17d793ea101449026648.png', '', 1, 1),
(459, 180, '9e2f150dfb29e2f822c0a16f2b73a3d11449026648.jpg', '', 1, 2),
(467, 135, '0004_Light-Up-Fountain-Square.jpg', '', 1, 1),
(468, 135, '162d272f05d0263d90baf44ed2690bb41449787245.jpg', 'On an electronic billboard.', 1, 2),
(473, 156, 'ebb554ced1f8c876aeb5fca4047e7d561436731326.jpg', '', 1, 1),
(474, 156, '7a5e748763c8a3ebb34d2ee331397d411436737564.jpg', '', 1, 2),
(505, 182, '19fde3f56eb0f3caa86570fbd30f51a21450131707.jpg', '', 0, 1),
(506, 182, 'fe9ad2c6a6468fa76629ec52398469701450218553.jpg', '', 1, 2),
(507, 182, '78d317bec05692a9b5f3d5e659fbbe921450219610.jpg', '', 1, 3),
(508, 182, '88d150c8e0ce76171ddcb99523e846031450219628.jpg', '', 1, 4),
(509, 182, 'edea2c0bb1a46a79757fe78e641da0041450220116.jpg', '', 1, 5),
(510, 182, '26e2ca773aa8ac9c3652393f0e856c371450217475.jpg', '', 1, 6),
(511, 181, '77cc705e75dc64ec96b7e2f2fad9a6fa1449079205.jpg', '', 0, 1),
(512, 181, '5eece91ab4f844f5af9b04702ead441e1449078782.jpg', '', 1, 2),
(513, 181, '035adcb27f79decab40f1d6a83d661ab1449078822.jpg', '', 1, 3),
(514, 181, 'c8760b69f0a48add1c4d41772b736a631449078822.jpg', '', 1, 4),
(522, 183, '7d2e730406199b35d76345e80fd993ec1450223179.jpg', '', 1, 1),
(523, 183, '751121a0a1c0bb12ee17ed7c8165f1f31450237539.jpg', '', 1, 2),
(524, 183, '788fad14878b4f287dfff87faf812c041450223256.jpg', '', 1, 3),
(525, 183, '58509e43021d52dde88070f1ff76a3bc1450223256.jpg', '', 1, 4),
(526, 183, '27197f0f3551eff561dd6f32785ccda91450223271.jpg', '', 1, 5),
(534, 184, 'db1590385a6b3ca2e1646ba917ecb3521450239528.jpg', '', 0, 1),
(535, 184, '8f35fd085c151c5fc31151f1a4c126471450238642.jpg', '', 1, 2),
(536, 184, '41a2e21804b59cd6807a2647ec337c731450238642.jpg', '', 1, 3),
(537, 184, '174a1b3d8d95d5491a5bffb0af58b5011450238642.jpg', '', 1, 4),
(538, 184, 'c68a9391e65d5540ccaf459ad32a87ed1450223652.jpg', '', 1, 5),
(539, 184, '81d30c1b4f40fe5ecf193f8a8cb80d2c1450238641.jpg', '', 1, 6),
(540, 184, '8a89a3cec8b30ee76926704ac91f00e51450238642.jpg', '', 1, 7),
(541, 184, 'd95d9a2c900dd17916d599d19e4439861450238642.jpg', '', 1, 8),
(578, 190, '4424a0355e4cd4a34e2ba670bab16aa31450306098.png', '', 0, 1),
(579, 190, 'e25950f80a6fc8aebe7fdc47424bbe9e1450306099.png', '', 1, 2),
(590, 188, '506f15288302fe953d94baf311eeab441450307476.jpg', '', 1, 1),
(591, 188, 'ea3cc49c275e74f3fbe21ca65cfd67fe1450307476.jpg', '', 1, 2),
(592, 188, 'f07b68bc98f0322ec2ccbac400ac8ac01450307476.jpg', '', 1, 3),
(593, 185, '79bf3b835cca357da0144807e2829d9e1450307145.jpg', '', 0, 1),
(594, 185, 'a752bcf422f8a58a986d66c94c3739cb1450301870.png', '', 1, 2),
(595, 185, 'ba7061762c74b9f240561bcc041d63d01450301871.gif', '', 1, 3),
(596, 185, '70f7212b5473de8e6bcd4903c29f804a1450301871.gif', '', 1, 4),
(597, 185, '635f126a3db109b4f658ed54f1541d931450301871.gif', '', 1, 5),
(598, 191, '1684f56c9450ede616906cd08fa31d4a1450394640.png', '', 0, 1),
(599, 191, '90304a2e684aefb0c5e8306544b05a0f1450394631.jpg', '', 1, 2),
(600, 186, '3f42c7a3fb4074d4628d946149978b8e1450303878.jpg', '', 0, 1),
(601, 186, '44525c2b3e2d96159a34dc1916c2b29f1450303903.jpg', '', 1, 2),
(602, 186, 'eb54bf4793cb20c0bee40e7576655fc11450450937.jpg', '', 1, 3),
(611, 192, 'db6cc8d57b715d1933780072832401681450735711.gif', '', 0, 1),
(612, 192, 'e969fda6c068393c9525d2663f6d0bf81450734407.jpg', '', 1, 2),
(613, 192, '7d665808fc2d2c322dd128f18fa0e8a51450734407.jpg', '', 1, 3),
(614, 192, 'a5c445949580499476bcfc6480da6eb31450734407.jpg', '', 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;
--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
