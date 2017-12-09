<!DOCTYPE HTML>
<html>
    <head>
        <title>Database Final Project</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript"
            src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                //$("#gamename").click(function(){
                    //alert("hello");
                })
            });
            
        </script>
    </head>

    <body>
        <h1>Game Store Manager 
            <?php
        $servername = "sql3.freesqldatabase.com";
        $username = "sql3209420";
        $password = "DPHvgZgvvd";
        $dbname = "sql3209420";
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        
        // Check connection
        if ($conn->connect_error) {
            echo "</h1>";
            echo "<h1>Connection Failed</h1>";
            die("Connection failed: " . $conn->connect_error);
        } else {
            
            echo "- Connected successfully</h1>";
        }
            ?>
        </h1>
        <div class="row">
        <div class="column">
            <div align="center"><!--
                <form method="get" action="index.php">
                    <button type="submit">Refresh Games</button>
                </form>
                <form method="get" action="users.php">
                    <button type="submit">View Customer Table</button>
                </form>
                <form method="get" action="orders.php">
                    <button type="submit">View Order Table</button>
                </form>-->
                <table>
                <form action="input.php" method="POST">
                <tr>
                    <td>Modification</td>
                    <td><input type="radio" name="mod" value="add" id="addratio">
                        <label for="addradio">Add</label>
                    <input type="radio" name="mod" value="del" id="delradio" onclick="aletr('hello');">
                        <label for="delradio">Delete</label>
                    <input type="radio" name="mod" value="update" id="updateradio">
                        <label for="updateradio">Update</label></td>
                </tr>
                <tr>
                    <td>Game Name</td>
                    <td><input id="gamename" type="text" name="name" size="40"></td>
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
                    <td align="right"><input type="submit" name="submit" value="Add"></td>
                </tr>
                </table>
            </div>
        </div>
        <div class="column">
            <?php
            $servername = "sql3.freesqldatabase.com";
            $username = "sql3209420";
            $password = "DPHvgZgvvd";
            $dbname = "sql3209420";
            
            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            // Check connection
            if ($conn->connect_error) {
                echo "<h1>test</h1>";
                die("Connection failed: " . $conn->connect_error);
            }
            $sql = "SELECT * FROM Product";
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0) {
                // output data of each row
                echo "<table>";
                echo    "<tr>
                        <th>Game</th>
                        <th>Developer</th> 
                        <th>Publisher</th>
                        <th>Release Year</th> 
                        <th>Price</th>
                        </tr>";
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["GameName"] . "</td>";
                    echo "<td>" . $row["Developer"] . "</td>";
                    echo "<td>" . $row["Publisher"] . "</td>";
                    echo "<td>" . $row["ReleaseYear"] . "</td>";
                    echo "<td>" . $row["Cost"] . "</td>";
                    echo "</tr>";
                }
                echo "</table>";
            } else {
                echo "<h1>Error</h1>";
            }
            $conn->close();
            ?>
        </div>
        </div>
    </body>
    
</html>