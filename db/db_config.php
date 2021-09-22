<?php

function establishCONN() {
    // dev database
    // $pdo = new PDO('mysql:host=localhost;port=3306;dbname=mafom_mgt', 'root', '');

    // production database
    $db_host = getenv('CC_DB_HOST');
    $db_port = getenv('CC_DB_PORT');
    $db_name = getenv('CC_DB_NAME');
    $db_user = getenv('CC_DB_USER');
    $db_pwd = getenv('CC_DB_PWD');

    $pdo = new PDO("mysql:host=$db_host;port=$db_port;dbname=$db_name", "$db_user" , "$db_pwd");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $pdo;
}  

?>