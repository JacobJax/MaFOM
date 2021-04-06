<?php

require_once 'models/Admin.php';

$users = Admin::getUsersP();

$headers = array("id", "First name", "Last name", "Username", "Email", "Phone", "Location");

$fh = fopen("reports/users.csv", "w");
fputcsv($fh, $headers);

foreach($users as $user) {
    fputcsv($fh, $user);
}

fclose($fh);

header("Location: dashboard.php");

?>