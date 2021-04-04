<?php

function establishCONN() {
    $pdo = new PDO('mysql:host=localhost;port=3306;dbname=mafom_mgt', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $pdo;
}  

?>