<?php
if(isset($_GET["cars"])){
    echo $_GET["cars"];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="GET">
        <label for="cars">Choose a car:</label>
        <select name="cars" id="cars">
            <option value="1">Volvo</option>
            <option value="2">Saab</option>
            <option value="3">Opel</option>
            <option value="4">Audi</option>
        </select>
        <br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>