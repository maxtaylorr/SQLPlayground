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
  `ReleaseYear` INT(4) NOT NULL DEFAULT '0000',
  `Cost` FLOAT(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ProductID`)
  KEY `OrderID` (`OrderID`),
  FOREIGN KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;

INSERT INTO `product` VALUES (1,'Counter Strike: Global Offensive','Valve','Valve',2012, 14.99);
INSERT INTO `product` VALUES (2,'Rocket League','Psyonix','Psyonix',2015, 19.99);
INSERT INTO `product` VALUES (3,'Assassins Creed: Origins','Ubisoft Montreal','Ubisoft',2017, 59.99);
INSERT INTO `product` VALUES (4,'Grand Theft Auto: V','Rockstar North','Rockstar Games',2015, 29.99);
INSERT INTO `product` VALUES (5,'Rust','Facepunch Studios','Facepunch Studios',2013, 19.99);
INSERT INTO `product` VALUES (6,'Star Wars: Battlefront II','EA DICE','Electronic Arts', 2017, 59.99);
INSERT INTO `product` VALUES (7,'PLAYERUNKNOWNS BATTLEGROUNDS','PUBG Corporation','PUBG Corporation',2017, 29.99);
INSERT INTO `product` VALUES (8,'Terraria','Re-Logic','Re-Logic',2011, 9.99);
INSERT INTO `product` VALUES (9,'Call of Duty: WWII','Sledgehammer Games','Activision',2017, 59.99);
INSERT INTO `product` VALUES (10, 'Team Fortress 2','Valve','Valve',2007, 0.00);
INSERT INTO `product` VALUES (11, 'Fallout 3','Bethesda Game Studios','Bethesda Softworks',2009, 9.99);
INSERT INTO `product` VALUES (12, 'Left 4 Dead 2','Valve','Valve',2009, 19.99);
INSERT INTO `product` VALUES (13, 'Miscreated','Entrada Interactive','Entrada Interactive',2014, 19.99);
INSERT INTO `product` VALUES (14, 'Mass Effect 2','Bioware','EA',2010, 19.99);
INSERT INTO `product` VALUES (15, 'Goat Simulator','Coffee Stain Studios','Coffee Stain Studios',2014, 9.99);
INSERT INTO `product` VALUES (16, 'Watch Dogs','Ubisoft','Ubisoft',2014, 29.99);
INSERT INTO `product` VALUES (17, 'Dota','Valve','Valve',2013, 0.00);


DROP TABLE IF EXISTS `order`;
CREATE TABLE `Order` (
  `OrderID` INT(10) NOT NULL AUTO_INCREMENT '',
  `CustomerID` CHAR(30) NOT NULL DEFAULT '',
  `ProductID` CHAR(10) NOT NULL DEFAULT '',
  `Cost` FLOAT(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`OrderID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `_ibfk_1` FOREIGN KEY (`CustomerID`, `ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `order` VALUES (1,2,12,9.99);
INSERT INTO `order` VALUES (2,4,11,9.99);
INSERT INTO `order` VALUES (3,3,10,0.00);
INSERT INTO `order` VALUES (4,4,9,59.99);
INSERT INTO `order` VALUES (5,5,8,9.99);
INSERT INTO `order` VALUES (6,6,7,29.99);
INSERT INTO `order` VALUES (7,1,6,59.99);
INSERT INTO `order` VALUES (8,1,5,19.99);
INSERT INTO `order` VALUES (9,2,4,29.99);
INSERT INTO `order` VALUES (10,3,3,59.99);
INSERT INTO `order` VALUES (11,5,2,19.99);
INSERT INTO `order` VALUES (12,6,1,14.99);
INSERT INTO `order` VALUES (13,1,1,14.99);
INSERT INTO `order` VALUES (14,2,2,19.99);
INSERT INTO `order` VALUES (15,4,3,59.99);
INSERT INTO `order` VALUES (16,5,4,29.99);
INSERT INTO `order` VALUES (17,6,5,19.99);
INSERT INTO `order` VALUES (18,4,6,59.99);
INSERT INTO `order` VALUES (19,2,7,29.99);
INSERT INTO `order` VALUES (20,3,8,9.99);
INSERT INTO `order` VALUES (21,1,9,59.99);
INSERT INTO `order` VALUES (22,6,10,0.00);
INSERT INTO `order` VALUES (23,2,11,9.99);
INSERT INTO `order` VALUES (24,4,12,9.99);
INSERT INTO `order` VALUES (25,2,13,19.99);
INSERT INTO `order` VALUES (26,3,14,19.99);
INSERT INTO `order` VALUES (27,5,15,9.99);
INSERT INTO `order` VALUES (28,6,16,29.99);
INSERT INTO `order` VALUES (29,2,17,0.00);
INSERT INTO `order` VALUES (30,5,13,19.99);

SET AUTOCOMMIT=1;
