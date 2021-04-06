<?php

require_once 'models/Admin.php'; #import Admin class

$tickets = Admin::getRevenue(); #get associative array

$fh = fopen("reports/revenue.csv", "w"); #open csv file

foreach($tickets as $event) {
    fputcsv($fh, $event); #write to csv file
}

fclose($fh);#close csv file

header("Location: events.php"); #redirect to events.php