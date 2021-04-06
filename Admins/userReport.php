<?php

require_once __DIR__ . '../vendor/autoload.php';
require_once 'models/Admin.php';

$users = Admin::getUsers();

$data = "";

$header = "<h1>MAFOM REPORT</h1><hr><br><h3>Users</>";

$data .= $header;

?>