CREATE DATABASE  IF NOT EXISTS `bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshop`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `shoppingcartlist`
--

DROP TABLE IF EXISTS `shoppingcartlist`;
/*!50001 DROP VIEW IF EXISTS `shoppingcartlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shoppingcartlist` AS SELECT 
 1 AS `memberID`,
 1 AS `memberName`,
 1 AS `bookId`,
 1 AS `bookName`,
 1 AS `author`,
 1 AS `publisherName`,
 1 AS `category`,
 1 AS `quantity`,
 1 AS `price`,
 1 AS `totalPrice`,
 1 AS `addedDateTime`,
 1 AS `cartStatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `shoppingcartlist`
--

/*!50001 DROP VIEW IF EXISTS `shoppingcartlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shoppingcartlist` AS select `sc`.`memberID` AS `memberID`,`m`.`memberName` AS `memberName`,`b`.`bookID` AS `bookId`,`b`.`bookName` AS `bookName`,`b`.`author` AS `author`,`p`.`publisherName` AS `publisherName`,`b`.`category` AS `category`,`sc`.`quantity` AS `quantity`,`b`.`price` AS `price`,(`sc`.`quantity` * `b`.`price`) AS `totalPrice`,`sc`.`addedDateTime` AS `addedDateTime`,`sc`.`cartStatus` AS `cartStatus` from (((`shoppingcart` `sc` join `member` `m` on((`sc`.`memberID` = `m`.`memberID`))) join `book` `b` on((`sc`.`bookID` = `b`.`bookID`))) join `publisher` `p` on((`b`.`publisherID` = `p`.`publisherID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 10:56:55
