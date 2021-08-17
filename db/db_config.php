<?php

function establishCONN() {
    // dev database
    // $pdo = new PDO('mysql:host=localhost;port=3306;dbname=mafom_mgt', 'root', '');

    // production database
    $pdo = new PDO('mysql:host=bhrf5uvgouxajlovmlzq-mysql.services.clever-cloud.com;port=3306;dbname=bhrf5uvgouxajlovmlzq', 'uxjctau3wo4krd3g', 'fgDA5OIeL6wDaBXIZvVp');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $pdo;
}  

?>