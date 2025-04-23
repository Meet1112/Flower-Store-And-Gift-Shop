-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 09:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg'),
(137, 24, 26, 'A Forever Promise In White Roses - Bridal Bouquet', 600, 3, 'f3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'shaikh anas', 'shaikh@gmail.com', '0987654321', 'hi, how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 14, 'shaikh anas', '0987654321', 'shaikh@gmail.com', 'credit card', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', cottage rose (3) , pink bouquet (1) , yellow queen rose (1) ', 80, '11-Mar-2022', 'pending'),
(18, 14, 'shaikh anas', '1234567899', 'shaikh@gmail.com', 'paypal', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', yellow queen rose (1) , pink rose (2) ', 40, '11-Mar-2022', 'completed'),
(19, 24, 'Rushali Jivrajani', '09099538086', 'rushjivrajani48@gmail.com', 'cash on delivery', 'flat no. Elite urbers pg opp natural flowers near sector 7 suncity main road south bopal ahemdabad, , Ahmedabad, India - 380058', ', pink rose (1) ', 12, '14-Apr-2025', 'pending'),
(20, 24, 'Rushali Jivrajani', '09099538086', 'rushjivrajani48@gmail.com', 'paypal', 'flat no. Elite urbers pg opp natural flowers near sector 7 suncity main road south bopal ahemdabad, , Ahmedabad, India - 380058', ', pink rose (1) ', 12, '14-Apr-2025', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(15, 'Cottage Rose', 'The Cottage Rose brings a touch of vintage charm with its lush, layered petals and romantic fragrance. Perfect for adding elegance to any bouquet or garden setting. Its soft, pastel tones evoke timeless beauty.', 15, 'cottage rose.jpg'),
(16, 'Lavendor Rose', 'Lavender Rose symbolizes enchantment and love at first sight, making it a unique and elegant choice. Its soft purple hue brings a calming, mystical vibe to any floral arrangement.', 13, 'lavendor rose.jpg'),
(17, 'Yellow Tulipa', 'Bright and cheerful, the Yellow Tulip symbolizes happiness, friendship, and sunshine. Its vibrant petals instantly lift the mood and add a burst of joy to any space.', 14, 'yellow tulipa.jpg'),
(19, 'Pink Bouquet', 'Soft, romantic, and full of charm, the Pink Bouquet is a perfect expression of love, grace, and admiration. Blushing blooms come together to create a timeless and tender arrangement.', 15, 'pink bouquet.jpg'),
(21, 'Sweet Refreshing Gift Set', 'This elegant hamper is perfect for adding charm to any occasion! It includes a stylish Hello Love white sipper, perfect for staying hydrated in style, 100g of delicious Bakingo Hazelnut Rocks for a touch of sweetness, and a Jasmine & Marigold Diffuser Set to fill any space with a refreshing and calming aroma', 200, 'gift_set.jpg'),
(22, 'Rose And Oud Candle Ensemble', 'Experience the charm of our exquisite Candle Gift Set, a luxurious sensory journey that seamlessly blends elegance and ambiance. Inside, discover two premium candles and a lavish Reed Diffuser, each infused with enchanting scents. One candle radiates the timeless allure of delicate roses, filling your space with a romantic and soothing aroma reminiscent of fresh blooms', 250, 'rose-and-candal.jpg'),
(23, 'Crystal Ball', '\r\nElegant Moon Design: Stunning crystal ball designed to resemble the moon, bringing celestial beauty into your space.\r\nRealistic 3D Printing: Meticulously crafted using advanced 3D printing technology, capturing every crater and lunar detail with remarkable precision.', 1000, 'gift2.jpg'),
(24, 'Happy Birthday Bouquet Of Roses', 'Celebrate your loved one\'s special day with a bouquet of radiant pink roses wrapped in delicate pink paper and adorned with a cheerful \"Happy Birthday\" balloon. This thoughtful gift is the perfect choice to convey your heartfelt wishes', 500, 'fl1.jpg'),
(25, 'Truly Madly Deeply - Anniversary Flowers', 'Show your love with this stunning arrangement of red roses, elegantly wrapped in crisp white paper, bearing the heartfelt message \"Happy Anniversary.\" Each vibrant rose speaks volumes of passion, devotion, and everlasting love, making it the quintessential gift to celebrate your special milestone', 2000, 'f2.jpg'),
(26, 'A Forever Promise In White Roses - Bridal Bouquet', 'This enchanting bridal bouquet features delicate white roses, symbolising purity, elegance, and new beginnings. the arrangement brings a sense of timeless grace to your special day. Wrapped in soft ribbons, this bouquet creates a perfect harmony of sophistication and simplicity', 600, 'f3.jpg'),
(27, 'Whispering Lilies In A Wine Red Dream', 'Each signifying purity, rebirth, and sophistication, nestled in opulent wine-colored paper. The stark contrast of the soft white petals against the deep wine backdrop lends this bouquet a striking appearance, making it an ideal expression of deep emotions or a sophisticated addition to any setting.', 500, 'f4.jpg'),
(28, 'Petal Poetry Elegance In Mystic Vase - Fower in Vases', 'This captivating floral arrangement is an exotic symphony of nature\'s finest elements. Like the blush of a setting sun, six resplendent peach roses take centre stage. They are gracefully accompanied by seven stems of fragrant eucalyptus, adding a touch of earthly allure', 600, 'f5.jpg'),
(29, 'Radiant Blooms Assortment In Blue Box - Flower In Gift Box', 'Our stunning arrangement includes peach rose, yellow rose, spray carnation, gypso, wheat, limonium, oasis, yellow carnation and bottle Grass - all carefully curated to create an exquisite symphony of colors and textures. Nestled in a blue FlowerAura box, this stunning ensemble is a testament to nature\'s beauty. Each petal and stem exudes elegance', 700, 'f6.jpg'),
(30, 'The Rose Pavilion Of Love', 'Celebrate love and luxury with this breathtaking arrangement of roses in a stunning blend of white, pink, and red hues, elegantly presented in a premium box. The white roses symbolise purity, the pink roses express admiration, and the red roses embody deep love and passion', 900, 'f7.jpg'),
(31, 'A Floral Dance Of Grace And Prosperity - Luxury Flowers', 'Immerse yourself in the enchanting beauty of nature with this exquisite floral arrangement. Delicate capecups, a trio of wonders, exude grace, while the sweet avalanche roses radiate elegance. The palm fronds and wheat grass strands, a trio each, promise prosperity in their embrace', 900, 'f8.jpg'),
(32, 'Self Pamper Lavender Luxury Hamper Box', 'Celebrate Women\'s Day by indulging in the essence of tranquility with this specially curated lavender bliss box. Designed to pamper and soothe, this exquisite collection features the Vaadi Herbals lavender & rosemary shower gel. Complementing this are two Refreshing lavender flavoured tea.', 800, 'f9.jpg'),
(33, 'Elegant Bathrobe Gift Hamper', 'Pamper your partner and yourself with this luxurious bathrobe gift hamper, perfect for romantic occasions like anniversaries, Valentine’s Day, or special date nights. This thoughtful set includes a cosy bathrobe for the couple, two charming bubble mugs for shared moments of warmth, and a fun, personalised newspaper to celebrate your love story. Presented in an elegant wooden crate, this hamper is a perfect blend of comfort and romance', 1500, 'f10.jpg'),
(34, 'Monk Miniature Set Of 4', '\r\nThis Monk Miniature Set of 4 pieces combines both function and fine craftsmanship in these intricate sculptures. Perfect for miniature art enthusiasts to use as tabletop miniatures, sculptures, or dioramas. These statues make for an ideal gift to a loved one or to anyone who appreciates cool collectibles.', 500, 'f11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(18, 'alvish', 'a@gmail.com', '$2y$10$Q1GDdAtiFFH4itFg1EBWF.JjSfPYgbdOWdEVsdspbM36IUgwddaf2', 'manager'),
(19, 'rushali jivrajani', 'rush48@gmail.com', '$2y$10$gdst6Fvz3chEivsLyttl.OSLyPJXvlhpWJ/dqdTz4233DwsDChzHK', 'manager'),
(20, 'alvish', 'alvish@gmail.com', '$2y$10$AQ7TSVgxgyKDhncNUaaFFevfDl3JOJ1EwNL5MK88ZziERvrBA9qYO', 'manager'),
(21, 'heli', 'heli@gmail.com', '$2y$10$nb/FKgatRPXvc4HxL4s2IOveTS8h8XiL/TELO9wv5O8kksuFHGCYW', 'manager'),
(22, 'manager', 'manager@gmail.com', '$2y$10$AUhdOIgan4vmaLOzmiODZ.ySOR.o51A44zhQiGudOA1jAXSVNQKHy', 'manager'),
(23, 'manager1', 'manager1@gmail.com', '$2y$10$f2DXkvG1lxI.j7NRpi4Ad.Ar0oIIGf9HwxLvV/Y.UzAGYOTUCYa/O', 'manager'),
(24, 'user1', 'user1@gmail.com', '$2y$10$KLT.WnoXaV38BevDAEhZne7N0Uj4BbC8oCvZAyspbyO/PrvdEVIvu', 'user'),
(25, 'Admin', 'admin@gmail.com', '$2y$10$RWC/ZaN/qUqGh3gh6rzWkeylGmGcKZK9y3O/RcCV8Ze9TrjuXt3la', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
