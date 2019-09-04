-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2019 at 06:19 AM
-- Server version: 10.3.17-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mountai3_mountaintop`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `time_of_day` varchar(1) NOT NULL,
  `approx_no_days` int(10) DEFAULT NULL,
  `approx_no_nights` int(10) DEFAULT NULL,
  `children` varchar(1) NOT NULL,
  `no_of_children` int(10) DEFAULT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client`, `first_name`, `last_name`, `phone_no`, `email`, `date`, `city`, `time_of_day`, `approx_no_days`, `approx_no_nights`, `children`, `no_of_children`, `comment`) VALUES
(1, 'samuel', 'kanyi', '700254244', 'amshelkanyi@gmail.com', '2017-12-31', 'nairobi', '0', 2, 1, '0', 2, 'commento'),
(2, 'sam', 'kanyi', '700123456', 'amshelkanyi@gmail.com', '2019-02-05', 'kiserian', 'm', 3, 3, 'n', 0, 'testing'),
(3, 'paul', 'ndemo', '123654', 'paulndemo4@gmail.com', '2018-11-07', 'aaaaaa', 'm', 4, 4, 'n', 0, 'hbbbbbbbbbbbb'),
(4, 'samuel', 'kanyi', '716273687', 'amshelkanyi@gmail.com', '2019-01-16', 'kiserian', 'm', 3, 2, 'n', 0, ''),
(5, 'Lisanug', 'Lisanug', '87722827818', 'reba@probbox.com ', '0000-00-00', 'Dallas', 'm', 0, 0, 'n', 0, '<a href=\"https://buspar10.com/\">buspirone 10 mg</a> '),
(6, 'Judynug', 'Judynug', '88764942734', 'bucklesshunter@probbox.com ', '0000-00-00', 'New York', 'm', 0, 0, 'n', 0, '<a href=\"https://buspar10.com/\">generic buspar</a> '),
(7, 'Marknug', 'Marknug', '83695877532', 'estehlik@probbox.com ', '0000-00-00', 'Dallas', 'm', 0, 0, 'n', 0, '<a href=\"https://buspar10.com/\">buspar 10mg</a> ');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `itinerary` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`itinerary`, `title`, `description`, `image`, `caption`) VALUES
(1, '4 DAYS/  3 NIGHTS - MASAI MARA.', '<h6>Day 1 ARRIVAL MASAI MARA</h6>\r\nArrive at Jomo Kenyatta International Airport where you will be met by your Driver Guide who will brief you on our Safari. Depart and drive southern towards the Great Rift Valley View Point for a brief stopover of the scenic view. Later on, proceed onto Masai Mara Game Reserve arriving at your Lodge/ Camp in time for lunch. Your first game viewing drive begins today in the afternoon before returning to your Lodge/ Camp for dinner. \r\nOVERNIGHT LODGE/ CAMP - FB\r\n\r\n<h6>Day 2 & 3 MASAI MARA</h6>\r\nEnjoy two full days of game viewing at Masai Mara. All your meals shall be served at your Lodge/ Camp. The Mara is known as one of the finest wildlife destinations in the World. Game viewing in the Mara is excellent all year around thanks to the diverse population of resident game, including the Big 5:lion, leopard, elephant, buffalo and rhino plus popular species like zebra, giraffe, hyena, eland and gazelle.  The famous wildebeest migration is witnessed here too during the month of July to October every year. \r\nOVERNIGHT LODGE/ CAMP (Breakfast, Lunch & Dinner).\r\n<h6>Day 4 DEPARTURE</h6>\r\nAn early morning game viewing drive before returning to the Lodge/ Camp for a late breakfast. Immediately after, depart and drive back to Nairobi arriving in the afternoon. Your driver will drop you at the Jomo Kenyatta International Airport for your flight back home.', 'marariver.jpg', '4 DAYS MASAI MARA national reserve'),
(2, '2 DAYS/ 1 NIGHT LAKE NAKURU.', '<h5>Day 1 PICK UP LAKE NAKURU</h5>\r\nArrival at Jomo Kenyatta International Airport where your Driver Guide will pick and drive you on Nairobi-Nakuru Highway. A brief stopover at the Great Rift Valley View Point and continue driving to Lake Nakuru National Park. Lunch will be served at your Lodge/ Camp followed by an afternoon game viewing drive in the Park. Lake Nakuru offers visitors the chance to witness one of the worlds most spectacular wildlife sights: brilliant pink flamingos as far as the eye can see. The lake supports the blue-green, which is their main food source. Lake Nakuru National Park also offers sanctuary to huge numbers of native African animals including waterbucks, warthogs, impalas, buffalo, Rothschild giraffes, elands, endangered black rhinos, white rhinos and, occasionally, leopards. A large herd of hippos have a territory in the northern part of the lake, making for interesting game viewing point. \r\nOVERNIGHT LODGE/ CAMP FB\r\n<h5>Day 2 DEPARTURE</h5>\r\nAn early morning game viewing at Lake Nakuru National Park before returning to your Lodge/ Camp for a late Breakfast. Immediately after, drive back to Nairobi where your driver will drop you at the Airport for your flight back home. \r\n\r\n                      ', 'lake_nakuru.jpg', '2 DAYS LAKE NAKURU national park'),
(3, '3 DAYS/ 2 NIGHTS - AMBOSELI.', '<h5>Day 1 PICK UP AMBOSELI</h5>\r\nArrival at Jomo Kenyatta International Airport where your Safari Driver Guide will brief you on your Safari. Immediately after depart for Amboseli National Park arriving at your Lodge/ Camp in time for lunch. Afternoon at leisure before you go for your afternoon game drive. Amboseli offers some of the best opportunities to see African animals because its vegetation is sparse due to the long dry months. The Park is home to wild animals such as the African elephant, buffalo, impala, lion, cheetah, hyena, giraffes, zebra, and wildebeest. There is also a host of Kenya birds, both large and small, to see if you keep your eyes open and stop at every sighting. Return to your Lodge/ Camp late in the evening for Dinner.\r\nOVERNIGHT LODGE/ CAMP (Breakfast, Lunch & Dinner).\r\n<h5>Day 2 AMBOSELI</h5>\r\nEnjoy a full day of game viewing at Amboseli National Park. All your meals will be served at your Lodge/ Camp. Amboseli National Park offers a unique and breathtaking backdrop for viewing Africa\'s animals. Amboseli is renowned for its large herds of free-ranging African elephants, as well as huge herds of wildebeests and many other animals including bird species, giraffes, African lions, monkeys, zebras, hyenas and antelope. With its awesome view of Mount Kilimanjaro (Africa\'s highest mountain at 5,895m). Dinner will be served at your Lodge/ Camp.\r\nOVERNIGHT LODGE/ CAMP (Breakfast, Lunch & Dinner).\r\n<h5>Day 3 DEPARTURE</h5>\r\nBreakfast at the Lodge/ Camp before driving back to Nairobi where your driver will drop you at the Jomo Kenyatta International Airport. ', 'amboseli.jpg', '3 DAYS AMBOSELI national park'),
(4, '2 DAYS/ 1 NIGHTS LAKE MANYARA.', '<h5>Day 1 ARRIVAL ARUSHA LAKE MANYARA</h5>\r\nArrive at Kilimanjaro International Airport where you will be met and briefed on your Safari. Depart immediately and drive to Lake Manyara National Park arriving at your Lodge in time for Lunch. Afternoon Game viewing drive at Lake Manyara.  The park\'s main attraction are the famous tree climbing lions. The park is also known for its elephant and huge number of baboons, and its varied landscape supports an impressive range of other game including wildebeest, buffalo, hippo, flamingo, zebra, warthog, waterbuck, dik-dik and impala. The birding here is also very good, especially raptors. Retun to your Lodge/ Camp late in the evening for Dinner.\r\nOVERNIGHT LODGE/ CAMP - FB\r\n<h5>Day 2 DEPARTURE</h5>\r\nBreakfast and drive back to Arusha. Your Driver will drop you at Kilimanjaro International Airport for your flight back home. \r\n', 'lake_manyara.jpg', 'LAKE MANYARA national park'),
(5, '3 DAYS/ 2 NIGHTS - NGORONGORO.', '<h5>Day 1 ARRIVAL ARUSHA NGORONGORO</h5>\r\nArrive at Kilimanjaro International Airport where your Driver Guide will meet you and brief you on your Safari. Immediately after, depart and drive to Ngorongoro Crater. Arrive at your Lodge/ Camp in time for Lunch. Ngorongoro Crater is the largest intact caldera in the world and is a protected area. It was declared a UNESCO World Heritage Site in 1978 and is the largest intact volcanic caldera in the world.\r\n<h5>Day 2: Ngorongoro </h5>\r\nEarly morning descent to the Crater Lodge with picnic breakfast. Due to the enclosed nature of the Crater, it has virtually formed its own ecosystem. Besides the stunning scenery, one of the main attractions of this area is the variety of flora and fauna found in a remarkably compact area all year round.  Ngorongoro is home to a large assortment of animals including zebra, buffalo, warthog, wildebeest, hippo and elephants; and an amazing population of predators - lions, hyenas, jackals, cheetahs and the elusive leopard. Return to the lodge for lunch and spend your afternoon at leisure. Enjoy dinner in the evening at your Lodge/ Camp.\r\nOVERNIGHT LODGE/ CAMP - FB\r\n<h5>Day 3 DEPARTURE</h5>\r\nBreakfast and immediately after the drive back to Arusha. Your Driver will drop you at Kilimanjaro International Airport for your flight back home.                           ', 'ngorongoro.jpg', '3 DAYS NGORONGORO crater'),
(6, '3 DAYS  OL PEJETA CONSERVACY', '<h5>Day 1 PICK UP OL PEJETA</h5>\r\nArrival at Jomo Kenyatta International Airport where your Driver Guide pick you and drive you to Ol Pejeta Conservancy. Lunch will be served at your Lodge/ Camp followed by an afternoon game viewing drive  at Ol Pejeta. Formed in 1993 as a joint alliance between The Jane Goodall Institute and Kenyan Wildlife Service&#39;s this sanctuary was established as a refuge for orphaned and confiscated chimpanzees and is the only place in Kenya where non-indigenous chimpanzees can be seen.\r\nOVERNIGHT LODGE/ CAMP (Breakfast, Lunch & Dinner).\r\n<h5>Day 2 OL PEJETA</h5>\r\nEnjoy a full day of game viewing at Ol Pejeta Conservancy. All your meals shall be served at your Lodge/ Camp. Ol Pejeta Conservancy boasts an astounding variety of animals, including the &#34;Big Five&#34;. The Conservancy is home to many black and white rhinos. Visit the largest black rhino sanctuary and learn about the conservation efforts that are conducted to protect these endangered species. Enjoy the company of rescued chimpanzees as you learn about the stories. This is actually the only place in Kenya to see chimpanzees.\r\nOVERNIGHT LODGE/ CAMP (Breakfast, Lunch & Dinner).\r\n<h5>Day 3 DEPARTURE</h5>    \r\nMorning Breakfast and immediately after, drive back to Nairobi where your driver will drop you at the Airport for your flight back home. (Breakfast)                      ', 'ol_pejeta.jpg', '3 DAYS  OL PEJETA CONSERVACY'),
(7, '3 DAYS/ 2 NIGHTS SAMBURU.', '<h5>Day 1 PICK UP SAMBURU</h5>\r\nArrival at Jomo Kenyatta International Airport where your Driver Guide picks and drive you to Samburu Game Reserve. Lunch will be served at your Lodge/ Camp followed by an afternoon game viewing drive at the Reserve. Samburu National Reserve is named after the Samburu people who are considered cousins to their Maasai kin and have maintained the authenticity of their culture by sticking to their ancient traditions and defying modern trends. Return late in the evening to your Lodge/ Camp for dinner.\r\nOVERNIGHT LODGE/ CAMP - FB\r\n<h5>Day 2 SAMBURU</h5>\r\nSpend the day game viewing at Samburu Reserve. All meals will be served at your Lodge/ Camp. Samburu is rich in flora and fauna and is famous for its rare species of animals unique to the park, namely: the long necked gerenuk, Grevy\'s zebra, reticulated giraffe, Somali Ostrich and Beisa oryx. Being a semi-arid area, the Reserve draws its waters from Ewaso Nyiro River (meaning \"brown water\") which in turn attracts wildlife in great numbers from the surrounding savannah plains to its banks, creating an oasis of green. Dinner will be served at your Lodge/ Camp.\r\nOVERNIGHT LODGE/ CAMP - FB\r\n<h5>Day 3 DEPARTURE</h5>\r\nBreakfast and drive back to Nairobi where your driver will drop you at Jomo Kenyatta International Airport for your flight back home. \r\n', 'samburu.jpg', '3 days samburu national reserve'),
(8, '4 DAYS/ 3 NIGHTS - SERENGETI.', '<h5>Day 1 ARRIVAL ARUSHA - SERENGETI</h5>\r\nArrive at Kilimanjaro International Airport where your Driver Guide will meet you and brief you on your Safari. Immediately after, depart and drive to Serengeti National Park arriving at your Hotel/ Camp in time for Lunch. Your first game drive follows in the afternoon where you will see great herds of buffalo, elephants, giraffe, and thousands of eland, topi, kongoni, impala and Grant&#39;s gazelle among other exotic animals.  Return to your Hotel / Camp late in the evening for Dinner and Overnight.\r\n<strong>OVERNIGHT LODGE/ CAMP - FB</strong>\r\n<h5>Day 2 & 3 SERENGETI</h5>\r\nEnjoy two full days of unsurpassed game viewing along Serengeti plains. All your meals shall be served at your Lodge/ Camp. The Serengeti is famed for its incredible wildlife, stunning views and the annual migration of millions of wildebeest and zebras. In this hysterical territorial  you may witness an actual survival of the fittest as these animals plunge through crocodile-infested waters. The wildebeest will birth more than 8,000 calves daily before the pilgrimage begins again. \r\nOVERNIGHT LODGE/ CAMP - FB\r\n<h5>Day 4 MASAI MARA - DEPARTURE</h5>\r\nAn early morning game viewing drive before returning to the Lodge/ Camp for a late breakfast. Immediately after, drive back to Arusha arriving in the early afternoon. Your driver will drop you at the Airport for your flight back home.                                ', 'serengeti.jpg', '4 DAYS/ 3 NIGHTS - SERENGETI national park.'),
(9, 'MOMBASA - 5 DAYS/ 4 NIGHTS SAFARI.', '<h5>Day 1 ARRIVAL MOMBASA </h5>\r\nArrive at Moi International Airport where you will be met and be transferred to your Beach Hotel. Spend your afternoon at leisure enjoying the Hotel facilities. Dinner will be served later in the evening. Mombasa is the second largest city in Kenya. Located on Kenya&#39;s Eastern coastline bordering the Indian Ocean, it&#39;s original Arabic name is &#34;Manbasa&#34;. The history of the city is a mixture of African, Persian, Arab, Portuguese and British influences which contributed to the rich cultures found in the city today.\r\nOVERNIGHT BEACH HOTEL HB\r\n<h5>Day 2 TO 4 MOMBASA  </h5>\r\nYou will have three days to relax at the Beach with your meals booked at your Beach Hotel on Half Board basis (Breakfast and Dinner).  During your stay in Mombasa, learn about the Swahili culture, with a visit to the old town and a local Swahili museum. You will see the intricate hand carved doors, and balconies hanging over the narrow streets, unchanged for hundreds of years. Protecting the harbor stands Fort Jesus which was built by the Portuguese 400 years ago, to protect their interest in East Africa. See how it went from fort to prison to tourist attractions; walk under the famous Elephant tusks on Moi Avenue, which you probably have seen in those old Africa adventure movies. After the tour, you will be back to your hotel for Dinner.\r\nOVERNIGHT BEACH HOTEL HB\r\n<h5>Day 5 DEPARTURE </h5> \r\nBreakfast at your Hotel and transfer to Moi International Airport for your flight back home.                              ', 'diani.jpg', 'MOMBASA - 5 DAYS/ 4 NIGHTS SAFARI.'),
(10, 'ZANZIBAR - 5 DAYS/ 4 NIGHTS.', '<h5>Day 1 ARRIVAL ZANZIBAR </h5>\r\nArrival at Zanzibar International Airport followed by a transfer to your Hotel at the Beach. Zanzibar Island is a semi-autonomous archipelago from mainland of Tanzanian Coast consisting of Unguja, Pemba and other smaller islands. Enjoy the afternoon at leisure and later on, dinner will be served at your Hotel. \r\nOVERNIGHT BEACH HOTEL - HB\r\n\r\n<h5>Day 2 TO 4 ZANZIBAR  </h5>\r\nSpend three days at Zanzibar Beach. Your accommodation is booked on Half Basis (Breakfast and Dinner). Zanzibar is the home of idyllic beaches, balmy weather & warm tropical waters. This archipelago is renowned for clear warm waters, coral reefs and rich marine diversity. The colorful history and rich heritage can be seen in the strong Arabic, Indian, African, Persian and European influences and adds a vibrant dimension to the island. Several activities are readily available at a small fee and can be organized at the hotel upon request. Visit to the Stone Town&#39;s old quarter, a UNESCO World Heritage Site, where you will encounter a captivating blend of diverse architectural styles. The Spice Island is not to be missed. Learn about farming and processing of aromatic spices like cloves, turmeric, cinnamon, nutmeg, lemon grass and black pepper. Zanzibar has a long list of offerings for the outdoor water enthusiast - from scuba diving and deep-sea fishing to kayaking and sailing on traditional wooden dhows. Swim and snorkel in search of tropical fish amongst the coral, or go windsurfing, kite-boarding water-skiing or island hopping charged at a small fee. \r\nOVERNIGHT BEACH HOTEL - HB\r\n\r\n<h5>Day 5 DEPARTURE </h5>   \r\nBreakfast at your Hotel and transfer to Zanzibar International Airport for your flight back home.                  ', 'zanzibar.jpg', 'ZANZIBAR - 5 DAYS/ 4 NIGHTS.'),
(11, 'FULL DAY TOUR IN NAIROBI.', 'Your Driver Guide will pick you up from your Hotel and take you to David Sheldrick Wildlife Trust, a Sanctuary that cares for orphaned baby Elephants and are taken care of by a dedicated team of conservationists. The orphanage is run by Daphne Sheldrick, the wife of the late famous Naturalist, David William Sheldrick. \r\n<br>\r\nImmediately after, depart and drive to the Giraffe Center which protects the highly endangered Rothschild&#39;s giraffe, combines serious conservation with enjoyable activities. You can observe, hand-feed or even kiss one of the giraffes from a raised wooden structure, which is quite an experience. You may also spot warthogs snuffling about in the mud, and there&#39;s an interesting self-guided forest walk through the adjacent Gogo River Bird Sanctuary.<br>\r\nEnjoy lunch at Utamaduni restaurant before you embark on a visit to the Bomas of Kenya. While you are here, you will learn and understand the cultural heritage of Kenya. You will also enjoy traditional dance performances, songs and folklore during your visit here. Your Driver will drive your back to your Hotel where you will spend the night.', 'nairobi.jpg', 'FULL DAY TOUR IN NAIROBI.'),
(12, 'HALF DAY TOUR IN NAIROBI.', 'A very early pick up from your Hotel and drive to Nairobi National Park. The Park is unique by being the only protected area in the world with a variety of animals and birds close to a capital city. It has a diversity of environments with characteristic fauna and flora. Open grass plains with scattered acacia bush are predominant. The park has both natural and man-made boundaries, with fences set on all except the southern edge which is an open space that is used by migratory animals when new vegetation and water sources develop outside the park. <br>\r\nLater on visit David Sheldrick Wildlife Trust, a Sanctuary that cares for orphaned baby Elephants and are taken care of by a dedicated team of conservationists. The orphanage is run by Daphne Sheldrick, the wife of the late famous Naturalist, David William Sheldrick. <br>\r\nIn the early afternoon, visit the Kazuri  Beads; a Craft Center in Karen  where single mothers could learn a marketable skill and achieve self-sufficiency. A free tour takes you into the various factory buildings, where you can observe the process from the moulding of raw clay to the glazing of the finished products. There&#39;s also a gift shop with fixed prices. Your Driver will drive your back to your Hotel where you will spend the rest of the afternoon at leisure and later on spend the night.                  ', 'nairobi2.jpg', 'HALF DAY TOUR IN NAIROBI.');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `picture` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`picture`, `name`, `caption`, `location`) VALUES
(202, 'serengeti-serena-safari.jpg', 'Serengeti Serena Safari Lodge', 'slider'),
(203, 'zanzibarserena.jpg', 'zanzibar', 'gallery'),
(204, 'swimming-pool-olare-mara-kempinski.jpg', 'Swimming Pool Olare Mara', 'gallery'),
(205, 'zanzibar-serena-room.jpg', 'Zanzibar Serena Room', 'gallery'),
(206, 'ngorongoro-crater-lodge.jpg', 'Ngorongoro Crater Lodge', 'gallery'),
(207, 'ziwabush-nakuru.jpg', 'Ziwa Bush Nakuru', 'gallery'),
(208, 'serena-mara3.jpg', 'Serena Mara', 'gallery'),
(209, 'serengetiserenaroom.jpg', 'Serengeti Serena Room', 'gallery'),
(210, 'parkhyatt-exterior.jpg', 'Park Hyatt', 'gallery'),
(211, 'samburu-intrepidsroom.jpg', 'Samburu Intrepids Room', 'gallery'),
(212, 'oliver-s-campguest-tent-exterior.jpg', 'Oliver\'s Camp', 'gallery'),
(213, 'samburu-intrepids.jpg', 'Samburu Intrepids', 'gallery'),
(214, 'olivers-camp-tarangire.jpg', 'Oliver\'s Camp Tarangire', 'gallery'),
(215, 'sawelanaivasha.jpg', 'Sawela Naivasha', 'gallery'),
(216, 'park-hyatt-zanzibar.jpg', 'Park Hyatt Zanzibar', 'gallery'),
(217, 'park-hyatt-zanzibarroom.jpg', 'Park Hyatt Zanzibar Room', 'gallery'),
(218, 'serenamara2.jpg', 'Serena Mara', 'gallery'),
(219, 'oltukai-lodge-amboseli-2.jpg', 'Oltukai Lodge Amboseli', 'gallery'),
(220, 'olaremarakempinskiroom01propertybanner.jpg', 'Olare Mara Kempinsky ', 'gallery'),
(221, 'ngorongorocraterlodge.jpg', 'Ngorongoro Crater Lodge', 'gallery'),
(222, 'naivasha-sawela-lodge.jpg', 'Naivasha Sawela Lodge', 'gallery'),
(223, 'ngorongoro-serena-room.jpg', 'Serena Ngorongoro', 'gallery'),
(224, 'oltukai-roominterior.jpg', 'Oltukai Lodge Room', 'gallery'),
(225, 'maraserena.jpg', 'Mara Serena', 'gallery'),
(226, 'olaremara.jpg', 'Olare Mara', 'gallery'),
(227, 'ngorongoro-serena.jpg', 'Ngorongoro Serena', 'gallery'),
(228, 'mahalimzuri-bed.jpg', 'Mahali Mzuri', 'gallery'),
(229, 'grumeti-serengeti-tented-camp.jpg', 'Grumeti Serengeti Tented Camp', 'gallery'),
(230, 'grumeti-serengeti-tented-camp-hero5.jpg', 'Grumeti Serengeti Tented Camp', 'gallery'),
(231, 'mahali-mzuri-camp.jpg', 'Mahali Mzuri Camp', 'slider'),
(232, 'mara-serena-room.jpg', 'Mara Serena', 'gallery'),
(233, 'kichwatembo-interiorroom.jpg', 'Kichwa Tembo Tented Camp', 'gallery'),
(234, 'little-olivers-camp.jpg', 'Little Oliver\'s Camp', 'gallery'),
(235, 'kichwa-temboview.jpg', 'Kichwa Tembo', 'gallery'),
(236, 'larsen-campsexterior.jpg', 'Larsen Camp', 'gallery'),
(237, 'great-riftvalleylodgeandgolfresort.jpg', 'Great Rift Valley Lodge and Golf Resort', 'gallery'),
(238, 'larsenscamp-roominterior.jpg', 'Larsen Camp Room', 'gallery'),
(239, 'grumetiserengeticamp1.jpg', 'Grumeti Serena Camp', 'gallery'),
(240, 'angama-2015-51.jpg', 'Angama Mara', 'gallery'),
(241, 'angamamara.jpg', 'Angama Mara', 'gallery'),
(242, 'essquezaluzanzibar.jpg', 'Essque Zalu Zanzibar', 'gallery'),
(243, 'kibokoluxury.jpg', 'Kiboko Luxury Camp', 'gallery'),
(244, 'angama-mara.jpg', 'Angama Mara', 'gallery'),
(245, 'kibokocamp-naivasha.jpg', 'Kiboko Luxury Camp Naivasha', 'gallery'),
(246, 'fairmountmara1.jpg', 'Hotel Fairmont Mara Safari Club', 'gallery'),
(247, 'essque-zalu-zanzibarroom.jpg', 'Essque Zalu Zanzibar Room', 'gallery'),
(248, 'angama-mara4.jpg', 'Angama Mara', 'slider'),
(249, 'governors-camp-tent-interior.jpg', 'Governors\' Camp Tent Interior', 'gallery'),
(250, 'enashipaepoolview.jpg', 'Enashipai Resort & Spa Pool View', 'gallery'),
(251, 'fairmountmara.jpg', 'Hotel Fairmont Mara Safari Club Interior', 'gallery'),
(252, 'enashipae.jpg', 'Enashipai Resort & Spa', 'gallery'),
(253, 'amboseliserenasafarilodge1.jpg', 'Amboseli Serena Safari Lodge', 'gallery'),
(254, 'amboseli-serena-safari-lodge6.jpg', 'Amboseli Serena Safari Lodge Interior', 'gallery'),
(255, '06-mahali-mzuri-tent.jpg', 'Mahali Mzuri Tent', 'gallery'),
(256, 'hippopoolbreakfast.jpg', 'Mara Serena Hippo Pool Breakfast', 'gallery'),
(257, 'balloonsafaris.jpg', 'Air Balloon Safaris The Mara', 'slider'),
(258, 'sundowner3.jpg', 'Sundowner', 'gallery'),
(260, 'villagevisits.jpg', 'Village Visits', 'gallery'),
(261, 'dancersbomas.jpg', 'Dancers Bomas of Kenya', 'gallery'),
(262, 'naturewalks.jpg', 'Nature Walks', 'gallery'),
(263, 'bomasofkenya13.jpg', 'Bomas of Kenya', 'gallery'),
(264, 'baloonflightmaraserena.jpg', 'Balloon Flight Mara Serena', 'gallery'),
(265, 'davisandsheldrick.jpg', 'David Sheldrick Wildlife Trust', 'gallery'),
(266, 'bush-dinner.jpg', 'Bush Dinner', 'gallery'),
(267, 'tz-3.jpg', 'Zanzibar', 'gallery'),
(269, 'mountkenya.jpg', 'Mt. Kenya', 'slider'),
(270, 'diani2.jpg', 'Diani Beach', 'slider'),
(271, 'chyulu-hills.jpg', 'Chyulu Hills', 'gallery'),
(272, 'hellsgateimg2.jpg', 'Hell\'s Gate National Park', 'slider'),
(273, 'ngorongoro.jpg', 'Ngorongoro Conservation Area', 'gallery'),
(275, 'mzimasprings.jpg', 'Mzima Springs', 'gallery'),
(276, 'teafarm.jpg', 'Tea Farm', 'gallery'),
(277, 'lion3.jpg', 'Lions', 'gallery'),
(278, 'rhino...jpg', 'Rhino', 'gallery'),
(279, 'greyheron.jpg', 'Grey heron', 'gallery'),
(281, 'flamingo.jpg', 'Flamingos Lake Nakuru ', 'gallery'),
(282, 'flamingo2.jpg', 'Flamingos', 'gallery'),
(283, 'reticulated.jpg', 'Reticulated Giraffe', 'gallery'),
(284, 'b6.jpg', 'Buffalos', 'gallery'),
(285, 'cheeter.jpg', 'Cheetahs', 'gallery'),
(286, 'safari.jpg', 'Elephants Amboseli National Park', 'gallery'),
(287, 'zebras.jpg', 'Zebras', 'gallery'),
(288, 'rhino.jpg', 'Rhinos', 'gallery'),
(289, 'tawnyeagle.jpg', 'Tawny Eagle', 'gallery'),
(290, 'giraffekenya.jpg', 'Giraffe', 'gallery'),
(291, 'syikes-monkey.jpg', 'Sykes\' monkey', 'gallery'),
(292, 'zebra.jpg', 'Zebra', 'gallery'),
(293, 'rhinos.jpg', 'Rhinos', 'gallery'),
(294, 'dramatic-wildebeest-crossing.jpg', 'Dramatic Wildebeest Crossing', 'gallery'),
(295, 'ostrichfamily.jpg', 'Ostrich Family', 'gallery'),
(296, 'rhino-olpejetta.jpg', 'Rhinos Ol Pejeta Conservancy', 'gallery'),
(297, 'sunbird.jpg', 'Sunbird', 'gallery'),
(298, 'rhino.......jpg', 'Rhino', 'gallery'),
(299, 'a5332fb8423f0376b22f92c93e66700c.jpg', 'Leopard', 'gallery'),
(300, 'ostrich2.jpg', 'Ostriches', 'gallery'),
(301, 'redelephantelephantstsavokenyaafrica9.jpg', 'Elephant at Tsavo', 'gallery'),
(302, 'rhino4.jpg', 'Rhinos', 'gallery'),
(303, 'ostrich.jpg', 'Ostriches', 'gallery'),
(304, 'p04lx1mf.jpg', 'Elephant', 'gallery'),
(305, 'oxpeckers.jpg', 'Oxpeckers', 'gallery'),
(306, 'redelephants.jpg', 'Red Elephants at Tsavo National Park', 'gallery'),
(307, 'aweaverbirdatwork.jpg', 'A Weaver Bid at work', 'gallery'),
(308, 'patas-monkey.jpg', 'Patas monkey', 'gallery'),
(309, 'redelephantelephantstsavokenyaafrica15.jpg', 'Red Elephant Tsavo Kenya', 'gallery'),
(311, 'masai-mara8.jpg', 'Elephants at Masai Mara', 'gallery'),
(312, 'nairobinationalparkgiraffe.jpg', 'Giraffe at Nairobi National Park', 'gallery'),
(313, 'rhino3.jpg', 'White Rhinos', 'gallery'),
(314, 'ostrich3.jpg', 'Ostrich', 'gallery'),
(315, 'o-rhino-kenya.jpg', 'Rhinos', 'gallery'),
(316, 'maraboustork.jpg', 'Marabou stork', 'gallery'),
(317, 'lion.jpg', 'Lion', 'gallery'),
(318, 'monkey2.jpg', 'De Brazza\'s monkey', 'gallery'),
(319, 'monkey3.jpg', 'Black-and-white colobuses', 'gallery'),
(320, 'monkey.jpg', 'De Brazza\'s monkey', 'gallery'),
(321, 'masai-mara-in-kenya-three-zebras-animals.jpg', 'masai-mara-in-kenya-three-zebras-animals', 'gallery'),
(322, '2.jpg', 'Rhinos', 'gallery'),
(323, 'lion5.jpg', 'Lion', 'gallery'),
(324, 'lilac-breasted-rollerbird.jpg', 'Lilac-breasted roller', 'gallery'),
(325, 'lion4.jpg', 'Lionesses', 'gallery'),
(326, 'lion....jpg', 'Lion', 'gallery'),
(327, 'leo.jpg', 'Leopard', 'gallery'),
(328, 'leopard.jpg', 'Leopard', 'gallery'),
(329, 'giraffe-masai-mara.jpg', 'Giraffe at Masai Mara', 'gallery'),
(330, 'lion2.jpg', 'Lions', 'gallery'),
(331, 'africaneagle-lakebaringo.jpg', 'African Eagle', 'gallery'),
(332, 'hippo.jpg', 'Hippopotamus', 'gallery'),
(333, 'kiboko.jpg', 'Hippopotamus', 'gallery'),
(334, 'kingfisher1.jpg', 'Kingfisher', 'gallery'),
(335, 'kingfisher.jpg', 'Kingfisher', 'gallery'),
(336, 'africanhedgehog.jpg', 'African Hedgehog', 'gallery'),
(337, 'africanbuffalo3.jpg', 'African Buffalo', 'gallery'),
(338, 'giraffes-masai-mara2.jpg', 'Giraffes at Masai Mara', 'gallery'),
(339, 'jacksons-widow-bird.jpg', 'Jackson\'s widowbird', 'gallery'),
(340, 'elephant-.jpg', 'Elephant', 'gallery'),
(341, 'kenya-wildlife-elephants-111.jpg', 'Elephants at Amboseli National Park', 'gallery'),
(342, 'grevy1rongeatzzebra.jpg', 'Grévy\'s zebra', 'gallery'),
(343, 'hippohead.jpg', 'Hippo Head', 'gallery'),
(344, 'kenya-peacock-birds.jpg', 'Kenya peacock birds', 'gallery'),
(345, 'kenyavulturebird.jpg', 'Kenyan Vulture', 'gallery'),
(346, 'elepantandcub.jpg', 'Elephant and a cub', 'gallery'),
(347, 'kenya-calls-out-gay-lions-e1509715225110.jpg', 'Lion', 'gallery'),
(348, 'amboseli-np.jpg', 'Elephants at Amboseli', 'gallery'),
(349, 'gettyimages-117099314.jpg', 'Wildebeest', 'gallery'),
(350, 'hdwallpaperanimalgiraffes-1366x768.jpg', 'Giraffes', 'gallery'),
(351, 'flamingo(2).jpg', 'Flamingo', 'gallery'),
(352, 'ele.jpg', 'Elephants', 'gallery'),
(353, 'elephant7.jpg', 'Elephant', 'gallery'),
(354, 'giraffe......jpg', 'Giraffe', 'gallery'),
(355, 'buffalos.jpg', 'Buffalos', 'gallery'),
(356, 'crocodile2.jpg', 'Crocodiles', 'gallery'),
(357, 'elephant.jpg', 'Elephant', 'gallery'),
(358, 'giraffe.jpg', 'Giraffe', 'gallery'),
(360, 'crocodile5.jpg', 'Crocodiles', 'gallery'),
(361, 'elepahnt-amboseli.jpg', 'Elephant', 'gallery'),
(362, '1515601733546-11985592964e03b54dba1o.jpeg', 'Elephants', 'gallery'),
(363, 'buffalo.jpg', 'Buffalo', 'gallery'),
(364, 'rhino3(1).jpg', 'Rhinos', 'gallery'),
(365, 'crocodile.jpg', 'Crocodile', 'gallery'),
(366, 'babyelephant.jpg', 'Elephant', 'gallery'),
(368, 'crocodile4.jpg', 'Crocodile', 'gallery'),
(370, '1515601733546-11985592964e03b54dba1o(1).jpeg', 'Elephants', 'gallery'),
(371, 'bird4.jpg', 'Guinea fowl', 'gallery'),
(372, 'butterfly.jpg', 'Butterfly', 'gallery'),
(373, '2lions.jpg', 'Lions', 'gallery'),
(374, 'bird.jpg', 'Guinea fowl', 'gallery'),
(375, 'aweaverbirdatwork(1).jpg', 'Weaver Bird', 'gallery'),
(376, 'buffalo4.jpg', 'Buffalo', 'gallery'),
(377, 'a5332fb8423f0376b22f92c93e66700c(1).jpg', 'Leopard', 'gallery'),
(378, 'blackrhinoskenya.jpg', 'Rhinos', 'gallery'),
(379, 'bongo-at-mount-kenya-3.jpg', 'Bongo', 'gallery'),
(380, 'bird2.jpg', 'Colourful Parrot', 'gallery'),
(381, 'bird7.jpg', 'Bird', 'gallery'),
(382, 'africaneagle-lakebaringo(1).jpg', 'African Eagle', 'gallery'),
(383, 'africanbuffalo3(1).jpg', 'African Buffalo', 'gallery'),
(384, 'babyelephant(1).jpg', 'Calf', 'gallery'),
(385, 'africanhedgehog(1).jpg', 'African Hedgehog', 'gallery'),
(386, 'birds8.jpg', 'Vulture Guinea Fowl', 'gallery'),
(388, 'slider1.jpg', 'Zebras', 'slider'),
(390, 'slider3.jpg', 'Olare Mara Kempinski', 'slider'),
(391, 'slider4.jpg', 'Karuru waterfall', 'slider'),
(392, 'slider5.jpg', 'Zebras', 'slider'),
(393, 'slider6.jpg', 'Flamingos', 'slider'),
(395, 'kilimanjaro.jpg', 'Mt. Kilimanjaro', 'places'),
(396, 'Lake_Nakuru.jpg', 'Rhino at Lake Nakuru National Park', 'places'),
(397, 'marariver.jpg', 'Wildebeest migration at Masai Mara', 'places'),
(399, 'serengeti.jpg', 'Serengeti', 'places'),
(400, 'cottage1.jpg', 'Cottage off Nyeri-Karatina Road', 'gallery'),
(401, 'cottage2.jpg', 'Cottage off Karatina Nyeri Road', 'gallery'),
(402, 'cottage_night.jpg', 'Cottage off Karatina Nyeri Road', 'gallery');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users`, `name`, `email`, `password`) VALUES
(4, 'amshel', 'amshelhack3r@gmail.com', 'eyJpdiI6IkxoUFwvdzB4UGd6aDR2YjF2T0crOElnPT0iLCJ2YWx1ZSI6InBTYW10OU9NbDZ5WG5sa2k0bWFCSXM0T3RyZCtYUkd2MUtyZXgyRkhiR3M9IiwibWFjIjoiNDAyOGJmNTRkMjY3MDE5NzliNDdkMzc3OTk1MmYxODVjMGNmMjFhYTdmNDcyYTAxMTdlODI2MGRlMGRkZDhjYyJ9'),
(5, 'mountaintop', 'mountaintopsafaris@gmail.com', 'eyJpdiI6IlwvUVdqM3d1clRPTkNwTFpYRVpudFV3PT0iLCJ2YWx1ZSI6InNQZFBPYmNjcnpBUThlckNxXC8zR3pBPT0iLCJtYWMiOiI1YTI1ZDMwMTU5ZjdhYjZjYzEzNTkzZjdkZTMwOTQyMjkxZGEyODljZTA5OTQ4ZWU5ZjM4NzdkMmM1ZGQ2OTZlIn0=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client`),
  ADD UNIQUE KEY `id` (`phone_no`,`date`),
  ADD UNIQUE KEY `id2` (`email`,`date`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`itinerary`),
  ADD UNIQUE KEY `id` (`title`,`image`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`picture`),
  ADD UNIQUE KEY `identification` (`name`,`location`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users`),
  ADD UNIQUE KEY `identification` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `itinerary` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `picture` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
