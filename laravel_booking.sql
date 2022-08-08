-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 08:41 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `image`, `title`, `slug`, `status`, `description`, `created_at`, `updated_at`, `expire_date`) VALUES
(1, 1, 'images/EWtNDhH47XcCKSxg.jpeg', 'Hideaway Beach & Spa Resort', 'hideaway-beach-spa-resort', 1, 'Guests arriving in their own yacht will find all the facilities they need at Hideaway Beach Resort and Spa Marina – the fully equipped, state-of-the-art marina built by Walcon Marine.\nDuring their stay on the crescent-shaped island, families and couples can enjoy excursions including a trip on Penguin, the Maldives’ first semi-submarine.\n\nThere is also snorkelling, scuba diving, yoga and a fitness centre as well as Hideaway Shopping, a selection of boutiques where guests will find everything from sports gear to Maldivian art.\n\nFishing lessons, crab races and Dhoni cruises are just some of the activities to keep children amused at Tender Hearts Kids’ Club.', '2022-08-03 15:28:57', '2022-08-08 12:04:05', '2023-02-17 19:00:00'),
(2, 1, 'images/m8klgYfpWsScvQOe.jpeg', 'Angsana Ihuru', 'angsana-ihuru', 1, 'Angsana Ihuru is a glittering jewel on the North Malé Atoll in the Maldives and is thought to be one of the most picturesque islands in the Indian Ocean. Due to its true castaway feel, it is fast becoming known as one of the most romantic destinations in the world.\n\nThe Angsana Ihuru resort is a true island paradise set upon gorgeous turquoise waters and rich green tropical vegetation.', '2022-08-03 18:14:36', '2022-08-08 12:04:33', '2023-01-17 19:00:00'),
(5, 1, 'images/jAfYTBXoRxxKKoCB.jpeg', 'Shangri – La’s Villingili', 'shangri-las-villingili', 1, 'Shangri La Villingili is a luxury five star property located at the Southern tip of Maldives in Addu atoll. It is a great choice for couples, families and groups with a large selection of 2 bedroom villas to choose from. The island is one of the few to have a 9 hole golf course and offer golf lessons to in house guests. The island is also only a few minutes from Gan International Airport and is the perfect choice for those who are doing a twin center holiday with Sri Lanka and want to skip the busy Male’ International Airport.', '2022-08-08 10:54:32', '2022-08-08 11:12:21', '2022-12-11 19:00:00'),
(6, 1, 'images/IbhkaeH66bXAMoL3.jpeg', 'Bandos', 'bandos', 1, 'The island of Bandos is considered home to one of the most beautiful house reefs in the North Malé Atoll. Guests can immerse themselves in this unique underwater world by snorkelling or scuba diving just a few metres from the beach.\n\nFor those that like to stay fit and healthy, the Clubhouse sports complex includes flood-lit courts and a fitness suite. Guests seeking some downtime can relax in the entertainment and lounge area and catch up on news, sport and film.', '2022-08-08 11:05:32', '2022-08-08 11:05:32', '2022-11-10 19:00:00'),
(7, 1, 'images/owb62w4ALeHVBKIn.jpeg', 'Canareef', 'canareef', 1, 'Canareef Resort is a beautiful resort boasting 25 different dive site locations.\nSuitable for families, couples and groups of adults, the resort provides guests with the opportunity to explore the surrounding lagoon with Dolphin cruises, snorkelling, sunset fishing and a host of other water sports on offer.', '2022-08-08 11:11:23', '2022-08-08 11:11:23', '2022-10-09 19:00:00'),
(8, 1, 'images/qiptQuItJYQyLpr0.jpeg', 'Dhigufaru Island Resort', 'dhigufaru-island-resort', 1, 'Found on the protected UNESCO Biosphere Reserve of Baa Atoll, is Dhigufaru Island meaning “a long reef”.\n\nThe resort makes the most of its location, offering guests the chance to explore the waters on a canoe or visit the in-house dive school to discover the vibrant marine life of Baa Atoll Marine Biosphere.\nTravellers can also enjoy the Kakuni Recreation Centre which features a gym, karaoke room, and games.', '2022-08-08 11:15:37', '2022-08-08 11:16:44', '2022-12-31 19:00:00'),
(9, 1, 'images/0hX3JQbfUlJEbcRs.jpeg', 'Equator Village', 'equator-village', 1, 'Equator Village can be found nestled amongst one of the largest and most interestingly formed atolls in the Maldives, Addu Atoll. With its alluring tropical beauty, it’s not the typical Maldivian resort – it’s an equatorial escape into a land of culture and nature combined.', '2022-08-08 11:22:12', '2022-08-08 11:22:12', '2022-09-17 19:00:00'),
(10, 1, 'images/CpfTATFk4LiKmwyy.jpeg', 'Filitheyo Island Resort', 'filitheyo-island-resort', 1, 'Filitheyo is a gorgeous island resort in Faafu Atoll in the Maldives. It is a small little island that used to be coconut palm plantation with an excellent house reef, a divers dream. With comfortable rooms, good restaurants and an excellent spa, it offers a great affordable holiday in the Maldives.', '2022-08-08 11:29:40', '2022-08-08 11:29:40', '2022-12-31 19:00:00'),
(11, 1, 'images/hw2i8vBRymqwN7Uc.jpeg', 'Gili Lankanfushi', 'gili-lankanfushi', 1, 'Gili Lankanfushi was rated the best hotel in the world on TripAdvisor in 2015 and is still one of the top-rated hotels in The Maldives.\nKnown for its rustic overwater villas and as one of the first barefoot luxury resorts, the resort offers a wonderfully laid back atmosphere and hosts a range of activities from cooking classes, sunset yoga, sandbank picnics, and private movie screenings.', '2022-08-08 11:36:09', '2022-08-08 11:36:09', '2023-02-17 19:00:00'),
(12, 1, 'images/zNfbVOOcgyR1m14u.jpeg', 'Joali', 'joali', 1, 'The recently opened Joali resort is ideal for family vacations. The smallest accommodation option sleeps three; with some villas being equipped with two pools and one four-bedroom beach duplex, ideal for larger families. The island boasts a world-class selection of child-friendly amenities and activities, such as a treehouse, spa for kids, junior cookery school and ice-cream shop, plus treasure hunts and native storytelling sessions around a campfire. Not forgetting the adults, activities include dhoni excursions, water skiing, snorkelling and diving.', '2022-08-08 11:41:34', '2022-08-08 11:41:34', '2022-12-31 19:00:00'),
(15, 1, 'images/jMT2T8tFq3yB73bi.jpeg', 'Kandima', 'kandima', 1, 'Located in the Dhaalu Atoll, the Kandima resort is a game-changing destination. Whether travellers seek relaxation, adventure, wellbeing, sport, spa experiences or family time, Kandima is the perfect place', '2022-08-08 11:46:31', '2022-08-08 11:50:09', '2022-12-31 19:00:00'),
(16, 1, 'images/Z2dt392EIXfSAKTv.jpeg', 'Paradise Island', 'paradise-island', 1, 'Paradise Island Resort is an award-winning retreat located amongst the North Male Atoll.\nThe large resort offers a range of accommodation, all with breath-taking views of the Indian Ocean, including over-water villas and beach suites.', '2022-08-08 11:58:18', '2022-08-08 11:58:18', '2023-02-17 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `booking_answers`
--

CREATE TABLE `booking_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_answers`
--

INSERT INTO `booking_answers` (`id`, `booking_id`, `start_date`, `end_date`) VALUES
(14, 1, '2022-08-08 12:06:12', '2022-08-08 12:06:12'),
(15, 2, '2022-08-08 12:08:52', '2022-08-08 12:08:52'),
(16, 5, '2022-08-08 12:12:28', '2022-08-08 12:12:28'),
(17, 6, '2022-08-08 12:15:26', '2022-08-08 12:15:26'),
(18, 7, '2022-08-08 12:18:35', '2022-08-08 12:18:35'),
(19, 16, '2022-08-08 12:22:35', '2022-08-08 12:22:35'),
(20, 12, '2022-08-08 12:27:14', '2022-08-08 12:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `booking_questions`
--

CREATE TABLE `booking_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_questions`
--

INSERT INTO `booking_questions` (`id`, `type`, `question`, `description`, `data`, `booking_id`, `created_at`, `updated_at`) VALUES
(1, 'select', 'Hotel Stays', 'There are 103 suites to choose from which are either set on the beach or on stilts over our lagoon.\nEach of the ten different styles of villas to choose from has its own butler and a pair of bicycles to borrow.', '{\"options\":[{\"uuid\":\"c9c746b9-8f18-4550-8ee6-6adf74d531ae\",\"text\":\"VIP Suite\"},{\"uuid\":\"91070c35-8218-4688-8210-e5ee4274be0a\",\"text\":\"Family Suite\"}]}', 1, '2022-08-03 15:38:38', '2022-08-03 15:38:38'),
(2, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"92bcfc18-1b24-49a3-ac89-c11d5ccd3948\",\"text\":\"Water Sports\"},{\"uuid\":\"99b4b907-064a-443a-9518-e8742dea6a6a\",\"text\":\"Spa\"},{\"uuid\":\"910c435d-fdb6-4a4d-8545-58bd2610b413\",\"text\":\"Bike Riding\"}]}', 1, '2022-08-03 15:38:38', '2022-08-03 18:05:11'),
(3, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"c9c446b9-8f18-4550-8ee6-6adf74d531ae\",\"text\":\"Sea Plane\"},{\"uuid\":\"91170c35-8218-4688-8210-e5ee4274be0a\",\"text\":\"Domestic Flight\"},{\"uuid\":\"91270c35-8218-4688-8210-e5ee4274be0a\",\"text\":\"Speed Boat\"}]}', 1, '2022-08-03 15:38:38', '2022-08-08 12:04:05'),
(4, 'select', 'Hotel Stays', 'There are 45 villas are dotted around the island, boasting panoramic views of the Indian Ocean.', '{\"options\":[{\"uuid\":\"5e1d510b-f625-4266-bcfb-f40bcea52811\",\"text\":\"Family Suite\"},{\"uuid\":\"4efc964b-8975-43e5-a8fb-283ae798301e\",\"text\":\"Honeymooners Suite\"},{\"uuid\":\"88e2afa1-73f9-4f1c-8505-7f3210462dd3\",\"text\":\"VIP Suite\"}]}', 2, '2022-08-08 10:41:06', '2022-08-08 10:41:06'),
(5, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"25b7c43e-83cf-4b14-9e96-2024cec27075\",\"text\":\"Water Sports\"},{\"uuid\":\"9c4bcf82-9e43-4d5c-bd7f-1685411cb8f6\",\"text\":\"Diving\"},{\"uuid\":\"6d82b648-05c1-4c6a-b099-87350ecc4ec4\",\"text\":\"Spa\"}]}', 2, '2022-08-08 10:41:06', '2022-08-08 11:11:54'),
(6, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"d8973c1c-c1df-4b52-8747-eccd5b0e9e6d\",\"text\":\"Sea Plane\"},{\"uuid\":\"9cc1eaad-2aa6-4f48-af1e-2e8a9a59e812\",\"text\":\"Domestic Flight\"},{\"uuid\":\"3e17c5ca-4cb6-4ec4-ac2c-43ed0ff611ec\",\"text\":\"Speed Boat\"}]}', 2, '2022-08-08 10:41:06', '2022-08-08 10:41:06'),
(7, 'select', 'Hotel Stays', 'The resort consists of villas ranging from 133 to 957 sqm in size, with the majority accommodating up to two adults and two children. A few villas to note are the  two-bedroom beach villas with an infinity pool, great for families and groups, the over water villas which are extremely private and the ocean view treehouse villas positioned on stilts among the treetops.', '{\"options\":[{\"uuid\":\"dbce260e-632d-4ed2-87bb-ecffc2198ecf\",\"text\":\"Family Suite\"},{\"uuid\":\"6348a2b2-f1f9-4776-a1f0-fed108defbd1\",\"text\":\"Honeymooners Suite\"}]}', 5, '2022-08-08 10:54:32', '2022-08-08 10:54:32'),
(8, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"2e1a767c-1aa9-4781-b3af-3ed2ac195407\",\"text\":\"Spa\"},{\"uuid\":\"4d8c2009-5c98-487a-a179-1177d83140cf\",\"text\":\"Golf\"},{\"uuid\":\"38ad2b46-948e-4574-bfb0-86d1d65e1f9d\",\"text\":\"Luxury Yacht\"},{\"uuid\":\"3403b08d-016f-4ad3-be78-f25b05658ed9\",\"text\":\"Koi Fish Feeding\"},{\"uuid\":\"ad5a081b-3470-46e1-947b-ea40fddaff73\",\"text\":\"Cultural Tour\"}]}', 5, '2022-08-08 10:54:32', '2022-08-08 11:12:21'),
(9, 'select', 'Transport', 'There are currently 2 ways to travel.', '{\"options\":[{\"uuid\":\"b2f00672-8e8a-46ea-9ecc-db5788203944\",\"text\":\"Spead Boat\"},{\"uuid\":\"0488232b-d5dc-4706-a999-6509c1cd91a1\",\"text\":\"Domestic Flight\"}]}', 5, '2022-08-08 10:54:32', '2022-08-08 10:54:32'),
(10, 'select', 'Hotel Stays', 'Comfort, luxury and convenience are at the forefront of each of the 225 rooms that are available within the Bandos resort.\nThe numerous types of accommodation on offer reflect a diversity of tastes and requirements of the resort’s clientele.', '{\"options\":[{\"uuid\":\"4e71071f-e10c-4a83-b079-ca550d4f871d\",\"text\":\"Classic Room\"},{\"uuid\":\"a095503d-2068-410c-b1f0-d3d37c2d8534\",\"text\":\"Standard Room\"},{\"uuid\":\"b93c953d-201c-4aef-a77d-51e4df81749c\",\"text\":\"Deluxe Room\"},{\"uuid\":\"23d6085e-00ab-4b8c-8f68-ea2b1658f513\",\"text\":\"Garden Villa\"},{\"uuid\":\"99f43681-e3f3-405c-ac63-f97ae1d566a9\",\"text\":\"Jacuzzi Beach Villa\"},{\"uuid\":\"378bf69b-8216-4bf4-9c27-928ae08336a3\",\"text\":\"Jacuzzi Pool Villa\"},{\"uuid\":\"74a9531e-161b-4bcb-8b8b-ba0f158c0b0d\",\"text\":\"Water Villa\"}]}', 6, '2022-08-08 11:05:32', '2022-08-08 11:05:32'),
(11, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"bf8817df-027e-471e-81aa-96077ea93fe5\",\"text\":\"Diving\"},{\"uuid\":\"ebd31fb7-706c-4d02-a19d-f8d0c7b4de98\",\"text\":\"Sunset Dolphin Cruise\"},{\"uuid\":\"e5978c2a-2451-455e-93c4-298d0a3800f5\",\"text\":\"Glass-Bottom Boat Ride\"},{\"uuid\":\"efa92b69-0d64-4ae0-8a28-376d4f4f4767\",\"text\":\"Whale Shark Expedition.\"}]}', 6, '2022-08-08 11:05:32', '2022-08-08 11:05:32'),
(12, 'select', 'Transport', 'There are currently 2 ways to travel.', '{\"options\":[{\"uuid\":\"9e06db23-674b-41ea-a119-0b37bf30ef18\",\"text\":\"Speed Boat\"},{\"uuid\":\"807bde1e-84a9-4c78-8b5f-074cfd95edae\",\"text\":\"Sea Plane\"}]}', 6, '2022-08-08 11:05:32', '2022-08-08 11:05:32'),
(13, 'select', 'Hotel Stays', 'Canareef Resort comprises 271 wooden bungalows.', '{\"options\":[{\"uuid\":\"e95b8e68-ee30-40a9-9b19-1716d455a85b\",\"text\":\"Sunrise Villa\"},{\"uuid\":\"172a67f7-ea9e-4676-b23c-22a519203e34\",\"text\":\"Sunset Beach Villa\"},{\"uuid\":\"83a1c74f-ebf6-4b80-915f-d3cc2abd7968\",\"text\":\"Jacuzzi Villa\"}]}', 7, '2022-08-08 11:11:23', '2022-08-08 11:11:23'),
(14, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"dd9647ca-ce28-4c5d-9486-a3e969313fee\",\"text\":\"Wind Surfing\"},{\"uuid\":\"b14d855a-c09d-4103-8a8a-47ac39bf9281\",\"text\":\"Canoeing\"},{\"uuid\":\"fc5b3beb-36d3-4705-8db5-691c23c21c52\",\"text\":\"Jet-Skiing\"},{\"uuid\":\"060f5ced-0dc2-4b87-8f40-51f575703318\",\"text\":\"Snorkeling\"},{\"uuid\":\"aa6862a0-f65d-4ff5-a3f8-c9d934f184df\",\"text\":\"Spa\"},{\"uuid\":\"3d33a349-15aa-43e7-9bda-1dfeeea33585\",\"text\":\"Tennis\"},{\"uuid\":\"15e442c0-c7c2-4a32-a559-52ecaa15555c\",\"text\":\"Gym\"}]}', 7, '2022-08-08 11:11:23', '2022-08-08 11:11:23'),
(15, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"56c2b482-9501-4c2b-afbc-b871bb065309\",\"text\":\"Domestic Flight\"},{\"uuid\":\"24067744-adde-4ebb-98bf-01c6eda5ecda\",\"text\":\"Speed Boat\"},{\"uuid\":\"b6bc7001-0fd5-4b56-8022-71d6695aeffe\",\"text\":\"Sea Plane\"}]}', 7, '2022-08-08 11:11:23', '2022-08-08 11:11:23'),
(16, 'select', 'Hotel Stays', 'Staying at a Beach Villa, guests will see either the eastern facing Boaku or Veli beach.', '{\"options\":[{\"uuid\":\"bfa75826-4a61-4ec5-beb6-a32d3b27f007\",\"text\":\"Family Suite\"},{\"uuid\":\"b9dbdb67-bbfb-4539-9e6e-5b95dfcb9497\",\"text\":\"Honeymooners Suite\"}]}', 8, '2022-08-08 11:15:37', '2022-08-08 11:15:37'),
(17, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"6cb2fa0e-252d-4db2-b6d0-50814016f1ac\",\"text\":\"Spa\"},{\"uuid\":\"67191153-0c4b-40e0-b12f-c032e924400f\",\"text\":\"Diving\"},{\"uuid\":\"4c9db7c7-0ab0-4349-8bc4-2c1de9cf7798\",\"text\":\"Water Sport\"}]}', 8, '2022-08-08 11:15:37', '2022-08-08 11:16:44'),
(18, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"2234a3d7-66c4-4da2-8c3d-f66dbd46464f\",\"text\":\"Domestic Flight\"},{\"uuid\":\"a6c1f56b-baf8-4c8f-afb2-c037d8d4168b\",\"text\":\"Speed Boat\"},{\"uuid\":\"4b544983-c4a3-48ac-a2ef-aabc7b96bfa1\",\"text\":\"Sea Plane\"}]}', 8, '2022-08-08 11:15:37', '2022-08-08 11:16:44'),
(19, 'select', 'Hotel Stays', 'The accommodation at Equator Village is chic with a European twist. Tree-lined pathways intertwining through charming courtyard gardens lead to 78 spacious bungalows.', '{\"options\":[{\"uuid\":\"1f83a327-ef7d-4da3-a635-50918b7c8c78\",\"text\":\"Family Suite\"},{\"uuid\":\"09f8ee47-a1bd-44dc-863e-e31496b50c46\",\"text\":\"Couple Suite\"},{\"uuid\":\"b3e1763a-c552-4fdc-8af9-1a1f07100e74\",\"text\":\"Diver Suite\"}]}', 9, '2022-08-08 11:22:12', '2022-08-08 11:22:12'),
(20, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"7ce2b8ec-c0f8-4993-bab1-423aba3357ce\",\"text\":\"Water Sports\"},{\"uuid\":\"c24b6be1-e9f0-4eee-84fc-ce07b44bf81e\",\"text\":\"Diving\"},{\"uuid\":\"59494b6a-d7d2-47f5-a9c7-f98eff3a8ade\",\"text\":\"Spa\"},{\"uuid\":\"ae9bb258-d513-4b4f-b3f9-cdbdf0b40090\",\"text\":\"Historical Sights Tour\"}]}', 9, '2022-08-08 11:22:12', '2022-08-08 11:22:12'),
(21, 'select', 'Travel', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"539356f6-7b81-4b1c-88e7-c68647b97dc8\",\"text\":\"Domestic Flight\"},{\"uuid\":\"312dd0af-16c8-499f-85ec-4efbb75b576c\",\"text\":\"Speed Boat\"},{\"uuid\":\"7b0a97fb-cbf2-45ae-ab0e-fb00c7dd908c\",\"text\":\"Sea Plane\"}]}', 9, '2022-08-08 11:22:12', '2022-08-08 11:22:12'),
(22, 'select', 'Hotel Stays', 'For those traveling as a family, Filitheyo can make them well accommodated for. Their Deluxe Villa is an impressive 111m2 and can host 2 adults and a child, providing the splendour of simply opening their doors to view an infinite beach stretching into the distance. The Superior Villa is also accommodating for families and allows visitors to embrace the both luxury and elegance. Honeymooners or those just looking to enjoy a romantic trip can find the resorts Water Villa’s a stylish and chic choice.', '{\"options\":[{\"uuid\":\"9165bd47-54f9-42e3-b12c-aa76215d969d\",\"text\":\"Deluxe Villa\"},{\"uuid\":\"e1580290-639d-464f-b718-6c010c12cd29\",\"text\":\"Superior Villa\"},{\"uuid\":\"b4b068cd-f2c7-4a2f-ab7e-56d0fbe9bbf4\",\"text\":\"Water Villa\"}]}', 10, '2022-08-08 11:29:40', '2022-08-08 11:29:40'),
(23, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"aeace8f0-6f0f-4bc3-8f88-8035a6b5f948\",\"text\":\"Spa\"},{\"uuid\":\"607bfab7-1b4c-4866-a9ab-8c5976f814fb\",\"text\":\"Diving\"},{\"uuid\":\"c838c775-76b5-4cb7-a32b-21481a14015a\",\"text\":\"Snorkeling\"},{\"uuid\":\"cc21de39-3716-46ce-b066-efb84ee644af\",\"text\":\"Surfing\"},{\"uuid\":\"dab19739-5c62-429d-9600-ea093112a4e5\",\"text\":\"Canoeing\"},{\"uuid\":\"da7f6548-5250-47c9-96f1-7f50cc65fa42\",\"text\":\"Volleyball\"}]}', 10, '2022-08-08 11:29:40', '2022-08-08 11:29:40'),
(24, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"bc9959f7-91eb-4e17-b1a6-8b3effd3bfb3\",\"text\":\"Speed Boat\"},{\"uuid\":\"d62a19c0-958a-4606-8071-b9ec2cf5558d\",\"text\":\"Domestic Flight\"},{\"uuid\":\"c7bbe323-f35d-41b9-9a30-0285e439a396\",\"text\":\"Sea Plane\"}]}', 10, '2022-08-08 11:29:40', '2022-08-08 11:29:40'),
(25, 'select', 'Hotel Stays', 'Gili Lankanfushi is made up of 5 types of over-water villas', '{\"options\":[{\"uuid\":\"51546dd4-3ed6-49ef-aaed-a8ab77503967\",\"text\":\"Villa Suites\"},{\"uuid\":\"5fb84792-e24c-4bb4-80bc-0000e32c568f\",\"text\":\"Gili Lagoon Villas\"},{\"uuid\":\"c343db28-54f4-4ca7-943f-bb0dc14d4877\",\"text\":\"Gili Lagoon Residences\"},{\"uuid\":\"1ee9b4f5-18be-41e1-b167-a47d9cf961a3\",\"text\":\"The Crusoe Residences\"},{\"uuid\":\"a00b397e-acad-4318-b50b-28026e74baa1\",\"text\":\"The Private Reserve\"}]}', 11, '2022-08-08 11:36:09', '2022-08-08 11:36:09'),
(26, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"80e2c940-17b2-4a11-b9b4-a3da9d176e9e\",\"text\":\"Spa\"},{\"uuid\":\"4b15ef86-1a46-4d76-a74c-1eec41063718\",\"text\":\"Diving\"},{\"uuid\":\"a9b76760-ce87-4adb-b6e3-c92a80bfc442\",\"text\":\"Cooking Class\"},{\"uuid\":\"f7469cb6-81ae-43f4-bd8c-5a6fa2c6d9d9\",\"text\":\"Sunset Yoga\"},{\"uuid\":\"7fc0d56f-22ce-425a-bfb6-8e179ed23b1c\",\"text\":\"Sandbank Picnic\"},{\"uuid\":\"90fe9439-52ba-4ca3-9775-9eb44d62236c\",\"text\":\"Private Movie Screenings\"}]}', 11, '2022-08-08 11:36:09', '2022-08-08 11:36:09'),
(27, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"eeb4030b-1219-4adb-b420-361a07368acf\",\"text\":\"Sea Plane\"},{\"uuid\":\"53e0f221-3356-452e-8174-8b828e0a5982\",\"text\":\"Speed Boat\"},{\"uuid\":\"db5e01ae-31e5-4993-8141-48db65a01fad\",\"text\":\"Domestic Flight\"}]}', 11, '2022-08-08 11:36:09', '2022-08-08 11:36:09'),
(28, 'select', 'Hotel Stays', 'Joali comprises of a mix of water villas or beach villas.\nIf guests would like to keep their feet on the ground, each beach villa includes a natural vibe to compliment the décor.\nThe lavish suite, in particular, comes with a private infinity pool and a cosy private library.\nFor the water villas, guests can stay above the turquoise sea, where each different type of villa offers something new that another villa may not.\nMost host a private infinity pool, art lighting and mood control system and private decking.', '{\"options\":[{\"uuid\":\"4cf1677e-761e-4e3f-8ecf-2def0d8a642e\",\"text\":\"Water Villa\"},{\"uuid\":\"3b45f6f6-497d-4e75-bf26-b8d3b4cac15d\",\"text\":\"Beach Villa\"},{\"uuid\":\"b333d44e-afba-4265-8993-36aaf2e0b500\",\"text\":\"Lavish Suite\"}]}', 12, '2022-08-08 11:41:34', '2022-08-08 11:41:34'),
(29, 'checkbox', 'Activities', 'Joali island has everything to offer for all personal tastes. Places to visit and experience include:', '{\"options\":[{\"uuid\":\"140929a4-d20d-4f97-a633-b97e9c01e4bf\",\"text\":\"ESPA Spa\"},{\"uuid\":\"4c9b2e56-c4ff-4555-b2c1-a5ed8ade748b\",\"text\":\"Flower Garden\"},{\"uuid\":\"1f62269b-9ad9-4251-89d9-4f0652913b56\",\"text\":\"Artist\\u2019s Studio & Gallery\"},{\"uuid\":\"5008febb-4d3a-45b8-a961-3662c8b845a2\",\"text\":\"Water Sports\"},{\"uuid\":\"8af83c60-255b-45b8-99cf-38947c0e30b0\",\"text\":\"Land Sports\"},{\"uuid\":\"34a17911-affa-4c71-aa45-9928e2045a85\",\"text\":\"Joali Spring Ceremony\"},{\"uuid\":\"484ac1d8-5e84-4e69-97bd-4158ce21860a\",\"text\":\"The Tree House\"}]}', 12, '2022-08-08 11:41:34', '2022-08-08 11:41:34'),
(30, 'select', 'Transport', 'There are currently 2 ways to travel.', '{\"options\":[{\"uuid\":\"b5312247-8700-4ff8-b7cf-6ace01f9c5b0\",\"text\":\"Speed Boat\"},{\"uuid\":\"cfaebc4a-fa0c-42ae-9020-27021147738a\",\"text\":\"Sea Plane\"}]}', 12, '2022-08-08 11:41:34', '2022-08-08 11:41:34'),
(31, 'select', 'Hotel Stays', 'Ranging from 55 to 125 sqm in size, the Kandima resort is made up of 266 stylish and comfortable studios and villas. The different types of accommodation guests can choose from are:', '{\"options\":[{\"uuid\":\"4c5f6fd9-a3b2-4ccb-9c5c-c9f048492bbd\",\"text\":\"Beach & Sky Studios\"},{\"uuid\":\"9ed2113d-22d8-4542-9472-36a996fecd01\",\"text\":\"Beach Villa with Jacuzzi\"},{\"uuid\":\"b20c968e-89c9-48f8-bd52-8ddc918a13fb\",\"text\":\"Beach Pool Villa with Jacuzzi\"},{\"uuid\":\"2c44cb4d-efbf-431e-95a4-4878d058c8f2\",\"text\":\"Aqua Villa\"},{\"uuid\":\"1c260f6c-0866-43cc-8035-c448b4b33f85\",\"text\":\"Aqua Villa with Jacuzzi\"},{\"uuid\":\"d94c09c9-6a97-48b6-954a-d79cf7290cb7\",\"text\":\"Ocean Pool Villa\"},{\"uuid\":\"0bfd0509-184f-470a-ad17-da20ec43505a\",\"text\":\"Honeymoon Aqua Pool Villa\"}]}', 13, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(32, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"c5d4b5a1-e83c-4b25-8461-7b115cd8c31c\",\"text\":\"Spa\"},{\"uuid\":\"c9f04776-3c28-43a4-98b4-35acdd660bf5\",\"text\":\"Diving\"}]}', 13, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(33, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"5d117b3d-afa8-4f1b-938a-4203b64be982\",\"text\":\"Sea Plane\"},{\"uuid\":\"77af5006-d5dd-4fda-b37d-29b25ebfe422\",\"text\":\"Domestic Flight\"},{\"uuid\":\"67a9ff2b-0592-476d-9fc8-09713270de53\",\"text\":\"Speed Boat\"}]}', 13, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(34, 'select', 'Hotel Stays', 'Ranging from 55 to 125 sqm in size, the Kandima resort is made up of 266 stylish and comfortable studios and villas. The different types of accommodation guests can choose from are:', '{\"options\":[{\"uuid\":\"4c5f6fd9-a3b2-4ccb-9c5c-c9f048492bbd\",\"text\":\"Beach & Sky Studios\"},{\"uuid\":\"9ed2113d-22d8-4542-9472-36a996fecd01\",\"text\":\"Beach Villa with Jacuzzi\"},{\"uuid\":\"b20c968e-89c9-48f8-bd52-8ddc918a13fb\",\"text\":\"Beach Pool Villa with Jacuzzi\"},{\"uuid\":\"2c44cb4d-efbf-431e-95a4-4878d058c8f2\",\"text\":\"Aqua Villa\"},{\"uuid\":\"1c260f6c-0866-43cc-8035-c448b4b33f85\",\"text\":\"Aqua Villa with Jacuzzi\"},{\"uuid\":\"d94c09c9-6a97-48b6-954a-d79cf7290cb7\",\"text\":\"Ocean Pool Villa\"},{\"uuid\":\"0bfd0509-184f-470a-ad17-da20ec43505a\",\"text\":\"Honeymoon Aqua Pool Villa\"}]}', 14, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(35, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"c5d4b5a1-e83c-4b25-8461-7b115cd8c31c\",\"text\":\"Spa\"},{\"uuid\":\"c9f04776-3c28-43a4-98b4-35acdd660bf5\",\"text\":\"Diving\"}]}', 14, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(36, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"5d117b3d-afa8-4f1b-938a-4203b64be982\",\"text\":\"Sea Plane\"},{\"uuid\":\"77af5006-d5dd-4fda-b37d-29b25ebfe422\",\"text\":\"Domestic Flight\"},{\"uuid\":\"67a9ff2b-0592-476d-9fc8-09713270de53\",\"text\":\"Speed Boat\"}]}', 14, '2022-08-08 11:46:30', '2022-08-08 11:46:30'),
(37, 'select', 'Hotel Stays', 'Ranging from 55 to 125 sqm in size, the Kandima resort is made up of 266 stylish and comfortable studios and villas. The different types of accommodation guests can choose from are:', '{\"options\":[{\"uuid\":\"4c5f6fd9-a3b2-4ccb-9c5c-c9f048492bbd\",\"text\":\"Beach & Sky Studios\"},{\"uuid\":\"9ed2113d-22d8-4542-9472-36a996fecd01\",\"text\":\"Beach Villa with Jacuzzi\"},{\"uuid\":\"b20c968e-89c9-48f8-bd52-8ddc918a13fb\",\"text\":\"Beach Pool Villa with Jacuzzi\"},{\"uuid\":\"2c44cb4d-efbf-431e-95a4-4878d058c8f2\",\"text\":\"Aqua Villa\"},{\"uuid\":\"1c260f6c-0866-43cc-8035-c448b4b33f85\",\"text\":\"Aqua Villa with Jacuzzi\"},{\"uuid\":\"d94c09c9-6a97-48b6-954a-d79cf7290cb7\",\"text\":\"Ocean Pool Villa\"},{\"uuid\":\"0bfd0509-184f-470a-ad17-da20ec43505a\",\"text\":\"Honeymoon Aqua Pool Villa\"}]}', 15, '2022-08-08 11:46:31', '2022-08-08 11:46:31'),
(38, 'checkbox', 'Activities', 'There are numerous activities available in the resort.', '{\"options\":[{\"uuid\":\"c5d4b5a1-e83c-4b25-8461-7b115cd8c31c\",\"text\":\"Spa\"},{\"uuid\":\"c9f04776-3c28-43a4-98b4-35acdd660bf5\",\"text\":\"Diving\"},{\"uuid\":\"a95bac32-9ae1-4eb2-b19e-2a43929aed4f\",\"text\":\"Pilates\"},{\"uuid\":\"6632eb97-53c2-4dbd-9637-b0c9267d498c\",\"text\":\"Aqua Fit\"},{\"uuid\":\"2d2492e0-0a07-4c2a-a39d-27d3a05e2699\",\"text\":\"Boxing\"},{\"uuid\":\"a0f1a1b5-0c29-4f53-a466-2fe5c9a541f8\",\"text\":\"Painting\"},{\"uuid\":\"c9e7538c-4e7c-4de4-9622-7f2523234acb\",\"text\":\"Craft-making classes\"},{\"uuid\":\"bb02f078-8461-43ef-9759-28c24796f4e1\",\"text\":\"Cocktail-making classes\"},{\"uuid\":\"919d85b5-c116-4cd7-9d97-f661d4d40684\",\"text\":\"Massage classes\"},{\"uuid\":\"be8e9a9c-ce50-467a-9982-6ac730aa6226\",\"text\":\"Salsa lessons\"},{\"uuid\":\"a7e50371-1fd8-46ce-ba19-f48ad40f468d\",\"text\":\"Aerial Yoga\"}]}', 15, '2022-08-08 11:46:31', '2022-08-08 11:50:09'),
(39, 'select', 'Transport', 'There are currently 3 ways to travel.', '{\"options\":[{\"uuid\":\"5d117b3d-afa8-4f1b-938a-4203b64be982\",\"text\":\"Sea Plane\"},{\"uuid\":\"77af5006-d5dd-4fda-b37d-29b25ebfe422\",\"text\":\"Domestic Flight\"},{\"uuid\":\"67a9ff2b-0592-476d-9fc8-09713270de53\",\"text\":\"Speed Boat\"}]}', 15, '2022-08-08 11:46:31', '2022-08-08 11:46:31'),
(40, 'select', 'Hotel Stays', 'Paradise Island Resort comprises of 282 villas & suites and 220 Superior Beach Bungalows', '{\"options\":[{\"uuid\":\"e8d587b6-170c-4eed-975a-ba166d97a2de\",\"text\":\"Water villa\"},{\"uuid\":\"9fc9425d-0e7a-4d80-a35e-66bb9633716e\",\"text\":\"Haven villa\"},{\"uuid\":\"086b5910-b3b4-42b2-b040-e6e98cd92d09\",\"text\":\"Haven suite\"},{\"uuid\":\"d41d750c-0b2d-4c8e-8312-36564520ec73\",\"text\":\"Ocean suite\"}]}', 16, '2022-08-08 11:58:18', '2022-08-08 11:58:18'),
(41, 'checkbox', 'Activities', 'Located in a quiet corner of the island, the Araamu Spa, comprises of 17 treatment rooms where massages, body treatments and facials can be enjoyed.\nFor those looking for more adventure, there are plenty of water sports on offer, including Catamaran Sailing, windsurfing and jet skiing.', '{\"options\":[{\"uuid\":\"fed6f61c-d69e-430a-8eec-4e100ec1cc51\",\"text\":\"Araamu Spa\"},{\"uuid\":\"afc0e982-3e35-4f0c-ac6a-1ae4a1df52a4\",\"text\":\"Catamaran Sailing\"},{\"uuid\":\"ae9c751e-27c1-4cbd-a968-bed9ff2836f6\",\"text\":\"Windsurfing\"},{\"uuid\":\"6e6f374b-8551-49f0-8f26-789b86278704\",\"text\":\"Jet Skiing\"}]}', 16, '2022-08-08 11:58:18', '2022-08-08 11:58:18'),
(42, 'select', 'Transport', 'The island provides 20-minute speedboat transfers for all guests arriving and departing.', '{\"options\":[{\"uuid\":\"a60aae86-7b7b-40d5-bf16-22c1ec69b97c\",\"text\":\"Speed Boat\"},{\"uuid\":\"b06826c8-f487-41ae-afea-353d8dfb8bc8\",\"text\":\"Sea Plane\"}]}', 16, '2022-08-08 11:58:18', '2022-08-08 11:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `booking_question_answers`
--

CREATE TABLE `booking_question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_question_id` bigint(20) UNSIGNED NOT NULL,
  `booking_answer_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_question_answers`
--

INSERT INTO `booking_question_answers` (`id`, `booking_question_id`, `booking_answer_id`, `answer`, `created_at`, `updated_at`) VALUES
(36, 1, 14, 'VIP Suite', '2022-08-08 12:06:12', '2022-08-08 12:06:12'),
(37, 2, 14, '[\"Water Sports\",\"Bike Riding\"]', '2022-08-08 12:06:12', '2022-08-08 12:06:12'),
(38, 3, 14, 'Speed Boat', '2022-08-08 12:06:12', '2022-08-08 12:06:12'),
(39, 4, 15, 'Honeymooners Suite', '2022-08-08 12:08:52', '2022-08-08 12:08:52'),
(40, 5, 15, '[\"Diving\",\"Water Sports\"]', '2022-08-08 12:08:52', '2022-08-08 12:08:52'),
(41, 6, 15, 'Speed Boat', '2022-08-08 12:08:52', '2022-08-08 12:08:52'),
(42, 7, 16, 'Family Suite', '2022-08-08 12:12:28', '2022-08-08 12:12:28'),
(43, 8, 16, '[\"Luxury Yacht\",\"Koi Fish Feeding\",\"Cultural Tour\"]', '2022-08-08 12:12:28', '2022-08-08 12:12:28'),
(44, 9, 16, 'Spead Boat', '2022-08-08 12:12:28', '2022-08-08 12:12:28'),
(45, 10, 17, 'Jacuzzi Beach Villa', '2022-08-08 12:15:26', '2022-08-08 12:15:26'),
(46, 11, 17, '[\"Diving\",\"Sunset Dolphin Cruise\",\"Glass-Bottom Boat Ride\",\"Whale Shark Expedition.\"]', '2022-08-08 12:15:26', '2022-08-08 12:15:26'),
(47, 12, 17, 'Sea Plane', '2022-08-08 12:15:26', '2022-08-08 12:15:26'),
(48, 13, 18, 'Sunset Beach Villa', '2022-08-08 12:18:35', '2022-08-08 12:18:35'),
(49, 14, 18, '[\"Wind Surfing\",\"Canoeing\",\"Jet-Skiing\",\"Snorkeling\"]', '2022-08-08 12:18:35', '2022-08-08 12:18:35'),
(50, 15, 18, 'Sea Plane', '2022-08-08 12:18:35', '2022-08-08 12:18:35'),
(51, 40, 19, 'Ocean suite', '2022-08-08 12:22:35', '2022-08-08 12:22:35'),
(52, 41, 19, '[\"Windsurfing\",\"Jet Skiing\"]', '2022-08-08 12:22:35', '2022-08-08 12:22:35'),
(53, 42, 19, 'Sea Plane', '2022-08-08 12:22:35', '2022-08-08 12:22:35'),
(54, 28, 20, 'Lavish Suite', '2022-08-08 12:27:14', '2022-08-08 12:27:14'),
(55, 29, 20, '[\"Water Sports\",\"Land Sports\"]', '2022-08-08 12:27:14', '2022-08-08 12:27:14'),
(56, 30, 20, 'Speed Boat', '2022-08-08 12:27:14', '2022-08-08 12:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_04_113733_create_bookings_table', 2),
(6, '2022_08_04_114138_create_booking_questions_table', 2),
(7, '2022_08_04_114318_create_booking_answers_table', 2),
(8, '2022_08_04_114337_create_booking_question_answers_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', '9de2ccd7eb0c245eddabdbf1503240fd7814669308c378557b919e4328dce844', '[\"*\"]', NULL, NULL, '2022-08-03 15:11:02', '2022-08-03 15:11:02'),
(3, 'App\\Models\\User', 1, 'main', '07c8b952539c6b1ccc8ce0957711c4a18dcd27eeb481a182658ec2326d1ab0b2', '[\"*\"]', '2022-08-03 18:46:19', NULL, '2022-08-03 17:52:26', '2022-08-03 18:46:19'),
(4, 'App\\Models\\User', 1, 'main', 'e666631167456f6518accf9679952903b0a11c2ed2fa909b8cd7f2ef1b74d77e', '[\"*\"]', '2022-08-03 18:15:49', NULL, '2022-08-03 18:15:48', '2022-08-03 18:15:49'),
(6, 'App\\Models\\User', 2, 'main', 'eaa3f70753c12381dc6ca51b77fea0d9a05f71242ba44b0cdf115f3dcf964130', '[\"*\"]', NULL, NULL, '2022-08-04 06:20:57', '2022-08-04 06:20:57'),
(10, 'App\\Models\\User', 3, 'main', 'c0855b96a5b26859f1cfb796f5304a980980cf0661eeb9d9f98bb7acbaf58987', '[\"*\"]', NULL, NULL, '2022-08-04 08:39:13', '2022-08-04 08:39:13'),
(12, 'App\\Models\\User', 1, 'main', 'f1246a564c1c94c953754a8a9e3ca00b17893c7d34142864fd180a85dde9ccc2', '[\"*\"]', '2022-08-04 15:27:52', NULL, '2022-08-04 08:40:56', '2022-08-04 15:27:52'),
(13, 'App\\Models\\User', 1, 'main', '08c157609475bec017af1f1b12f977a53989de87dce57a1ee143aa2b84fea713', '[\"*\"]', '2022-08-04 16:28:03', NULL, '2022-08-04 10:13:59', '2022-08-04 16:28:03'),
(14, 'App\\Models\\User', 1, 'main', 'eafcd28357d52bfb641b75252245be71951cd61ba69a40074932d9d8f660a836', '[\"*\"]', '2022-08-04 15:06:17', NULL, '2022-08-04 12:39:42', '2022-08-04 15:06:17'),
(15, 'App\\Models\\User', 1, 'main', 'd20dededa712ec681eeef8f104f63b4695a4b731c8d7dbd61927de9d16bdd5a4', '[\"*\"]', '2022-08-05 16:31:40', NULL, '2022-08-05 11:00:29', '2022-08-05 16:31:40'),
(16, 'App\\Models\\User', 1, 'main', 'a13369e9255a2e3be07fcb5f32dac99ecf4636801bd2978152dd648998462d4f', '[\"*\"]', '2022-08-05 11:12:49', NULL, '2022-08-05 11:12:48', '2022-08-05 11:12:49'),
(17, 'App\\Models\\User', 1, 'main', '0583c88c0d6187a980bc7551137b6eb54ce08181f119599de208a900e9f63867', '[\"*\"]', '2022-08-05 16:40:21', NULL, '2022-08-05 12:31:37', '2022-08-05 16:40:21'),
(18, 'App\\Models\\User', 1, 'main', '06ba79705b2fdacc987cf2bb1b7930321573a2fef448edba5978ce4a53746542', '[\"*\"]', '2022-08-05 15:41:46', NULL, '2022-08-05 12:52:49', '2022-08-05 15:41:46'),
(19, 'App\\Models\\User', 1, 'main', 'a39ff86d5390b09be643a1cc8019c4148a8fbb6e7909ceec3914cac910af8515', '[\"*\"]', '2022-08-05 13:28:41', NULL, '2022-08-05 13:28:36', '2022-08-05 13:28:41'),
(20, 'App\\Models\\User', 1, 'main', '8ff099312f9d01881c979093af1b51f4c4f7630b29854f6afb43372792341c4f', '[\"*\"]', '2022-08-06 09:00:48', NULL, '2022-08-06 08:50:49', '2022-08-06 09:00:48'),
(21, 'App\\Models\\User', 1, 'main', '02671ccc0332d09995404fcce80daa9228697a0ec37b73629b9572fb9903468b', '[\"*\"]', '2022-08-06 08:52:17', NULL, '2022-08-06 08:52:13', '2022-08-06 08:52:17'),
(22, 'App\\Models\\User', 1, 'main', '7b046292c7ca290e5a52d2b0ee16ea15e0824fa91bd9948fc2b9322be0fc11ea', '[\"*\"]', '2022-08-06 17:22:12', NULL, '2022-08-06 09:01:21', '2022-08-06 17:22:12'),
(23, 'App\\Models\\User', 2, 'main', '92c0c432ddad40f4c37edb96920f310100fdc85ef727794f4df3727673740ce0', '[\"*\"]', '2022-08-06 09:31:40', NULL, '2022-08-06 09:03:41', '2022-08-06 09:31:40'),
(25, 'App\\Models\\User', 2, 'main', 'a7b4f51ea19a55f6643207f8e20a8aa848d7db9c99ee8742043e68e91d01c70c', '[\"*\"]', '2022-08-06 15:05:25', NULL, '2022-08-06 15:05:24', '2022-08-06 15:05:25'),
(26, 'App\\Models\\User', 4, 'main', '8039a4276a7b1363a95ca9f73851a860e30af82415ee5d52025d2c9a6c76232d', '[\"*\"]', NULL, NULL, '2022-08-06 15:27:30', '2022-08-06 15:27:30'),
(27, 'App\\Models\\User', 4, 'main', '23945f7a20abf940eb8cc7964773f621ccaa3e12b200f7462969555968d9178d', '[\"*\"]', '2022-08-06 15:28:18', NULL, '2022-08-06 15:27:55', '2022-08-06 15:28:18'),
(28, 'App\\Models\\User', 5, 'main', 'b31c7aacf90ede19b8c6fb2702cd63fc9aed211d229339d6d4ac8c75aff6846e', '[\"*\"]', NULL, NULL, '2022-08-06 15:57:21', '2022-08-06 15:57:21'),
(29, 'App\\Models\\User', 2, 'main', 'cd60bf0a884eea7ff1ad20c1342a5767de182be79a537bd95d13c43324b13b71', '[\"*\"]', NULL, NULL, '2022-08-06 16:08:57', '2022-08-06 16:08:57'),
(30, 'App\\Models\\User', 2, 'main', '2c2c51a509abd19b58e725022fe8265543738f9b4e91da2bcef6a9c49fa2335a', '[\"*\"]', '2022-08-06 16:09:11', NULL, '2022-08-06 16:08:59', '2022-08-06 16:09:11'),
(32, 'App\\Models\\User', 1, 'main', 'a08686e3f79876a74f6c0bc5b4d7a61f3b0d6916ba0f735ac322c404b6e67fb9', '[\"*\"]', '2022-08-06 16:14:07', NULL, '2022-08-06 16:14:06', '2022-08-06 16:14:07'),
(36, 'App\\Models\\User', 5, 'main', '6da073f02a1ba84d615714bb8acb964b2932659f0daa3d5a684f2554f72778fe', '[\"*\"]', '2022-08-06 16:21:36', NULL, '2022-08-06 16:21:36', '2022-08-06 16:21:36'),
(37, 'App\\Models\\User', 6, 'main', 'f6cdb77c4b8fb863e46c8faa34641986eaa1323b0e04ae1e825c8f073ea495f5', '[\"*\"]', NULL, NULL, '2022-08-06 16:24:31', '2022-08-06 16:24:31'),
(42, 'App\\Models\\User', 6, 'main', '2dfa5afbfa48d3446ee7e5a11437363996a9a0ceba3a90d6f3deaed9ac0f9bb0', '[\"*\"]', NULL, NULL, '2022-08-06 16:42:18', '2022-08-06 16:42:18'),
(46, 'App\\Models\\User', 6, 'main', '9cc90967ab3fc87379e8be2b06125d1d46ff22d62cdd77dcb3141c4cef8e5066', '[\"*\"]', NULL, NULL, '2022-08-06 16:49:30', '2022-08-06 16:49:30'),
(47, 'App\\Models\\User', 6, 'main', '2828ee7d49e0a1ebe5005314588e23a564432db6d6ebc4b12bd12372c6538efb', '[\"*\"]', NULL, NULL, '2022-08-06 16:50:15', '2022-08-06 16:50:15'),
(51, 'App\\Models\\User', 6, 'main', 'ce58da1b6d6b77173042a3899f22733ec95a965bf04320957ef4c5f864ccdf20', '[\"*\"]', NULL, NULL, '2022-08-06 17:01:52', '2022-08-06 17:01:52'),
(54, 'App\\Models\\User', 6, 'main', 'a7455c23913622849b494f3af1d2546998464e8864ef5f15d397593ef994d7e8', '[\"*\"]', '2022-08-06 17:23:17', NULL, '2022-08-06 17:23:17', '2022-08-06 17:23:17'),
(55, 'App\\Models\\User', 6, 'main', '88ed935af23505d00a2014c82b58c613e337b20b33c0bded622d1bbefc419b05', '[\"*\"]', '2022-08-07 10:00:12', NULL, '2022-08-07 07:27:38', '2022-08-07 10:00:12'),
(56, 'App\\Models\\User', 1, 'main', '9f5f5c8e7d97937d9a66e82ee6073234f50b55f66e87fd9ddf7fb7517a12462d', '[\"*\"]', '2022-08-07 13:06:19', NULL, '2022-08-07 09:30:22', '2022-08-07 13:06:19'),
(58, 'App\\Models\\User', 2, 'main', 'ba831b3c4ee74f0ebd421ec96fe77b5c886651f58e9a78ee0a8773bdfcadc9be', '[\"*\"]', '2022-08-07 09:47:14', NULL, '2022-08-07 09:46:38', '2022-08-07 09:47:14'),
(59, 'App\\Models\\User', 1, 'main', '7fbcce50344d413f902a14997aa0b8bedea4948fb59ee0af69b194b5ce78aa0f', '[\"*\"]', '2022-08-07 13:02:09', NULL, '2022-08-07 10:57:51', '2022-08-07 13:02:09'),
(60, 'App\\Models\\User', 2, 'main', '98090b289633102f159ee175aff02fe83134a838532990a2c30c81ed57933dae', '[\"*\"]', '2022-08-07 12:23:48', NULL, '2022-08-07 12:23:44', '2022-08-07 12:23:48'),
(63, 'App\\Models\\User', 6, 'main', '0e9179f1534c4f924458bffb483c048e1aaf928607ffacc2e5c4699d55fe7321', '[\"*\"]', '2022-08-08 09:27:13', NULL, '2022-08-08 08:56:59', '2022-08-08 09:27:13'),
(65, 'App\\Models\\User', 7, 'main', '17b7f9316a200f61a0f7a2d51efcc7eed7934c1e792714641f24aadb08c7cf22', '[\"*\"]', NULL, NULL, '2022-08-08 12:11:53', '2022-08-08 12:11:53'),
(67, 'App\\Models\\User', 8, 'main', '9877514925caac558b3c684ec93abaf2e0cd37ee42921e7103f59e5ad53fc21a', '[\"*\"]', NULL, NULL, '2022-08-08 12:14:45', '2022-08-08 12:14:45'),
(69, 'App\\Models\\User', 6, 'main', 'dd8152642b1a3ac6db789b0c5f3e450a4b9b17be125c4aaa6b1db81c0d575314', '[\"*\"]', '2022-08-08 12:26:56', NULL, '2022-08-08 12:26:55', '2022-08-08 12:26:56'),
(72, 'App\\Models\\User', 1, 'main', '7cc6e8baf216e8fc2a76e60a25677148c649bcb538977d67fae33178896dc1be', '[\"*\"]', '2022-08-08 13:33:36', NULL, '2022-08-08 13:33:27', '2022-08-08 13:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Haaid Naseem', 'haaidhnaseem@admin.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-03 15:11:02', '2022-08-03 15:11:02'),
(2, 'Bibbiday', 'bibbiday@admin.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-04 06:20:57', '2022-08-04 06:20:57'),
(5, 'test', 'test@gmail.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-06 15:57:21', '2022-08-06 15:57:21'),
(6, 'Haaid', 'haaidhnaseem@gmail.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-06 16:24:31', '2022-08-06 16:24:31'),
(7, 'Haaid Naseem', 'haaidhnaseem@hotmail.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-08 12:11:53', '2022-08-08 12:11:53'),
(8, 'Publish Fresh', 'publishfresh@gmail.com', NULL, '$2y$10$KM5hfJo342T8RQPWT0rVYOYIZMn9p6/cYEbd2iLBPRGUFNmmGv7S.', NULL, '2022-08-08 12:14:45', '2022-08-08 12:14:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_answers`
--
ALTER TABLE `booking_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_questions`
--
ALTER TABLE `booking_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_question_answers`
--
ALTER TABLE `booking_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `booking_answers`
--
ALTER TABLE `booking_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking_questions`
--
ALTER TABLE `booking_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `booking_question_answers`
--
ALTER TABLE `booking_question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
