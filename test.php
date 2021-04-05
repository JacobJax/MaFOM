<?php
if(isset($_GET["cars"])){
    echo $_GET["cars"];
}

    $pdo = new PDO('mysql:host=localhost;port=3306;dbname=mafom_mgt', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->prepare("SELECT * FROM events RIGHT JOIN tickets ON events.event_id = 7 AND tickets.event_id = 7");
    $stmt->execute();
    $event = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // echo "<pre>";
    //     var_dump($event);
    // echo "</pre>";
    // exit();
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
    <a href="
     j.php ">click</a>
    <form action="j.php" method="GET">
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