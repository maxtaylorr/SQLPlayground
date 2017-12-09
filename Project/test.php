
<!DOCTYPE HTML>
<html>
    <head>
        <title>Title of the document</title>
    </head>

    <body>
        <?php
        require('ServerCrendentials.php');

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            echo "<h1>test</h1>";
            die("Connection failed: " . $conn->connect_error);
        } else {

            echo "Connected successfully";
        }
        echo "<h1>begin test</h1>";
        $sql = "SELECT * FROM Product";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "Product: " . $row["GameName"]. "<br>";
            }
        } else {
            echo "0 results";
        }
        echo "<h1>next test</h1>";
        $test_query = "SHOW TABLES FROM $dbname";
        $result = mysql_query($test_query);
        $tblCnt = 0;
        while($tbl = mysql_fetch_array($result)) {
            $tblCnt++;
            //echo $tbl[0]."<br />\n";
        }
        if (!$tblCnt) {
            echo "There are no tables<br />\n";
        } else {
            echo "There are $tblCnt tables<br />\n";
        }
        $conn->close();
        ?>
        <h1>title</h1>
    </body>

</html>
