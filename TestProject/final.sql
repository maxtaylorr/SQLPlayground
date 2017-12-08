DROP SCHEMA IF EXISTS epiz_20676241_world;
CREATE SCHEMA epiz_20676241_world;
USE epiz_20676241_world;
SET AUTOCOMMIT=0;


DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `CustomerID` INT(10) NOT NULL AUTO_INCREMENT,
  `FirstName` CHAR(35) NOT NULL DEFAULT '',
  `LastName` CHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`CustomerID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customer` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;


INSERT INTO `customer` VALUES (1,'John','Smith');
INSERT INTO `customer` VALUES (2,'Patrick','Waganar');
INSERT INTO `customer` VALUES (3,'Samuel','Slayer');
INSERT INTO `customer` VALUES (4,'Debra','Ulysess');
INSERT INTO `customer` VALUES (5,'Steve','Madden');
INSERT INTO `customer` VALUES (6,'Allison','Joy');



DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `ProductID` INT(10) NOT NULL AUTO_INCREMENT '',
  `GameName` CHAR(52) NOT NULL DEFAULT '',
  `Developer` CHAR(26) NOT NULL DEFAULT '',
  `Publisher` CHAR(26) NOT NULL DEFAULT '',
  `RealeaseYear` INT(4) NOT NULL DEFAULT '0000',
  `Cost` FLOAT(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ProductID`)
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `customer` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;

INSERT INTO `product` VALUES (1,'Counter Strike: Global Offenseive','Valve','Valve',2012, 14.99);
INSERT INTO `product` VALUES (2,'Rocket League','Psyonix','Psyonix',2015, 19.99);
INSERT INTO `product` VALUES (4,'Assassians Creed: Origins','Ubisoft Montreal','Ubisoft',2017, 59.99);
INSERT INTO `product` VALUES (5,'Grand Theft Auto: V','Rockstar North','Rockstar Games',2015, 29.99);
INSERT INTO `product` VALUES (6,'Rust','Facepunch Studios','Facepunch Studios',2013, 19.99);
INSERT INTO `product` VALUES (7,'Star Wars: Battlefront 2','Pandemic Studios','Lucasfilm LucasArts',2005, 9.99);
INSERT INTO `product` VALUES (8,'PLAYERUNKNOWNS BATTLEGROUNDS','PUBG Corporation','PUBG Corporation',2017, 29.99);
INSERT INTO `product` VALUES (9,'Terraria','Re-Logic','Re-Logic',2011, 9.99);
INSERT INTO `product` VALUES (10,'Call of Duty: WWII','Sledgehammer Games','Activision',2017, 59.99);
INSERT INTO `product` VALUES (11, 'Team Fortress 2','Valve','Valve',2007, 0.00);
INSERT INTO `product` VALUES (12, 'Fallout 3','Bethesda Game Studios','Bethesda Softworks',2009, 9.99);
INSERT INTO `product` VALUES (13, 'Left 4 Dead 2','Valve','Valve',2009, 19.99);
INSERT INTO `product` VALUES (14, 'Miscreated','Entrada Interactive','Entrada Interactive',2014, 19.99);
INSERT INTO `product` VALUES (16, 'Mass Effect 2','Bioware','EA',2010, 19.99);
INSERT INTO `product` VALUES (17, 'Goat Simulator','Coffee Stain Studios','Coffee Stained Studios',2014, 9.99);
INSERT INTO `product` VALUES (18,'Portal 2','Valve','Valve',2011, 19.99);
INSERT INTO `product` VALUES (19, 'Watch_Dogs','Ubisoft','Ubisoft',2014, 29.99);
INSERT INTO `product` VALUES (20, 'Dota','Valve','Valve',2013, 0.00);


DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
  `OrderID` INT(10) NOT NULL AUTO_INCREMENT '',
  `CustomerID` CHAR(30) NOT NULL DEFAULT '',
  `ProductID` CHAR(10) NOT NULL AUTO_INCREMENT '',
  `Cost` FLOAT(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`OrderID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `_ibfk_1` FOREIGN KEY (`CustomerID`, `ProductID`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Order` VALUES (1,1,10,59.99);
INSERT INTO `Order` VALUES (2,2,13,19.99);
INSERT INTO `Order` VALUES (3,3,20,0.00);
INSERT INTO `Order` VALUES (4,4,7,9.99);
INSERT INTO `Order` VALUES (5,5,9,9.99);
INSERT INTO `Order` VALUES (6,6,8,29.99);


SET AUTOCOMMIT=1;
