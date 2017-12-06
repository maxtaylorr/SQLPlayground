var dbase;

function function runIt(){
  dbase = window.openDatabase('gameDB',"1.0","Database of games", "2 * 1024 * 1024");
  var session = this;

  session.initCustomers;

  this.initCustomers = function init(){
    dbase.transaction(function(tx) {
      dbase.executeSql('CREATE TABLE Customer (`CustomerID` INT(10) NOT NULL AUTO_INCREMENT,`FirstName` CHAR(35) NOT NULL DEFAULT '',`LastName` CHAR(35) NOT NULL DEFAULT '',PRIMARY KEY (`CustomerID`),KEY `OrderID` (`OrderID`),CONSTRAINT `city_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customer` (`Code`)) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;',[], function(tx)
        {
            dbase.executeSql('INSERT INTO Customer VALUES (1,"John","Smith")');
            dbase.executeSql('INSERT INTO Customer VALUES (2,"Patrick","Waganar")');
            dbase.executeSql('INSERT INTO Customer VALUES (3,"Samuel","Slayer")');
            dbase.executeSql('INSERT INTO Customer VALUES (4,"Debra,"Ulysess")');
    );
  });

  this.executeSql('SELECT * FROM Customer', [], function (tx, results) {
    var len = results.rows.length, i;
    for (i = 0; i < len; i++) {
      alert(results.rows.item(i).text);
    }
  });

  //
  // console.console.log();
  }

}
