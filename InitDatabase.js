var liveDB;

function dbInit() {
  var dbObj = this;

   this.initCustomer = function() {
       liveDB.transaction(function (tx)
           {
               tx.executeSql('CREATE TABLE customer (CustomerID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,FirstName NVARCHAR(45),LastName NVARCHAR(45))',[], function(tx)
                   {
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("John","Smith")');
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("Patrick","Waganar")');
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("Samuel","Slayer")');
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("Debra","Ulysses")');
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("Steve","Madden")');
                       tx.executeSql('INSERT INTO `customer` (FirstName,LastName) VALUES ("Allison","Joy")');
                   }
               );
           }
           ,function (err) {
               if (err.message.indexOf("Customer already exists") === -1) {
                   window.alert("Error 6: " + err.message);
               }
           }
       );
   };

   this.initProduct = function() {
       liveDB.transaction(function (tx)
           {
               tx.executeSql('CREATE TABLE product (ProductID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,GameName NVARCHAR(52),Developer NVARCHAR(26),Publisher NVARCHAR(26),ReleaseYear INT,Cost MONEY)',[], function(tx)
                   {
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Counter Strike: Global Offensive","Valve","Valve",2012, 14.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Rocket League","Psyonix","Psyonix",2015, 19.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Assassins Creed: Origins","Ubisoft Montreal","Ubisoft",2017, 59.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Grand Theft Auto: V","Rockstar North","Rockstar Games",2015, 29.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Rust","Facepunch Studios","Facepunch Studios",2013, 19.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Star Wars: Battlefront II","EA DICE","Electronic Arts", 2017, 59.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("PLAYERUNKNOWNS BATTLEGROUNDS","PUBG Corporation","PUBG Corporation",2017, 29.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Terraria","Re-Logic","Re-Logic",2011, 9.99")');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Call of Duty: WWII","Sledgehammer Games","Activision",2017, 59.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Team Fortress 2","Valve","Valve",2007, 0.00)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Fallout 3","Bethesda Game Studios","Bethesda Softworks",2009, 9.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Left 4 Dead 2","Valve","Valve",2009, 19.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Miscreated","Entrada Interactive","Entrada Interactive",2014, 19.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Mass Effect 2","Bioware","EA",2010, 19.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Goat Simulator","Coffee Stain Studios","Coffee Stain Studios",2014, 9.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Watch Dogs","Ubisoft","Ubisoft",2014, 29.99)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Dota","Valve","Valve",2013, 0.00)');
                       tx.executeSql('INSERT INTO `product` (ProductID,GameName,Developer,Publisher,ReleaseYear,Cost) VALUES ("Mass Effect 2","Bioware","EA",2010, 19.99)');
                   }
               );
           }
           ,function (err) {
               if (err.message.indexOf("Product already exists") === -1) {
                   window.alert("Error 6: " + err.message);
               }
           }
       );
   };

   this.initOrder = function() {
       liveDB.transaction(function (tx)
           {
               tx.executeSql('CREATE TABLE order (OrderID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,CustomerID INT,ProductID INT,Cost MONEY',[], function(tx)
                   {
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (1,2,12,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (2,4,11,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (3,3,10,0.00)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (4,4,9,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (5,5,8,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (6,6,7,29.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (7,1,6,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (8,1,5,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (9,2,4,29.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (10,3,3,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (11,5,2,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (12,6,1,14.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (13,1,1,14.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (14,2,2,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (15,4,3,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (16,5,4,29.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (17,6,5,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (18,4,6,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (19,2,7,29.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (20,4,6,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (21,1,9,59.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (22,6,10,0.00)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (23,2,11,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (24,4,12,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (25,2,13,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (26,3,14,19.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (27,5,15,9.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (28,6,16,29.99)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (29,2,17,0.00)');
                       tx.executeSql('INSERT INTO `order` (OrderID,CustomerID,ProductID,Cost) VALUES (30,5,13,19.99)');
                   }
               );
           }
           ,function (err) {
               if (err.message.indexOf("Order already exists") === -1) {
                   window.alert("Error 6: " + err.message);
               }
           }
       );
   };


}
