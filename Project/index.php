
<!DOCTYPE HTML>
<html>
    <head>
        <title>Title of the document</title>
    </head>

    <body>
      <?php
              require('crendentials.php');
      ?>
        <table border="1">
            <tr>
                <td align="center">Form Input Employees Data</td>
            </tr>
            <tr>
                <td>
                    <table>
                    <form action="input.php" method="POST">
                    <tr>
                        <td>Game Name</td>
                        <td><input type="text" name="name" size="20"></td>
                    </tr>
                    <tr>
                        <td>Developer</td>
                        <td><input type="text" name="dev" size="40"></td>
                    </tr>
                    <tr>
                        <td>Publisher</td>
                        <td><input type="text" name="pub" size="40"></td>
                    </tr>
                    <tr>
                        <td>Year</td>
                        <td><input type="text" name="year" size="40"></td>
                    </tr>
                    <tr>
                        <td>Cost</td>
                        <td><input type="text" name="cost" size="40"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="right"><input type="submit"
                                                 name="submit" value="Sent"></td>
                    </tr>
                    </table>
                </td>
            </tr>
        </table>
        <?php
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            echo "<h1>test</h1>";
            die("Connection failed: " . $conn->connect_error);
        } else {
            echo "Connected successfully";
        }
    /*    echo "<h1>begin test</h1>";
        $sql = "SELECT * FROM Product limit 10";
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
        }*/
        $conn->close();
        ?>
        <h1>title</h1>
    </body>

</html>
