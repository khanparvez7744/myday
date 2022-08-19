-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 07:25 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myday`
--

-- --------------------------------------------------------

--
-- Table structure for table `career_myday`
--

CREATE TABLE `career_myday` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `experience` int(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career_myday`
--

INSERT INTO `career_myday` (`id`, `name`, `phone`, `email`, `designation`, `experience`, `resume`, `created_at`) VALUES
(30, 'dfdf', 'a', 'web@sociapa.com', 'Developer', 1, 'new_influ.php', '2022-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `contact_myday`
--

CREATE TABLE `contact_myday` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_myday`
--

INSERT INTO `contact_myday` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(11, 'parvez', 'web@sociapa.com', 'sdsddfdfdf', '3434', '2022-03-10'),
(12, 'parvez', 'a@a', 'sdsd', '3434', '2022-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `footer_myday`
--

CREATE TABLE `footer_myday` (
  `id` int(255) NOT NULL,
  `emailf` varchar(255) NOT NULL,
  `messagef` varchar(1000) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer_myday`
--

INSERT INTO `footer_myday` (`id`, `emailf`, `messagef`, `created_at`) VALUES
(18, 'a@a', 'a', '2022-03-10'),
(19, 'a@a', 'a', '2022-03-10'),
(20, 'a@a', 'a', '2022-03-10'),
(21, 'a@a', 'a', '2022-03-10'),
(22, 'a@a', 's', '2022-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_myday`
--

CREATE TABLE `recipe_myday` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `ingredients` varchar(2000) NOT NULL,
  `instructions` varchar(2000) NOT NULL,
  `created_at` date NOT NULL,
  `serving` int(255) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe_myday`
--

INSERT INTO `recipe_myday` (`id`, `image`, `name`, `description`, `ingredients`, `instructions`, `created_at`, `serving`, `time`) VALUES
(1, 'oatRecipe.jpg', 'Oat', 'quick and easy chilla made with oats, gram flour, spices-herbs. This healthy oats chilla recipe takes less than 30 minutes to make. So quick and easy enough for morning breakfast. This cheela is soft and has the taste of oats in it. ', '<ol>\r\n<li>\r\nBullet point ¼ cup Saffola Soya Chunks (boiled and squeezed dry)</li>\r\n<li>1 tbsp Oil\r\n</li>\r\n<li>1/8 cup French beans, chopped & boiled\r\n</li>\r\n<li>1/8 cup Carrot, chopped & boiled\r\n</li>\r\n<li>1/8 cup Cabbage, chopped & boiled\r\n</li>\r\n</ol>', '<ol>\r\n<li>\r\nHeat oil in a Chinese wok and add French beans,carrot, cauliflower,\r\n</li>\r\n<li>spring onion, cooked Saffola Soya Chunks and sauté.\r\n</li>\r\n<li>Share this recipe\r\n</li>\r\n<li>Add rice and toss properly\r\n</li>\r\n<li>Heat for few mins. Keep stirring in between.\r\n</li>\r\n</ol>', '0000-00-00', 10, 50),
(2, 'vermicelliRecipe.jpg', 'Vermicelli', 'It is a quick and healthy snack that you can cook easily in just 20 minutes with simple ingredients. An extra light and healthy breakfast option, this upma recipe is made from vermicelli, a traditional type of pasta round in section similar to Italian spaghetti. A delicious and quick snacking option for all your hunger pangs. This is so light that it is known to be an all-time fav meal and not just restricted to breakfast or brunch. Serve as is or along with a bowl of traditional sambar.', '<ol>\r\n<li>\r\nBullet point ¼ cup Saffola Soya Chunks (boiled and squeezed dry)</li>\r\n<li>1 tbsp Oil\r\n</li>\r\n<li>1/8 cup French beans, chopped & boiled\r\n</li>\r\n<li>1/8 cup Carrot, chopped & boiled\r\n</li>\r\n<li>1/8 cup Cabbage, chopped & boiled\r\n</li>\r\n</ol>', '<ol>\r\n<li>\r\nHeat oil in a Chinese wok and add French beans,carrot, cauliflower,\r\n</li>\r\n<li>spring onion, cooked Saffola Soya Chunks and sauté.\r\n</li>\r\n<li>Share this recipe\r\n</li>\r\n<li>Add rice and toss properly\r\n</li>\r\n<li>Heat for few mins. Keep stirring in between.\r\n</li>\r\n</ol>', '0000-00-00', 10, 50),
(3, 'cornRecipe.jpg', 'Corn Flakes', 'A great side dish that can be coupled with a nice, light, hot bowl of soup or a plate of Caesar salad. These tender muffins are easy to prepare and absolutely divine. ', '<ol>\r\n<li>\r\nBullet point ¼ cup Saffola Soya Chunks (boiled and squeezed dry)</li>\r\n<li>1 tbsp Oil\r\n</li>\r\n<li>1/8 cup French beans, chopped & boiled\r\n</li>\r\n<li>1/8 cup Carrot, chopped & boiled\r\n</li>\r\n<li>1/8 cup Cabbage, chopped & boiled\r\n</li>\r\n</ol>', '<ol>\r\n<li>\r\nHeat oil in a Chinese wok and add French beans,carrot, cauliflower,\r\n</li>\r\n<li>spring onion, cooked Saffola Soya Chunks and sauté.\r\n</li>\r\n<li>Share this recipe\r\n</li>\r\n<li>Add rice and toss properly\r\n</li>\r\n<li>Heat for few mins. Keep stirring in between.\r\n</li>\r\n</ol>', '0000-00-00', 10, 50),
(4, 'pohaRecipe.jpg', 'Poha', 'Poha recipe is a light breakfast dish. Basically pohe is made by mixing flattened rice in a mix of seasoned spices and onions. It is ridiculously easy to make poha recipe. To make it more nutritious you can add boiled peas, grated carrots, roasted peanuts, cashews and garnish with coriander leaves (cilantro leaves) and grated coconut.', '<ol>\r\n<li>\r\nBullet point ¼ cup Saffola Soya Chunks (boiled and squeezed dry)</li>\r\n<li>1 tbsp Oil\r\n</li>\r\n<li>1/8 cup French beans, chopped & boiled\r\n</li>\r\n<li>1/8 cup Carrot, chopped & boiled\r\n</li>\r\n<li>1/8 cup Cabbage, chopped & boiled\r\n</li>\r\n</ol>', '<ol>\r\n<li>\r\nHeat oil in a Chinese wok and add French beans,carrot, cauliflower,\r\n</li>\r\n<li>spring onion, cooked Saffola Soya Chunks and sauté.\r\n</li>\r\n<li>Share this recipe\r\n</li>\r\n<li>Add rice and toss properly\r\n</li>\r\n<li>Heat for few mins. Keep stirring in between.\r\n</li>\r\n</ol>', '0000-00-00', 10, 50);

-- --------------------------------------------------------

--
-- Table structure for table `species_myday`
--

CREATE TABLE `species_myday` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quatity` int(255) NOT NULL,
  `review` int(255) NOT NULL,
  `serving` int(255) NOT NULL,
  `time` int(255) NOT NULL,
  `created_at` date NOT NULL,
  `category` varchar(255) NOT NULL,
  `homeCategory` varchar(255) NOT NULL,
  `also` varchar(255) NOT NULL,
  `is_deleted` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `species_myday`
--

INSERT INTO `species_myday` (`id`, `image`, `name`, `description`, `quatity`, `review`, `serving`, `time`, `created_at`, `category`, `homeCategory`, `also`, `is_deleted`) VALUES
(21, 'black-pepper600.png', 'Black Pepper', 'Black pepper, also known as the king of spices has a load of health benefits and a major benefit of consuming pepper is that it aids in weight loss.', 30, 13, 2, 50, '0000-00-00', 'species', 'launch', '', 0),
(22, 'choco-power600.png', 'Choco Power', 'Dry cocoa solids are the components of cocoa beans remaining after cocoa butter, the fatty component of the bean, is extracted from chocolate liquor, roasted cocoa beans that have been ground into a liquid state.', 12, 10, 1, 200, '0000-00-00', 'breakfast', '', '30gm, 125gm, 250gm', 0),
(23, 'cardamom600.png', 'Cardamom', 'Cardamom is used for digestion problems including heartburn, intestinal spasms, irritable bowel syndrome (IBS), intestinal gas, constipation, liver and gallbladder complaints, and loss of appetite', 100, 13, 2, 50, '0000-00-00', 'species', '', '', 0),
(24, 'vermicelli-plain600.png', 'Vermicelli Plain', 'It provides a good source of energy. Aids in weight loss. Increases metabolism.', 90, 10, 1, 200, '0000-00-00', 'breakfast', '', '200gm, 400gm, 880gm', 0),
(25, 'vermicelli-roasted600.png', 'Vermicelli Roasted', 'Vermicelli Plain is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 85, 10, 1, 200, '0000-00-00', 'breakfast', '', '160gm, 400gm, 880gm', 0),
(26, 'seviyan-roasted600.png', 'Seviyan Roasted', 'The roasted Semia makes it a ready to use instant noodle. The short spaghetti is used in making sweet dishes like Kheer or Payasam.', 100, 10, 1, 200, '0000-00-00', 'breakfast', '', '140gm', 0),
(27, 'poha600.png', 'Poha', 'Poha or beaten rice is a great breakfast that provides you with the burst of energy you need to kickstart your day. It is also very popular by different names in our country, with a flavourful variant of Poha in each region.', 400, 10, 1, 200, '0000-00-00', 'breakfast', 'launch', '800gm', 0),
(28, 'pasta600.png', 'Pasta', 'Pasta is made from grain, one of the basic food groups in a healthy diet that also can include vegetables, fruits, fish, and poultry. It\'s a good source of energy and can give you fiber, too, if it\'s made from whole grain.', 150, 10, 1, 200, '0000-00-00', 'breakfast', 'launch', '500gm', 0),
(29, 'oats600.png', 'Oats', 'Oats, formally named Avena sativa, is a type of cereal grain from the Poaceae grass family of plants. The grain refers specifically to the edible seeds of oat grass, which is what ends up in our breakfast bowls. ', 500, 10, 1, 200, '0000-00-00', 'breakfast', 'launch', '', 0),
(30, 'fryums600.png', 'Fryums', 'Pipe fryums can be eaten as a snack as it is. It can also be served as an accompaniment to your meal. You can transform it into a delicious chaat or make this Gujarati famous street food – Bhungara bateta.', 70, 10, 1, 200, '0000-00-00', 'breakfast', 'launch', '200gm', 0),
(31, 'daliya-roasted600.png', 'Daliya Roasted', 'Dalia, in most Indian homes, is a regular feature when it comes to breakfast. Dalia, or broken wheat, is a cereal grain that forms an integral part of the staple diet.', 150, 10, 1, 200, '0000-00-00', 'breakfast', '', '200gm, 400gm, 500gm', 0),
(32, 'daliya-plain600.png', 'Daliya Plain', 'Plain Dalia/ broken wheat is a high fiber, full of nutrition tasty carbohydrate. It can be easily made in a pressure cooker. Broken wheat is great to be included in your diet.', 150, 10, 1, 200, '0000-00-00', 'breakfast', '', '200gm, 400gm, 500gm', 0),
(33, 'corn-flakes600.png', 'Corn Flakes', 'As well as being used as a breakfast cereal, the crushed flakes can be a substitute for bread crumbs in recipes and can be incorporated into many cooked dishes.\n', 200, 10, 1, 200, '0000-00-00', 'breakfast', 'launch', '500gm', 0),
(35, 'soya-granules600.png', 'Soya Granules', 'Soya chunks is a boon for vegetarian fitness enthusiasts and thereby its often called as vegan meat. Fitness trainers and dietitians often prefer soya chunks over other supplements for protein intake, due to its plant-based source of protein.', 1000, 13, 2, 50, '0000-00-00', 'soyachunk', '', '200gm', 0),
(36, 'soya-chunks600.png', 'Soya Chunks', 'Soya chunks is a boon for vegetarian fitness enthusiasts and thereby its often called as vegan meat. Fitness trainers and dietitians often prefer soya chunks over other supplements for protein intake, due to its plant-based source of protein.', 42, 13, 2, 50, '0000-00-00', 'soyachunk', '', '100gm, 200gm', 0),
(37, 'soya-mini-chunk600.png', 'Soya Mini Chunks', 'Soya chunks is a boon for vegetarian fitness enthusiasts and thereby its often called as vegan meat. Fitness trainers and dietitians often prefer soya chunks over other supplements for protein intake, due to its plant-based source of protein.', 40, 13, 2, 50, '0000-00-00', 'soyachunk', '', '200gm', 0),
(38, 'clove600.png', 'Clove', 'Clove is used for upset stomach and as an expectorant. Expectorants make it easier to cough up phlegm.', 100, 10, 1, 200, '0000-00-00', 'species', '', '', 0),
(39, 'cumin600.png', 'Cumin', 'Cumin is an herb. The seeds of the plant are used to make medicine. People take cumin for digestion problems including diarrhea, colic, bowel spasms, and gas.', 100, 13, 2, 50, '0000-00-00', 'species', '', '', 0),
(382, 'garamMasala600.png', 'Garam Masala', 'Combining the flavours of myriad spices, garam masala has endless culinary uses. It is usually added to curries, vegetable dishes, soups or stews toward the end of cooking, or sprinkled over the surface just before serving.', 100, 13, 2, 50, '0000-00-00', 'species', 'launch', '', 0),
(383, 'fenugreek-feeds600.png', 'Fenugreek Feeds', 'Fenugreek seeds and leaves are strongly aromatic and flavorful. The seeds are bitter in taste, but lose their bitterness if lightly roasted.', 100, 13, 2, 50, '0000-00-00', 'species', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career_myday`
--
ALTER TABLE `career_myday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_myday`
--
ALTER TABLE `contact_myday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_myday`
--
ALTER TABLE `footer_myday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe_myday`
--
ALTER TABLE `recipe_myday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `species_myday`
--
ALTER TABLE `species_myday`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career_myday`
--
ALTER TABLE `career_myday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contact_myday`
--
ALTER TABLE `contact_myday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `footer_myday`
--
ALTER TABLE `footer_myday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recipe_myday`
--
ALTER TABLE `recipe_myday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `species_myday`
--
ALTER TABLE `species_myday`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
