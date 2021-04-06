<?php

require_once 'models/Admin.php';

$tickets = Admin::getRevenue();

$fh = fopen("reports/revenue.csv", "w");

foreach($tickets as $event) {
    fputcsv($fh, $event);
}

fclose($fh);

header("Location: events.php");