<?php
require('crendentials.php');
mysql_connect($servername,$username,$password);

mysql_select_db($dbname);
$name=$_POST['name'];
$dev=$_POST['dev'];
$pub=$_POST['pub'];
$year=$_POST['year'];

$order = "INSERT INTO Product (GameNam, Developer, Publisher, ReleaseYear, Cost) VALUES
        ('$name'
        '$dev',
        '$pub',
        '$year',
        '$address')";
$result = mysql_query($order);

if($result){
    echo("<br>Input data is succeed");

} else{

    echo("<br>Input data is fail");

}
?>
