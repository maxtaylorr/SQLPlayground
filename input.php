<?php

    $servername = "sql3.freesqldatabase.com";
    $username = "sql3209420";
    $password = "DPHvgZgvvd";
    $dbname = "sql3209420";

mysql_connect($servername,$username,$password);

mysql_select_db($dbname);
$act = "";
$act = $_POST['mod'];
$name=$_POST['name'];
    $dev=$_POST['dev'];
    $pub=$_POST['pub'];
    $year=$_POST['year'];
    $cost=$_POST['cost'];
if($act === "add"){
    $name=$_POST['name'];
    $dev=$_POST['dev'];
    $pub=$_POST['pub'];
    $year=$_POST['year'];
    $cost=$_POST['cost'];
    
    $order = "INSERT INTO Product (GameName, Developer, Publisher, ReleaseYear, Cost) VALUES
    ('$name',
    '$dev',
    '$pub',
    '$year',
    '$cost')";
    $result = mysql_query($order);
    
    if($result){
        echo("<br>Input data is succeed A");
        
    } else{
        
        echo("<br>Input data is fail");
    }
    echo "<form action='index.php'>";
    echo "<input type='submit' value='Return' />";
    echo "</form>";
} else if($act === "del"){
    $name = $_POST['name'];
    $order = "Delete from Product where GameName = '$name'";
    echo ("Delete from Product where GameName = '$name'" . "<br>");
    $result = mysql_query($order);
    if($result){
        echo("<br>Input data is succeed B");
        
    } else{
        
        echo("<br>Input data is fail");
    }
    echo "<form action='index.php'>";
    echo "<input type='submit' value='Return' />";
    echo "</form>";
} else if($act === "update"){
    $name = $_POST['name'];
    $order = "Update Product set Cost = '$cost', Developer = '$dev', Publisher = '$pub', ReleaseYear = '$year'  = '$name' Where GameName = '$name'";
    $result = mysql_query($order);
    if($result){
        echo("<br>Input data is succeed B");
        
    } else{
        
        echo("<br>Input data is fail");
    }
    echo "<form action='index.php'>";
    echo "<input type='submit' value='Return' />";
    echo "</form>";
}

header('Location:index.php');
?>