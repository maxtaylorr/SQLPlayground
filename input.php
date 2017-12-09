<?php

    $servername = "sql3.freesqldatabase.com";
    $username = "sql3209420";
    $password = "DPHvgZgvvd";
    $dbname = "sql3209420";

mysql_connect($servername,$username,$password);

mysql_select_db($dbname);
$name=$_POST['name'];
$dev=$_POST['dev'];
$pub=$_POST['pub'];
$year=$_POST['year'];

$order = "INSERT INTO Product (GameName, Developer, Publisher, ReleaseYear, Cost) VALUES
        ('$name',
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
