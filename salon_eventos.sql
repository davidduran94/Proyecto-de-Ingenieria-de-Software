-- MySQL dump 10.13  Distrib 5.1.68, for Win64 (unknown)
--
-- Host: localhost    Database: salon_eventos
-- ------------------------------------------------------
-- Server version	5.1.68-community

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
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `idEventos` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Tipo_Evento` varchar(45) NOT NULL,
  `Cantidad` bigint(20) NOT NULL,
  `Usuarios_idUsuarios` bigint(20) NOT NULL,
  PRIMARY KEY (`idEventos`),
  KEY `fk_Eventos_Usuarios_idx` (`Usuarios_idUsuarios`),
  CONSTRAINT `fk_Eventos_Usuarios` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'2013-05-21','Boda',250,1);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_invitados`
--

DROP TABLE IF EXISTS `lista_invitados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lista_invitados` (
  `idLista_invitados` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(500) NOT NULL,
  `N_mesa` bigint(20) NOT NULL,
  `Eventos_idEventos` bigint(20) NOT NULL,
  PRIMARY KEY (`idLista_invitados`),
  KEY `fk_Lista_invitados_Eventos1_idx` (`Eventos_idEventos`),
  CONSTRAINT `fk_Lista_invitados_Eventos1` FOREIGN KEY (`Eventos_idEventos`) REFERENCES `eventos` (`idEventos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_invitados`
--

LOCK TABLES `lista_invitados` WRITE;
/*!40000 ALTER TABLE `lista_invitados` DISABLE KEYS */;
INSERT INTO `lista_invitados` VALUES (1,'Roberto Carlos, Zinedine Zidane, Jorge Campos, Andrea Pirlo, Dida',1,1),(2,'Paul Pogba, Raul Jimenez, Javier Hernandez,  Gianluigui Buffon, Cristiano Ronaldo, Marco Reus',2,1),(3,'Gareth Bale, Jame Rodriguez, Isco Alarcon, Iker Casillas, Mario Gotze, Rafael Nadal',3,1);
/*!40000 ALTER TABLE `lista_invitados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `idServicios` bigint(20) NOT NULL AUTO_INCREMENT,
  `Juegos_Infantiles` tinyint(1) NOT NULL,
  `Grupo_Musical` tinyint(1) NOT NULL,
  `Animador` tinyint(1) NOT NULL,
  `Meseros` tinyint(1) NOT NULL,
  `Ballet_Parking` tinyint(1) NOT NULL,
  `Comida` tinyint(1) NOT NULL,
  `Bebida` tinyint(1) NOT NULL,
  `Eventos_idEventos` bigint(20) NOT NULL,
  PRIMARY KEY (`idServicios`),
  KEY `fk_Servicios_Eventos1_idx` (`Eventos_idEventos`),
  CONSTRAINT `fk_Servicios_Eventos1` FOREIGN KEY (`Eventos_idEventos`) REFERENCES `eventos` (`idEventos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,0,1,1,1,0,0,1,1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuarios` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Nombre_Administrador` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Joel Vargas Mondragon','Joel','123');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-04  0:02:27
