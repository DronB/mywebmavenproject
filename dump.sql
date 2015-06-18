-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: announcementsmvc
-- ------------------------------------------------------
-- Server version	5.6.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_psy47b338u2ohviv0eom1l15q` (`category_id`),
  CONSTRAINT `FK_psy47b338u2ohviv0eom1l15q` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (50,'Телевизор LG 42 ','Продам телевизор LG 42 PC 1 RR 106,7 cm ,в хорошем состоянии.Запись на встроенный жёсткий диск любимых программ в фоновом режиме.\r\nЖесткий диск 80 ГБ\r\nГабариты и вес\r\nШирина 112.9 см\r\nВысота 69.5 см\r\nГлубина 9.8 см\r\nВес 24.2 кг\r\nШирина (с подставкой) 112.9 см\r\nВысота (с подставкой) 74.8 см\r\nГлубина (с подставкой) 38.0 см ',2000.00,1,'Vasya','	Днепропетровск, Днепропетровская область, Индустриальный, тел:+380661958459, email: sasha@rambler.ru',3),(51,'Электрическая печь духовка Optimum PK-2222','Электрическая печь духовка Optimum PK-2222\r\n\r\nЭлектрическая печь духовка PK-2222 ― это отличное дополнение к Вашей бытовой технике на кухне. Она компактно впишется в интерьер любого кухонного помещения благодаря стильному эргономичному дизайну. Аппарат очень прост в обращении, но все же несомненно порадует качеством работы. Цвет черный.\r\n\r\nТехнические характеристики:\r\n\r\nРегулируемый термостат от 60 до 230oC;\r\n4 грелки из нержавеющей стали;\r\nФункция: гриль;\r\nМинутная стрелка на 60 мин. со звуковым сигналом и функцией \"stay on\";\r\nСъемный поднос с удобной ручкой для крошек;\r\nРешетка для гриля и поднос для жарения;\r\nИндикатор питания;\r\nЧерная передняя панель и корпус из нержавеющей стали;\r\nОбъем: 22 л;\r\nMoщность: 1500 Вт;\r\nНапряжение: 220 ― 240 В;\r\nЧастота: 50/60 Гц.\r\nВнутренние размеры приблизительно: -27 см Глубина, ширина -32 см; высота ― 19 см',1500.00,1,'Александр','Киев, Киевская область, Деснянский, тел: +380964227896, email: alex@rambler.ru',7),(52,'Мультиварка скороварка MIRTA MPC95,ГАРАНТИЯ 2 года ','Мультиварка Mirta MPC 95\r\nХарактеристики:\r\nТип Мультиварка\r\nМощность, Вт 900\r\nОбъем кастрюли, л 5\r\nКоличество программ(режимов) приготовления 8\r\nТип управления электронный\r\nМикропроцесорный контроль приготовления нет данных\r\nПриготовление каш есть\r\nПриготовление супов есть\r\nВыпечка есть\r\nТушение есть\r\nВарка на пару есть\r\nПриготовление под давлением есть\r\nПоддержание температуры есть ',1800.00,1,'Александр','Новомиргород, Кировоградская область, тел:-380991Киев, Киевская область, Деснянский, тел: +380964227896, email: alex@rambler.ru2569874, email: alex@rambler.ru ',7),(53,'Туфли Braska ','Туфли Braska,натуральная замша,каблук 12 см,удобные,одевались один раз,набойки не стерты,есть запасные в коробке,состояние 5+ ',400.00,2,'Александр','Киев, Киевская область, Деснянский, тел: +380964227896, email: alex@rambler.ru',7),(54,'Renault Megane PANORAMA 1.5 dCi 2010 ','Renault Megane, 2011 по техпаспорту 2010 Повна комплектація PANORAMA - для міста ідеальна машина\r\nСвіжопригнана, без пробігу по Україні. Зроблено повне ТО (масло, фільтра, ремінь)\r\n- розмитнене авто 100%\r\n- 6ст. мех. КПП, 81 квт. 110 кінських сил\r\n-Кнопка Start/Stop\r\n-Титанові диски\r\n- Авто в рідній фарбі, з оригінальним пробігом.\r\n- 2х - зонний клімат-контроль\r\n- Навігація\r\n- Датчики світла та дощу\r\n- Повний електро-пакет\r\n- Люк\r\n- Прозорий дах\r\nВ подарунок зимня резина і тонування ',280000.00,3,'Andrey Budyak','Черновцы, Черновицкая область, тел: +380661958647, email: budjak@rambler.ru',6),(55,'Кеды Le Coq Sportif ','Кеды Le Coq Sportif. Покупались в Италии. 43 размер. Стелька 29 см. ',800.00,2,'Andrey Budyak','Черновцы, Черновицкая область, тел: +380661958647, email: budjak@rambler.ru',6);
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Бытовая техника'),(2,'Одежда'),(3,'Транспорт'),(4,'Обмен'),(5,'Недвижимость'),(6,'Работа'),(7,'Разное');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(246) DEFAULT NULL,
  `isAdmin` varchar(256) DEFAULT NULL,
  `banned` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Admin','admin','admin@admin.ru','1','\0'),(6,'Andrey Budyak','187305','budjak@rambler.ru',NULL,'\0'),(7,'Александр','alex','alex@alex.ru',NULL,'\0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-18 22:10:50
