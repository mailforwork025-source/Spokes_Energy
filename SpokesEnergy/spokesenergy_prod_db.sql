-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: spokesenergy_prod_db
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.22.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator_blogdetails`
--

DROP TABLE IF EXISTS `administrator_blogdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_blogdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `author` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `author_image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_blogdetails`
--

LOCK TABLES `administrator_blogdetails` WRITE;
/*!40000 ALTER TABLE `administrator_blogdetails` DISABLE KEYS */;
INSERT INTO `administrator_blogdetails` VALUES (1,'Merry Christmas','Spokes','X_Mass-2_2M5av07.jpg','Logo_Image.jpg','* Spokes Energy Celebrated this christmas with the Spokes Team.\r\n* *The bells are jingling. **The balls are rolling. **The stars shine bright on the Christmas tree. \r\n** Let us take this opportunity to wish all our customers a sparkling season and a great new year.','2022-12-25',1,'2022-12-25 06:37:05.428051'),(2,'High Finish SS Clear Coating','Spokes','20230501_072254_Wsdi9s4.jpg','20230501_072254.jpg','Spokes has recently completed high finish clear coating for the SS panels. This was challenging to maintain the polished architectural finish for the system, and this is completed in 3 days.','2023-04-25',1,'2023-05-15 18:17:23.508870'),(3,'Annual Day Celebration','Spokes','WhatsApp_Image_2023-12-17_at_10.17.36_AM.jpeg','WhatsApp_Image_2023-12-17_at_10.17.36_AM_YrYk5Dt.jpeg','Spokes  Energy Celebrated Seasons Joy and togetherness  during the occasion of Annual Day Gathering. Kudos to the team and our clients who supported us on this journey.','2023-12-16',1,'2023-12-24 09:12:43.686449'),(4,'Merry Christmass & happy new year','Spokes','Slide1_PtfpxW4.JPG','Slide1_gae9T5q.JPG','Spokes Energy Wishes you a wonderful festive season with the greetings,  Merry Christmass and Happy new year,','2023-12-24',1,'2023-12-24 10:13:40.212722'),(5,'Choosing the Right Coating System for Industrial Assets','Spokes','closeup-shot-worker-protective-gloves-painting-wooden-details_1.jpg','closeup-shot-worker-protective-gloves-painting-wooden-details_1_LisL0Tm.jpg','Industrial assets operating in offshore, marine, rail and manufacturing environments are constantly exposed to corrosion, abrasion, chemicals, moisture and extreme temperatures. Choosing the right coating system for industrial assets is essential to protect equipment,            improve reliability, extend service life and reduce lifecycle costs. \r\n\r\nWhy the Right Coating System Matters\r\nIndustrial coatings protect assets from corrosion, harsh environments and premature equipment failure, helping extend service life and improve reliability.  \r\n\r\nThe benefits of implementing effective industrial asset coating solutions include: \r\n\r\nEnhanced corrosion resistance\r\nReduced maintenance and repair costs \r\nExtended asset lifespan\r\nImproved operational reliability\r\nIncreased safety and regulatory compliance\r\nLower lifecycle costs\r\n\r\n\r\nUnderstanding the Operating Environment \r\n\r\nExposure to moisture and humidity\r\nContact with chemicals or solvents\r\nSaltwater or coastal environments\r\nUV radiation and weather conditions\r\nTemperature fluctuations\r\nMechanical wear and abrasion\r\n\r\nCommon Types of Industrial Coating Systems \r\n\r\nEpoxy Coatings \r\nPolyurethane Coatings \r\nZinc-Rich Primers \r\nIntumescent Coatings \r\nMulti-Coat Systems \r\nThe Value of Professional Coating Expertise \r\nSelecting the right industrial coating system for industrial assets requires expert knowledge and experience. Coating specialists assess environmental conditions, recommend suitable solutions and ensure proper application and inspection to prevent costly failures, optimize performance and maximize long-term asset value. \r\n\r\nConclusion \r\nChoosing the right coating system for industrial assets is essential for reducing corrosion, improving efficiency and extending asset lifespan. By considering environmental conditions, material types and industry standards, businesses can implement an effective industrial coating system that minimizes downtime and lowers long-term maintenance costs.','2026-06-30',0,'2026-06-30 05:51:12.931962');
/*!40000 ALTER TABLE `administrator_blogdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_contactusmessage`
--

DROP TABLE IF EXISTS `administrator_contactusmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_contactusmessage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(254) COLLATE utf8mb3_bin NOT NULL,
  `mobile_no` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `message` longtext COLLATE utf8mb3_bin,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_contactusmessage`
--

LOCK TABLES `administrator_contactusmessage` WRITE;
/*!40000 ALTER TABLE `administrator_contactusmessage` DISABLE KEYS */;
INSERT INTO `administrator_contactusmessage` VALUES (1,'Sudeep','Suceee@gmail.com',NULL,'Test email',1,'2022-12-06 16:57:47.833629'),(2,'Suceee','suceee@gmail.com',NULL,'test',1,'2023-05-23 12:39:59.721450'),(3,'Thirupathi Thotla','thiruthotla299@gmail.com',NULL,'Hi Sir.. I\'m Looking for Storekeeper / DC. If you have any Vacancy\'s pls inform me',1,'2023-05-28 17:14:00.265722'),(4,'Martin K','pat@aneesho.com',NULL,'Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, brochures, logos, flyers, etc. for a fixed monthly fee. \r\n\r\nWe don\'t charge for each task. What kind of work do you need on a regular basis? Let me know and I\'ll share my portfolio with you.',1,'2023-06-15 10:51:22.075151'),(5,'md Naeem Mia','nsnaeem69@gmail.com',NULL,'dear sir, I am a Bangladeshi person diploma engineer in CST computer science technology. I\'m a  Xbox graphics design ,Google dogs , excels sheet,ms Words.I have heard good things about your company in Dubai,So can I apply for a job in any post in your company?',1,'2023-08-12 09:07:28.812761'),(6,'Sam Shores','antwan.shores@outlook.com',NULL,'I hope this email finds you well. I wanted to take a moment to discuss how our Monthly SEO Services can significantly impact your business\'s bottom line, driving both profit and sales growth.\r\n\r\n1. Increased Visibility, Increased Sales \r\n2. Targeted Traffic for Conversions \r\n3. Enhanced Conversion Rates \r\n4. Competitive Edge in Sales \r\n5. Measurable ROI \r\n6. Adaptation to Market Trends \r\n\r\nWe\'d be thrilled to discuss how our tailored Monthly SEO Services can specifically contribute to the profitability and sales growth of your business. When would be a convenient time for a discussion? Let\'s collaborate to unlock the full potential of your online success. Find out more at https://alwaysdigital.co/r',1,'2024-01-23 04:08:43.046726'),(7,'Tiffany Grady','tiffanygprestig@outlook.com',NULL,'Hi! I\'m Tiffany from Prestige Accounting Services – a Missouri-based outsourcing firm for accounting & bookkeeping services. I can help you save payroll costs while achieving high-quality accounting and bookkeeping standards.\r\n\r\nI will be happy to schedule you a Free Consultation. Should you feel like exploring further?\r\n\r\nRegards,\r\nTiffany Grady\r\n\r\nPlease write STOP if you don\'t want to receive more information. Thanks.',1,'2024-05-30 17:24:02.286689'),(8,'Jo Riggs','joannariggs278@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo\r\n\r\nUnsubscribe: https://removeme.live/unsubscribe.php?d=spokesenergy.com',1,'2024-10-26 16:00:52.865529'),(9,'Fernando Kalb','kalb.fernando@yahoo.com',NULL,'Здравствуйте! \r\nОсуществляем лучшие \"убийственные\" прогоны для интернет-сайтов ваших конкурентов. Всего от 3 000 р. \r\n- 100% эффект. Веб-сайты конкурентов \"упадут\". \r\n- Наибольшее число отрицательных фитбеков. \r\n- Наша специальная база - выжимка самых \"убийственных\" площадок из 10 млн. сайтов (спамные, порно, вирусные и так далее). Это действует безотказно. \r\n- Прогон выполняется сразу с 4-х серверов. \r\n- Постоянный спам вирусных ссылок на официальный e-mail. \r\n- Растянем по времени как угодно. \r\n- Прогоняем с запрещёнными ключами. \r\nTelegrm: @exrumer \r\nSkype: xrumer.pro\r\nТолько эти!',1,'2025-01-31 11:41:51.335635'),(10,'Jo Riggs','joannariggs01@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur videos cost just $195 for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we\'ve done if you want me to send some over. Let me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo',1,'2025-02-24 23:10:50.574000'),(11,'Eloy Moloney','moloney.eloy@gmail.com',NULL,'Are you ready to earn money from your website with minimal effort? ������ With ForeMedia.net, you can start making revenue from ad impressions alone—clicks are just a bonus!\r\n\r\nHere’s why website owners love us:\r\n✅ Instant approval for new publishers\r\n✅ Earnings from traffic, not just clicks\r\n✅ Hassle-free setup in minutes\r\n\r\n������ Register Now Her: https://foremedia.pro/CU4W6 and start monetizing your traffic today!\r\n\r\nBest,\r\nThe ForeMedia Team',1,'2025-03-26 13:05:34.299717'),(12,'Vickey Galvan','galvan.vickey@outlook.com',NULL,'Hey,\r\n\r\nEver feel like no matter how hard you try, success always seems just out of reach?\r\n\r\nMaybe you\'ve set big goals—starting a business, improving your health, or hitting a financial milestone—only to lose momentum. It’s frustrating, right?\r\n\r\nHere’s the thing: It’s not your fault.\r\n\r\nMost people don’t fail because they lack motivation. They fail because they don’t have a proven system to follow.\r\n\r\nWhat if I told you there’s a step-by-step process designed to help you finally break free and start achieving your biggest goals—without the guesswork?\r\n\r\nClick here to discover how it works: https://marketersmentor.com/formula-for-success.php?refer=spokesenergy.com&real=yes\r\n\r\nTalk soon,\r\nVickey\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=spokesenergy.com&real=yes',1,'2025-04-04 17:53:02.538901'),(13,'Bryon Treasure','bryon.treasure@gmail.com',NULL,'We’re interested in working with companies like yours for the long term. Could you send us your product list and prices? Please reach me on WhatsApp: +44 758 789 0515',1,'2025-04-18 23:45:06.419982'),(14,'Edna Kinross','kinross.edna@gmail.com',NULL,'Hi there!\r\nWe’re interested in working with companies like yours for the long term. Could you send us your product list and prices? You can reach me on WhatsApp: \r\n+44 779 527 9229',1,'2025-04-30 19:40:27.616575'),(15,'Tamela Grenda','grenda.tamela75@gmail.com',NULL,'Hi there!\r\nWe’re interested in working with companies like yours for the long term. Could you send us your product list and prices? You can reach me on WhatsApp: \r\n+1 742 381 4869',1,'2025-05-08 17:23:24.060406'),(16,'Felicity Sauncho','felicitysauncho02@gmail.com',NULL,'Hi,\r\n\r\nI\'ve just visited spokesenergy.com and wanted to offer our YouTube growth service, where we increase your Youtube subscribers both safely and practically.\r\n\r\nIt isn\'t a magic bullet, as these are real people.\r\n\r\n- Gain 700-1500+ real, human subscribers who subscribe because they are interested in your channel/videos. \r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n- Channel Creation: If you haven\'t started your YouTube journey yet, we can create a professional channel for you as part of your initial order.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind regards,\r\nFelicity',1,'2025-05-12 06:32:50.153610'),(17,'Jo Riggs','joannariggs02@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do, or to be used on social media as a promotional tool?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo',1,'2025-05-24 16:17:08.450421'),(18,'Lou Ludowici','lou.ludowici@hotmail.com',NULL,'Hi, we have checked your website and it looks like SEO isn\'t working properly, and it\'s also not ready for AI-based ranking. We guarantee TOP3 placement on search results for a very affordable price. Reach us via Whatsapp: https://wa.me/+48 886 181 382?text=Hello%20SEO',1,'2025-05-24 18:46:52.486878'),(19,'Desiree Blakely','desiree.blakely@msn.com',NULL,'We are interested in your products and services, please send me your pricing and portfolio on our Whatsapp: https://wa.me/16178940124?text=hello',1,'2025-06-23 17:39:21.364912'),(20,'Joanna Riggs','joannariggs30@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nA couple of samples to check out for a Service and a Product:\r\n\r\nhttps://www.youtube.com/watch?v=uMI9l_FHwA8\r\n\r\nhttps://www.youtube.com/watch?v=8S4l8_bgcnc\r\n\r\nOur prices start from just $195 (USD).\r\n\r\nLet me know if you\'re interested in seeing more samples of our previous work or have any questions.\r\n\r\nRegards,\r\nJoanna',1,'2025-07-04 22:56:01.591719'),(21,'Floyd Giordano','giordano.floyd@msn.com',NULL,'Hello\r\nWe are looking for company that can help us, lets discuss cooperation on Whatsapp, send me message: +48 515 990 724',1,'2025-07-15 19:51:35.382269'),(22,'Jagjit Singh','jagjitbajwa969@gmail.com',NULL,'Delivery',1,'2025-07-31 05:19:49.326080'),(23,'Sharon Gersten','gersten.sharon@gmail.com',NULL,'Hello\r\nI would like you to send me your pricing, we would like to cooperate, as we have own clients base., please contact me on Whatsapp:\r\n+48 507 645 705',1,'2025-08-12 23:57:04.114207'),(24,'Gemma Marshall','gemmamarshall811@gmail.com',NULL,'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ followers per month.\r\n- People follow because they are interested in your profile, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nGemma',1,'2025-08-24 08:10:24.246261'),(25,'Francisco Bagley','info@digital-x-press.com',NULL,'Hello,  \r\n\r\nI understand that many find it challenging to grasp that organic ranking growth is a long-term game and a strategic ongoing investment.  \r\n\r\nUnfortunately, very few site owners have the determination to observe the slow but steady yet powerful results that can transform their business.  \r\n\r\nWith frequent SEO changes, a consistent, commitment to SEO is critical for securing a positive ROI.  \r\n\r\nIf you see this as the right method, give us a try!  \r\n\r\nExplore Our Monthly SEO Services  \r\nhttps://www.digital-x-press.com/unbeatable-seo/  \r\n\r\nReach Out on Live Support  \r\nhttps://www.digital-x-press.com/whatsapp-us/  \r\n\r\nWe offer unbeatable results for your marketing budget, and you will be glad choosing us as your growth partner.  \r\n\r\nThank you,  \r\nDigital X SEO Experts  \r\nPhone/WhatsApp: +1 (844) 754-1148  \r\ninfo@digital-x-press.com',1,'2025-09-12 04:27:25.564244'),(26,'Dotty Seal','dotty.seal@gmail.com',NULL,'Hey\r\nWe wouldl ike to make order, ccan you contact us on whats up: +1 683 850 4350\r\nSo we can discuss detials ?',1,'2025-09-18 03:51:07.035328'),(27,'Virginia Tran','tran.virginia@gmail.com',NULL,'Hey from SeoBests,\r\n\r\nSupercharge your website’s rankings, increase your online exposure and generate powerful backlinks!\r\nBuy the leading SEO services all on one platform - SeoBests.com\r\n\r\nExplore current SEO sales:\r\n50% OFF Monthly SEO Packages + Take 5000 Backlinks FREE:\r\n\r\nhttps://tiny.cc/seobests-offer\r\n\r\nExplore multiple backlink services, more than 100 items, and premium experts.\r\nSeoBests.com - your leading SEO backlinks provider.',1,'2025-10-04 18:23:37.092630'),(28,'Katharina Zook','katharina.zook@yahoo.com',NULL,'Hey\r\n\r\nIf you want to be nr.1 in google search results, we can help you with this for free, at no cost, you can get there by your self, we can give you list of websites where you can get valuble links, all this at no cost, in exchang we can publish link to our website on your website.',1,'2025-10-06 19:14:22.530102'),(29,'BdlzOcYGmtPpHF','apasoxefadi443@gmail.com',NULL,'yhSbuXstwG',1,'2025-10-08 22:40:13.969246'),(30,'zUQNYvDfQkRHEgLU','uhuhaday87@gmail.com',NULL,'mLOaoIRsCEVlmcV',1,'2025-10-09 10:47:34.805667'),(31,'hmNgjLoGfazHQMp','setizoma982@gmail.com',NULL,'NHocvPQEtyNr',1,'2025-10-11 16:35:00.685808'),(32,'Forrest Sellers','forrest.sellers@hotmail.com',NULL,'Hi,\r\nWe’re interested in distributing your goods. Some customers are ready to make purchases. Kindly contact us through WhatsApp: +1 613 495 6902\r\nRegards',1,'2025-10-13 05:20:18.547699'),(33,'DAXsjrnPzKkjHhi','apasoxefadi443@gmail.com',NULL,'UzawmSAIl',1,'2025-10-15 01:59:55.165873'),(34,'Lakesha Doolittle','doolittle.lakesha@gmail.com',NULL,'Hello,\r\nWe’re reaching out to explore a possible reseller partnership for your products. Some clients are already ready to order. Please contact us via WhatsApp: +1 343 435 5080\r\nBest regards',1,'2025-10-15 04:28:56.700321'),(35,'MmnxMFxPnPyM','uxemevibif99@gmail.com',NULL,'mWDbCXPVvN',1,'2025-10-16 04:40:23.597947'),(36,'DcXPIHPKOzhCFxq','qezevacif424@gmail.com',NULL,'dwaIPinkYveCTk',1,'2025-10-17 23:38:29.381166'),(37,'Jurgen Nealey','nealey.jurgen4@gmail.com',NULL,'Hi,\r\nWe would like to become your reseller. Our customers are asking about your products. Please contact us via WhatsApp: +1 226 644 5674\r\nRegards',1,'2025-10-20 03:41:57.342096'),(38,'iUmhBXkgpNDDcuhqAJK','cemirujew107@gmail.com',NULL,'yDvZfcjFdFohQQQQbZAxIGuD',1,'2025-10-23 12:36:52.678791'),(39,'Michale Derose','michale.derose99@outlook.com',NULL,'Hello,\r\nWe’re ready to promote and sell your goods to our customers. Some clients want to order immediately. Please contact us on WhatsApp: +1 226 446 0180\r\nSincerely',1,'2025-10-24 06:15:28.018910'),(40,'Valerie Vandyke','info@strictlydigital.net',NULL,'Greetings,  \r\n\r\nGetting some set of links linking to Testforum.com might bring 0 value or harmful results for your site.  \r\n\r\nIt really makes no difference the total external links you have, what is crucial is the number of search terms those websites are optimized for.  \r\n\r\nThat is the key thing.  \r\nNot the fake Domain Authority or SEO score.  \r\nAnyone can manipulate those.  \r\nBUT the volume of Google-ranked terms the websites that link to you rank for.  \r\nThat’s what really matters.  \r\n\r\nMake sure these backlinks point to your website and you will ROCK!  \r\n\r\nWe are introducing this exclusive service here:  \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/  \r\n\r\nIn doubt, or need more information, message us here:  \r\nhttps://www.strictlydigital.net/whatsapp-us/  \r\n\r\nSincerely,  \r\n\r\nMike Vandyke\r\n\r\nstrictlydigital.net  \r\nPhone/WhatsApp: +1 (877) 566-3738\r\ninfo@strictlydigital.net',1,'2025-10-30 05:51:20.058599'),(41,'Lee Cerda','cerda.lee@gmail.com',NULL,'Dear Sir/Madam,\r\nWe are looking to represent your brand as a reseller. Our clients are interested in your items. Please reach us on WhatsApp: +1 226 225 0519\r\nKind regards',1,'2025-10-30 22:37:40.736560'),(42,'Valorie Belton','belton.valorie@googlemail.com',NULL,'Dear Sir/Madam,\r\nWe are looking to represent your brand as a reseller. Our clients are interested in your items. Please reach us on WhatsApp: +1 705 800 4081\r\nKind regards',1,'2025-11-02 02:13:21.271864'),(43,'Pat Sodeman','pat.sodeman@googlemail.com',NULL,'Dear Sir/Madam,\r\nWe are looking to represent your brand as a reseller. Our clients are interested in your items. Please reach us on WhatsApp: +1 226 225 0519\r\nKind regards',1,'2025-11-04 06:37:52.489139'),(44,'dNQkpzCLcPLbmIyqlZOkA','okapurihu11@gmail.com',NULL,'ptAwckryBDqDNFVwL',1,'2025-11-22 03:18:33.916265'),(45,'Margaret Julia','royalredover@outlook.com',NULL,'Hello,\r\n\r\nWe have a promotional offer for your website spokesenergy.com.\r\n\r\nWhat if you could use the best AI models in the world without limits or extra costs? Now you can. With our brand-new AI-powered app, you\'ll have ChatGPT, Gemini Pro, Stable Diffusion, Cohere AI, Leonardo AI Pro, and more — all under one roof. No monthly subscriptions, no API key expenses, no experience required, just one dashboard, one payment, and endless possibilities.\r\n\r\nSee it in action: https://aistore.vinhgrowth.com\r\n\r\nYou are receiving this message because we believe our offer may be relevant to you. \r\nIf you do not wish to receive further communications from us, please click here to UNSUBSCRIBE: https://vinhgrowth.com/unsubscribe?domain=spokesenergy.com\r\nAddress: 60 Crown Street, London\r\nLooking out for you, Margaret Julia',1,'2025-11-24 23:13:13.047974'),(46,'SDXYxrkBfSdpBXqd','ikenedama24@gmail.com',NULL,'wOQPLnVbjHmUZEmvgTQja',1,'2025-11-30 11:23:57.353683'),(47,'rMnmohvbJvEqcAagFarlyQ','goyexiy118@gmail.com',NULL,'FXIUZVfketLckgqSfjjrwt',1,'2025-12-11 02:05:59.660874'),(48,'CNokgEKDrctbeSLTKBBGgj','sazetip950@gmail.com',NULL,'fwpjUVFzuDhRTdNyIuYYzU',1,'2025-12-16 05:43:48.045295'),(49,'Jo Riggs','joriggsvideo@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do, or to be used on social media as a promotional tool?\r\n\r\nOur videos cost just $195 USD for a 30 second video ($239 USD for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we\'ve done if you want me to send some over. Let me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo',1,'2025-12-24 12:38:05.031504'),(50,'EdGtkAJGcboMnytUaKaTnCW','ezazapisuvuc14@gmail.com',NULL,'fVAjjGzMnjHcqPYlqe',1,'2026-01-03 10:49:13.242068'),(51,'rtFYBdXldiqLmddwsVtQR','adutelowoqif38@gmail.com',NULL,'GbhSIxmIxaksbQNMg',1,'2026-01-04 05:04:04.675540'),(52,'rPKNaORzYJpEDiKhPM','i.c.ere.c.ih.3.9@gmail.com',NULL,'BhMRYBePqPrMpzWccx',1,'2026-01-13 05:58:12.559183'),(53,'klHPKALnLJylRdwJHeCGdC','iw.ode.yup8.5@gmail.com',NULL,'EvmCwxOMxgPzEjLUmLWVaa',1,'2026-02-04 01:32:40.077533'),(54,'Jo Riggs','joriggsvideo@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'ve ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.\r\n\r\nOur prices start from just $195 (USD).\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJo',1,'2026-02-06 03:27:41.122327'),(55,'WwsjQSBOkzPorgfouaSN','vomonusot.ade2.5@gmail.com',NULL,'EgJjZSxssvyIRnLNZWcjf',1,'2026-02-06 06:54:35.080029'),(56,'vjEqHIBIhVELlCcFpwMcN','xaf.utekup.o12@gmail.com',NULL,'CFgvIZVZDOrGsEUWfDLNF',1,'2026-02-20 16:17:38.552794'),(57,'AGMwznnJzQzydcPo','r.u.h.uzama9.6@gmail.com',NULL,'PjyySyYkWzwGMnyfruncYzmv',1,'2026-02-21 04:05:51.651690'),(58,'RSmDNfJLOoETgYkrXw','t.u.d.a.k.ej.e.15.3@gmail.com',NULL,'DDrSuIMDBUkCQNBJvdg',1,'2026-02-23 05:25:36.327726'),(59,'MOHAMMED ARSHAD T','arshadt357@gmail.com',NULL,'Seeking to the role of Quality control engineer - Painting, as a Mechanical engineer with diploma in mechanical engineering i have 3 yrs of UAE experience and a progressive mindset for career and learning',1,'2026-03-07 08:38:16.106615'),(60,'Mollie Hanson','molliehanson.vgo@gmail.com',NULL,'Hi,\r\n\r\nWe offer a professional Instagram growth service designed to help you increase your follower count in a safe and practical way.\r\n\r\n– We guarantee an increase of 300–500+ new followers per month\r\n– Real human followers – people follow your account because they are genuinely interested in your business or niche\r\n– 100% manual work done by our team. We do not use bots or automation tools\r\n\r\nThe service costs just $60 USD per month, and we can begin right away. If you’re interested and would like to review some examples of our previous results, feel free to let me know so we can discuss further.\r\n\r\nKind regards,\r\n\r\nTo unsubscribe, simply reply with “unsubscribe” in the subject line.',1,'2026-03-14 18:49:10.212091'),(61,'Mollie Hanson','molliehanson.vgo@gmail.com',NULL,'Hi,\r\n\r\nWe offer a professional Instagram growth service designed to help you increase your follower count in a safe and practical way.\r\n\r\n– We guarantee an increase of 300–500+ new followers per month\r\n– Real human followers – people follow your account because they are genuinely interested in your business or niche\r\n– 100% manual work done by our team. We do not use bots or automation tools\r\n\r\nThe service costs just $60 USD per month, and we can begin right away. If you’re interested and would like to review some examples of our previous results, feel free to let me know so we can discuss further.\r\n\r\nKind regards,\r\n\r\nTo unsubscribe, simply reply with “unsubscribe” in the subject line.',1,'2026-03-15 04:42:24.549839'),(62,'Mollie Hanson','molliehanson.vgo@gmail.com',NULL,'Hi,\r\n\r\nWe offer a professional Instagram growth service designed to help you increase your follower count in a safe and practical way.\r\n\r\n– We guarantee an increase of 300–500+ new followers per month\r\n– Real human followers – people follow your account because they are genuinely interested in your business or niche\r\n– 100% manual work done by our team. We do not use bots or automation tools\r\n\r\nThe service costs just $60 USD per month, and we can begin right away. If you’re interested and would like to review some examples of our previous results, feel free to let me know so we can discuss further.\r\n\r\nKind regards,\r\n\r\nTo unsubscribe, simply reply with “unsubscribe” in the subject line.',1,'2026-03-17 11:45:57.033935'),(63,'KOOJByfPGijGePsOrDujBuD','u.m.uka.t.ad4.3.9@gmail.com',NULL,'PxpBjqSOAAygZOAMwmjIBGB',1,'2026-03-19 00:34:08.085813'),(64,'lakisoJMxVgKbWHgOguDyjeK','e.le.x.ezeqa.x.if24@gmail.com',NULL,'PRRrLRdmXKpGYzfsd',1,'2026-03-19 22:38:35.512570'),(65,'PZpDEBEgTHrrxoLkPzrE','p.a.b.oca.yoce.b.a0.0@gmail.com',NULL,'ecdgykJnyvGnCFQfPwbNb',1,'2026-03-25 06:46:14.430267'),(66,'Joanna Riggs','joannariggs62@gmail.com',NULL,'Hi,\r\n\r\nI just visited spokesenergy.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195 (USD).\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=spokesenergy.com',1,'2026-03-25 18:33:44.166201'),(67,'Gwen Church','church.gwen@outlook.com',NULL,'Hello there,\r\n\r\nCame across your site and had to reach out! Really great work on the design. ✨\r\n\r\nMy name\'s Lance, and I run DesignChan.org. It\'s basically a small community where we highlight beautiful websites for other designers to see and get inspired by. ������\r\n\r\nWould you be open to us showcasing your website? It\'s a great way to:\r\n\r\nGet your work in front of a bunch of dedicated design enthusiasts.\r\nGrab a nice backlink from our site.\r\nGet some recognition for the awesome work you\'ve done.\r\nPlus, you\'re totally welcome to join and post your own projects. It\'s free and easy and a cool way to connect with other creators. ������\r\n\r\nWhat do you think? Sound interesting? No pressure at all, of course. Just thought your site deserved a shout-out!\r\n\r\nYou can check out the gallery here to see if it\'s your vibe: https://designchan.org\r\n\r\n\r\nThanks, Lance from DesignChan.org\r\n\r\nP.S. You can just reply to this email if you\'re interested or have any questions! My inbox is always open.',1,'2026-04-05 04:19:21.367315'),(68,'LKJFayWyADLyOMYDTRnF','e.k.igix.uba.k.u.k54@gmail.com',NULL,'wlAHmjhwswbPVUeiceJM',1,'2026-04-11 02:37:00.833739'),(69,'Mollie Hanson','molliehanson.vgo@gmail.com',NULL,'Hi there,\r\n\r\nAre you looking to grow your YouTube channel with real, engaged subscribers?\r\n\r\nWe offer a YouTube growth service designed to help you consistently expand your audience in a safe and effective way.\r\n\r\nHere’s what you can expect:\r\n\r\n- Gain approximately 300–500 new subscribers every month\r\n- Attract viewers who are genuinely interested in your content\r\n- Increase engagement with more likes, comments, and interactions\r\n- 100% manual promotion — no bots, no shortcuts\r\n\r\nOur service is simple and affordable at just $60/month, and we can get started right away.\r\n\r\nIf you’d like to see examples of our past results or learn more, just reply to this email — we’d be happy to share details.\r\n\r\nBest regards,\r\n\r\nMollie\r\n\r\nTo unsubscribe, simply reply with “unsubscribe” in the subject line.',1,'2026-04-12 15:04:48.062303'),(70,'Jennifer Allen','jenniferallen.digitalmarketing@gmail.com',NULL,'Hi,\r\n \r\nJust following up on my previous message about our AI-based SEO solution that combines local and global optimization affordably.\r\n \r\nI also submitted an inquiry through your website in case my email was missed.\r\n \r\nMay I share a brief overview?\r\n \r\nBest regards,\r\nJennifer\r\n \r\nReply stop to unsubscribe',1,'2026-04-18 10:39:14.789066'),(71,'LRjjqxcxWBanJMBe','o.mopepah.ufe5.5@gmail.com',NULL,'ckyYlsVaveWVrzWMOIi',1,'2026-05-05 00:32:26.099231'),(72,'LRjjqxcxWBanJMBe','o.mopepah.ufe5.5@gmail.com',NULL,'ckyYlsVaveWVrzWMOIi',1,'2026-05-05 00:32:30.859771'),(73,'goSULwhoRLrFuMFYnGWM','c.i.n.ah.o.si.po.85.1@gmail.com',NULL,'IfClzXRBCmtHBRPcmywVjGE',1,'2026-05-08 18:38:19.899634'),(74,'KNoyUoVYPIVotIxmSq','fo.lu.qi.go.so.r.17.6@gmail.com',NULL,'PXngLgiCoFokhelU',1,'2026-05-11 17:15:51.547544'),(75,'FjXeMmjwshNbGAkcHKhYOPhm','i.b.ex.e.y.uc.e.29@gmail.com',NULL,'uVepeQeVsijHywfqlVCCmE',1,'2026-05-13 02:39:05.478288'),(76,'IeMsSOsZQbsQPfRV','a.j.o.ni.wa.r49@gmail.com',NULL,'GHqTuCZjIAXRmsuBpyQx',1,'2026-05-13 05:00:49.861710'),(77,'aiHKSyVURQAujPhAvGydMAs','ota.n.oc.eri9.0.3@gmail.com',NULL,'tqFIwETbgEbVOWAgRTdA',1,'2026-05-15 04:10:53.222799'),(78,'CmPDuJbDGLsdqSJpfWBtsLDl','d.aha.t.u.n.a27@gmail.com',NULL,'tdyWpimqGEiscAEtsWZNZ',1,'2026-05-16 03:41:50.460342'),(79,'UXCEhrCJYGcKoXiaNXzeRndG','a.n.adiwu.m.e.y.a7.5@gmail.com',NULL,'SRsgbmdpwijHuAzrbHLjLrFJ',1,'2026-05-18 11:28:55.760583'),(80,'vVcZCPKlivAhbDpuBrTZ','i.g.a.me.w.uqe.mip7.6@gmail.com',NULL,'wHdKBPSiXOfpSvMFFGstep',1,'2026-05-24 01:32:34.324778'),(81,'ugQmwDPyOsFlXtQzy','qe.b.exofa.12@gmail.com',NULL,'dTaihGJBGEvnLutyUY',1,'2026-05-31 15:28:20.562064'),(82,'Melissa Harrison','melissa.harrison@revelar-capital.com',NULL,'We are exploring business partnerships and believe there may be opportunities for cooperation with your company. We want to make significant purchase. Please find our specifications attached for your review.\r\n\r\nCould you kindly direct this inquiry to the appropriate Export Sales Manager or Business Development representative?\r\n\r\nI look forward to discussing potential opportunities together.\r\n\r\nBest regards,\r\n\r\nMelissa Harrison\r\nProcurement and Acquisition Manager\r\nRevelar Capital\r\n605 Third Avenue\r\nNew York, NY 10158',1,'2026-06-02 01:45:26.320600'),(83,'FkdLuTAwIfCIimmFZFXu','uqe.qawu.q.78@gmail.com',NULL,'fJFYwgUiKRZeCpxszZNkx',1,'2026-06-11 15:45:07.414510'),(84,'OTtGritocXArbIHadt','s.ag.o.b.a.l.u8.2@gmail.com',NULL,'YlHzbCppOjTucbYAWHnoAZp',1,'2026-06-24 09:59:21.697180'),(85,'bfDMczDTVFmTXEeeBeDITg','ge.w.u.zid.e.g5.6@gmail.com',NULL,'KRDMQQpSARxqzDLY',1,'2026-07-12 20:53:46.702518'),(86,'bfDMczDTVFmTXEeeBeDITg','ge.w.u.zid.e.g5.6@gmail.com',NULL,'KRDMQQpSARxqzDLY',1,'2026-07-12 20:53:49.778370');
/*!40000 ALTER TABLE `administrator_contactusmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_gallerydetails`
--

DROP TABLE IF EXISTS `administrator_gallerydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_gallerydetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `main_image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_gallerydetails`
--

LOCK TABLES `administrator_gallerydetails` WRITE;
/*!40000 ALTER TABLE `administrator_gallerydetails` DISABLE KEYS */;
INSERT INTO `administrator_gallerydetails` VALUES (1,'Christmass Celebration','20221224_130410.jpg','* Spokes Energy Celbrated the Christmas with the spokes team.\r\n* Let us take this opportunity to wish you all a Merry Christmas & Happy New year.',1,'2022-12-25 07:06:03.559158'),(2,'Annual Day Celebrations.','WhatsApp_Image_2023-12-17_at_10.17.36_AM_JLIkydA.jpeg','Spokes Energy Celebrated the Seasons Joy and togetherness on 16/12/2023',1,'2023-12-24 09:14:18.049505'),(3,'Helideck painting systen','WhatsApp_Image_2023-10-09_at_4.27.26_PM.jpeg','Spokes completed the Sample painting for the Helideck System to the highest quality standards',1,'2023-12-24 09:29:40.011276'),(4,'Coal tar paint and marking system','20221026_191249.jpg','Completed the Painting of 1000 X Small tubes with Special coal tar painting with additional marking requirement as per client requirement.',1,'2023-12-24 09:30:49.999521'),(5,'Stainless steel top clear coat with polished finish,','20230501_072220.jpg','Spokes completed the Special clear coat Application for stainless steel surface protection which will provided additional coating for the Stainless steel surface by keeping the stainless steel finish maintained,',1,'2023-12-24 09:32:11.831991'),(6,'Blasting and painting on heavy structure','20230510_095955.jpg','Spokes Completed the Heavy Structural Blasting & Painting job in record time by meeting the full requirement of client.',1,'2023-12-24 09:33:31.285926'),(7,'Special Pull test requirement','WhatsApp_Image_2023-04-07_at_10.39.12_AM_1.jpeg','Pull test is the test that is being used to evaluate the adhesion capacity of paint layers with the structures,.',1,'2023-12-24 09:34:39.802381'),(8,'Special Painting Application for Pressure vessel','WhatsApp_Image_2023-10-09_at_5.19.16_PM.jpeg','Spokes Energy completed the special pressure vessel painting application internal and external coating for one of the client.',1,'2023-12-24 09:36:00.296528'),(9,'30 Meter Girder system','WhatsApp_Image_2023-10-20_at_8.26.29_PM.jpeg','Spokes Energy recently completed the biggest Girder system of 30 meter length from the facility.',1,'2023-12-24 09:37:09.910369');
/*!40000 ALTER TABLE `administrator_gallerydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_patnersdetails`
--

DROP TABLE IF EXISTS `administrator_patnersdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_patnersdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_patnersdetails`
--

LOCK TABLES `administrator_patnersdetails` WRITE;
/*!40000 ALTER TABLE `administrator_patnersdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator_patnersdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_productsdetails`
--

DROP TABLE IF EXISTS `administrator_productsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_productsdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_productsdetails`
--

LOCK TABLES `administrator_productsdetails` WRITE;
/*!40000 ALTER TABLE `administrator_productsdetails` DISABLE KEYS */;
INSERT INTO `administrator_productsdetails` VALUES (1,'Spokes is an ISO9001 Certified Company','1._ISO9001_Certification.jpg','We are delighted to have been awarded ISO 9001:2015 certification, an internationally recognised standard that ensures that our services meet the needs of our clients through an effective quality management system.\r\nWe have developed and implemented our quality management system in order to improve the overall performance, maintain a high-level of quality and strong customer service and to provide a sound basis for sustainable development initiatives.',1,'2023-05-15 17:46:19.762330'),(2,'Approved Applicator for Jotun','2._Jotun-_Approved_Applicator_Certificate.jpg','We are an approved applicator for Jotun paints for all specification paints from Jotun. This has been achieved through continuous training programs for the Blasters and painters to apply the Jotun paints with proper quality and efficiency.',1,'2023-05-15 18:00:46.232087'),(3,'Approved Applicator for Hempel paints','3._Hempel_-_APPROVED_APPLICATOR_CERT.jpg','Spokes Energy is an Apporved applicator for all specification of Hempel paints. Hempel has given a training for the proper methods and requirements with related to quality, Safety and environmental considerations.',1,'2023-05-15 18:03:11.439454'),(4,'ISO 14001 & 45001','Slide1.JPG','Spokes Energy Glad to announce Successful Completion of  ISO14001 & 45001 Certification. This leads us to be more responsible towards our safety and Environmental commitment',1,'2023-12-24 09:22:09.444376');
/*!40000 ALTER TABLE `administrator_productsdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_servicedetails`
--

DROP TABLE IF EXISTS `administrator_servicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_servicedetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `main_image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_servicedetails`
--

LOCK TABLES `administrator_servicedetails` WRITE;
/*!40000 ALTER TABLE `administrator_servicedetails` DISABLE KEYS */;
INSERT INTO `administrator_servicedetails` VALUES (1,'Intumescent & Cementitious coating','20190306_125950_resized.webp','Spokes Energy is specialised in meeting the project specific fireproofing application and thereby assuring the structural integrity in case of fire for a duration of time. Any site-specific qualification can be obtained based on project requirement.',1,'2022-12-19 19:38:56.385244'),(2,'Blast cleaning and Protective coating','01.1.jpeg','Blasting and painting is one of the core strength of Spokes Energy. Spokes Energy specialized in various surface blasting techniques including abrasive Sands, metal grits, Stainless steel grits, Copper slags or glass beads. An approved applicator for the internationally recognized Paint system & is qualified to carry out painting job with assured warranty.',1,'2022-12-19 19:40:17.744093'),(3,'Offshore paint application','1.7.jpg','Offshore paint application follows specified paining scheme and conformance to the procedure is vital for the duration offshore installation . Coatings are applied in accordance with paint manufacturer recommendation and instruction .Strict quality assurance are implemented from receipt of material until delivery .',1,'2022-12-19 19:42:56.587626'),(4,'Structures with architectural Finish','AESS_Category_2.jpg','Spokes Energy completely understand the aesthetic attributes defined by architects .Our team is skilled enough to meet the project requirement of aesthetic finish by applying epoxy fillers and coating. Project that requires architectural finish will require high effort in coordination which Spokes Energy system, process and management team is proven and bench marked as qualified.',1,'2022-12-19 19:45:50.472606'),(5,'Marine coating','WhatsApp_Image_2023-04-07_at_10.39.20_AM_2.jpeg','Surface preparation and coating of marine engine, pumps or other equipment parts are taken care by spokes riding team or taken into the Spokes paint shop . Spokes expert will advise Marine operations what type of blasting can be best used for the metal cleaning , this may include glass bead, sponge spot blast etc.',1,'2022-12-19 19:49:21.174729'),(6,'Inspection Services','01.2.jpg','Spokes Engineers are equipped and trained in providing quality inspection service on coating system. Though this is our core field of activities, we are committed to support client on their requirement. Our engineers are NACE and B Gas certified and experienced in various recognized painting systems and standards.',1,'2023-04-10 09:28:06.263612');
/*!40000 ALTER TABLE `administrator_servicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_serviceimage`
--

DROP TABLE IF EXISTS `administrator_serviceimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_serviceimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `administrator_serviceimage_service_id_81572a16_fk` (`service_id`),
  CONSTRAINT `administrator_serviceimage_service_id_81572a16_fk` FOREIGN KEY (`service_id`) REFERENCES `administrator_servicedetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_serviceimage`
--

LOCK TABLES `administrator_serviceimage` WRITE;
/*!40000 ALTER TABLE `administrator_serviceimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator_serviceimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_testimonial`
--

DROP TABLE IF EXISTS `administrator_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_testimonial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `added_by` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `image` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_bin,
  `date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_testimonial`
--

LOCK TABLES `administrator_testimonial` WRITE;
/*!40000 ALTER TABLE `administrator_testimonial` DISABLE KEYS */;
INSERT INTO `administrator_testimonial` VALUES (1,'ISO 9001-Accreditation','Spokes Team','ISO9001.jpg','Spokes successfully completed the ISO 9001 certification with all the business process established with proper workflow arrangement to ensure the product quality..','2023-01-01',1,'2023-01-02 15:03:26.004895'),(2,'ISO14001 & ISO45001','Spokes Operation','Slide1_hbIpVv3.JPG','Spokes Energy Glad to announce the successful completion of the ISO 14001 & ISO45001 Certification, This reminds us to be more carefully towards the HSE and Environment management.','2023-12-20',1,'2023-12-24 09:24:50.902829');
/*!40000 ALTER TABLE `administrator_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_userprofile'),(22,'Can change user',6,'change_userprofile'),(23,'Can delete user',6,'delete_userprofile'),(24,'Can view user',6,'view_userprofile'),(25,'Can add token',7,'add_token'),(26,'Can change token',7,'change_token'),(27,'Can delete token',7,'delete_token'),(28,'Can view token',7,'view_token'),(29,'Can add blog details',8,'add_blogdetails'),(30,'Can change blog details',8,'change_blogdetails'),(31,'Can delete blog details',8,'delete_blogdetails'),(32,'Can view blog details',8,'view_blogdetails'),(33,'Can add contact us message',9,'add_contactusmessage'),(34,'Can change contact us message',9,'change_contactusmessage'),(35,'Can delete contact us message',9,'delete_contactusmessage'),(36,'Can view contact us message',9,'view_contactusmessage'),(37,'Can add gallery details',10,'add_gallerydetails'),(38,'Can change gallery details',10,'change_gallerydetails'),(39,'Can delete gallery details',10,'delete_gallerydetails'),(40,'Can view gallery details',10,'view_gallerydetails'),(41,'Can add patners details',11,'add_patnersdetails'),(42,'Can change patners details',11,'change_patnersdetails'),(43,'Can delete patners details',11,'delete_patnersdetails'),(44,'Can view patners details',11,'view_patnersdetails'),(45,'Can add products details',12,'add_productsdetails'),(46,'Can change products details',12,'change_productsdetails'),(47,'Can delete products details',12,'delete_productsdetails'),(48,'Can view products details',12,'view_productsdetails'),(49,'Can add service details',13,'add_servicedetails'),(50,'Can change service details',13,'change_servicedetails'),(51,'Can delete service details',13,'delete_servicedetails'),(52,'Can view service details',13,'view_servicedetails'),(53,'Can add service image',14,'add_serviceimage'),(54,'Can change service image',14,'change_serviceimage'),(55,'Can delete service image',14,'delete_serviceimage'),(56,'Can view service image',14,'view_serviceimage'),(57,'Can add testimonial',15,'add_testimonial'),(58,'Can change testimonial',15,'change_testimonial'),(59,'Can delete testimonial',15,'delete_testimonial'),(60,'Can view testimonial',15,'view_testimonial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb3_bin,
  `object_repr` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb3_bin NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-05 05:10:57.007447','2','superadmin',1,'[{\"added\": {}}]',6,1),(2,'2022-12-05 05:11:04.641050','2','superadmin',2,'[{\"changed\": {\"fields\": [\"User type\"]}}]',6,1),(3,'2022-12-05 05:13:18.481698','2','superadmin',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',6,1),(4,'2022-12-05 05:14:45.698351','2','superadmin',2,'[]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `model` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'administrator','blogdetails'),(9,'administrator','contactusmessage'),(10,'administrator','gallerydetails'),(11,'administrator','patnersdetails'),(12,'administrator','productsdetails'),(13,'administrator','servicedetails'),(14,'administrator','serviceimage'),(15,'administrator','testimonial'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'user','token'),(6,'user','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-05 03:16:07.513370'),(2,'contenttypes','0002_remove_content_type_name','2022-12-05 03:16:07.601144'),(3,'auth','0001_initial','2022-12-05 03:16:07.961098'),(4,'auth','0002_alter_permission_name_max_length','2022-12-05 03:16:08.028076'),(5,'auth','0003_alter_user_email_max_length','2022-12-05 03:16:08.036259'),(6,'auth','0004_alter_user_username_opts','2022-12-05 03:16:08.044656'),(7,'auth','0005_alter_user_last_login_null','2022-12-05 03:16:08.053074'),(8,'auth','0006_require_contenttypes_0002','2022-12-05 03:16:08.059059'),(9,'auth','0007_alter_validators_add_error_messages','2022-12-05 03:16:08.073525'),(10,'auth','0008_alter_user_username_max_length','2022-12-05 03:16:08.146673'),(11,'user','0001_initial','2022-12-05 03:16:08.575205'),(12,'admin','0001_initial','2022-12-05 03:16:08.726460'),(13,'admin','0002_logentry_remove_auto_add','2022-12-05 03:16:08.737044'),(14,'admin','0003_logentry_add_action_flag_choices','2022-12-05 03:16:08.747690'),(15,'administrator','0001_initial','2022-12-05 03:16:09.023707'),(16,'administrator','0002_auto_20221005_0925','2022-12-05 03:16:09.491586'),(17,'administrator','0003_testimonial','2022-12-05 03:16:09.522615'),(18,'auth','0009_alter_user_last_name_max_length','2022-12-05 03:16:09.534078'),(19,'auth','0010_alter_group_name_max_length','2022-12-05 03:16:09.592838'),(20,'auth','0011_update_proxy_permissions','2022-12-05 03:16:09.608567'),(21,'auth','0012_alter_user_first_name_max_length','2022-12-05 03:16:09.619814'),(22,'sessions','0001_initial','2022-12-05 03:16:09.668446'),(23,'user','0002_auto_20220523_0654','2022-12-05 03:16:09.754988'),(24,'user','0003_auto_20220923_1235','2022-12-05 03:16:10.536407');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb3_bin NOT NULL,
  `session_data` longtext COLLATE utf8mb3_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0af0lo48b6qw171n9xkin2qryzwb96le','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1pCMGG:EuGx1AM5pe_6JbUDExhuH3O7WKdZPeyt09DB0nfHZSo','2023-01-16 14:58:00.195119'),('6bfl99v729xgfq7k3pjahgcpmrrcbg5b','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1plnPr:un9JZYQsd54duErJFi32gxzyI4H3zkXsBJEzwkjbXSs','2023-04-24 09:02:23.856275'),('74ygzhxgt0igadtu15oimm79tatr0g7f','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1wcMZ9:ygr00RY_1YQ2QDkiCawTETF2lmjXExS7p6EBAqJZEp4','2026-07-08 12:18:51.341254'),('hubdsyahh45zbchhr6jw4dz4k11xqqjj','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1rHKIb:0conRCTS3q3_fo2l-0BF7w_GJOsOdplYjdpMCYlTY-4','2024-01-07 08:57:29.545901'),('hyij3ixqrnuv524qipz1831orz0k5ans','.eJxVjDsOwjAQBe_iGlnxf6Gk5wzWrtfGAeRIcVIh7o4spYD2zcx7i4j7VuPe8xpnFhehxOl3I0zP3AbgB7b7ItPStnUmORR50C5vC-fX9XD_Dir2OupAgOwSAGrFxoI3iOeg2UzeF6NCVhi80ROVpJWzmYshX5gsFA_sxOcL4yY4Bg:1p224j:5y8TP31E_7tmvzqsuq2AbRRCqKMyoenURT0PIQl8d04','2022-12-19 03:23:25.669167'),('jfy8b9g4d2u5mcozeh9oaiaptzschg88','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1pychd:CTOa0h1hwCnDIDVIdbkgSeL0HAVewaob3aAJaEqrirU','2023-05-29 18:13:45.456260'),('onpiov3zu7zhbwa0cibvwrdpssg2gjg9','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1p9KRH:Qsw954wZz3wGeYtuaUQrwthynUHzTeKfA7GNb_90ixQ','2023-01-08 06:24:51.449286'),('vyog48rz67nlsh0e5tvlzkmcqmd4eb57','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1weQGz:JGYnsTi2Y0SjnQMLwpVe6w4CrYIdytF8Wj71YwIlqyA','2026-07-14 04:40:37.322784'),('wth23qiu8nokcdtndi87d79l02ft74hx','.eJyrVkpJLElUsqpWKi1OLYrPTFGyMtKBsEsqC1KVrJQcXXw9_ZR0lErys1PzgHw_Y5MM75TE4qK8gkLPomCP4oAk52KLQqOsKuPcbLMCP4NsJ_-QQP88JYgxeYm5IFOKSwtSixJTcjNB4sUliSWlxUpWJUWlqbUQZehKyLANxVQAnb5JPA:1wcz0T:TWlX2YeMV00-SYhZmnedIGyao9uTAhUE9I0g7BORXaU','2026-07-10 05:21:37.665064'),('zv4su3dy5pceeu1xp5y14k3mjba9c26s','.eJxVjDsOwjAQBe_iGlnxf6Gk5wzWrtfGAeRIcVIh7o4spYD2zcx7i4j7VuPe8xpnFhehxOl3I0zP3AbgB7b7ItPStnUmORR50C5vC-fX9XD_Dir2OupAgOwSAGrFxoI3iOeg2UzeF6NCVhi80ROVpJWzmYshX5gsFA_sxOcL4yY4Bg:1p23n4:L_KbVTLrm9v_akHVgt0q7uWtcEH1n1F75ONKnXTDFK8','2022-12-19 05:13:18.495401');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(40) COLLATE utf8mb3_bin NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `session_dict` longtext COLLATE utf8mb3_bin NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  UNIQUE KEY `user_token_user_id_69e1f632_uniq` (`user_id`),
  CONSTRAINT `user_token_user_id_69e1f632_fk` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` VALUES (1,'N34hKdasrnpqIrSHsPbCs8q2jz3mk6pN0kBOTQOn','2022-12-05 07:31:21.846043','2022-12-05 07:31:21.846087',2,'{\"real_user\": 2}');
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userprofile`
--

DROP TABLE IF EXISTS `user_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb3_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb3_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(254) COLLATE utf8mb3_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `user_type` varchar(30) COLLATE utf8mb3_bin NOT NULL,
  `mobile_no` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userprofile`
--

LOCK TABLES `user_userprofile` WRITE;
/*!40000 ALTER TABLE `user_userprofile` DISABLE KEYS */;
INSERT INTO `user_userprofile` VALUES (1,'pbkdf2_sha256$260000$s7sfSo44IBTFJMSSP0SR2J$0gmykkYt4q4vwJI3UBCOmOI+Rbv/4fk0WVmYKknXByo=','2022-12-05 05:10:08.865349',1,'superuser','','','contact@codesap.com',1,'2022-12-05 03:19:20.179726','MALE','',NULL,'ACTIVE',1,'2022-12-05 03:19:20.350748','2022-12-05 03:19:20.350762'),(2,'pbkdf2_sha256$260000$sSxNzFmZktShtBU2XwFTCM$skSv2RP/mUVD6KbyCyNUmzJaoqLUiKo2ETQOL2TTdZU=',NULL,0,'superadmin','','','',0,'2022-12-05 05:10:56.818695','MALE','ADMIN',NULL,'ACTIVE',1,'2022-12-05 05:10:57.003558','2022-12-05 05:14:45.697030');
/*!40000 ALTER TABLE `user_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userprofile_groups`
--

DROP TABLE IF EXISTS `user_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_userprofile_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_groups_userprofile_id_group_id_52847a61_uniq` (`userprofile_id`,`group_id`),
  KEY `user_userprofile_groups_group_id_98cc4038_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_userprofile_groups_group_id_98cc4038_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userprofile_groups`
--

LOCK TABLES `user_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `user_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `user_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_userprofile_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_user_pe_userprofile_id_permissio_2e86ceca_uniq` (`userprofile_id`,`permission_id`),
  KEY `user_userprofile_use_permission_id_7f559b23_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_userprofile_use_permission_id_7f559b23_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userprofile_user_permissions`
--

LOCK TABLES `user_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-17 13:07:59
