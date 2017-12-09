<!DOCTYPE html>
<!--
name: Sam Burnett
pawprint: smbcp6
-->
<html>
<head>
    <meta charset="UTF-8">
    <title>***Ch4ll3ng3***</title>
        <link rel="stylesheet" type="text/css" href="index.css">

    <script>
        function runClick(){
            
        }
        function loadClick(){
            
        }
        function functionLaunch(){
            var y = document.getElementById("t1").value;
            document.getElementById("sql").innerHTML = y;
        }

    </script>

</head>
<body>
    <h1>MySQL PlayGround Boi</h1>
    <div>
        <div id="kingDiv">

            <div>
                
            </div>

            
            <div id="buttonDiv">
                <button onclick="runClick()">Add Game</button>
                <button onclick="loadClick()">Load</button>
                <button onclick="functionLaunch()">Update SQL</button>

            </div>
            <div id="sql">

                 <?php include("test.php"); ?>

            </div>
        </div>
                
       
    </div>
</body>

</html>