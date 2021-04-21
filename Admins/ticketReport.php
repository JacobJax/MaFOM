<?php

require_once 'models/Admin.php';

$tickets = Admin::getTickets();

$fh = fopen("reports/tickets.csv", "w");

foreach($tickets as $event) {
    fputcsv($fh, $event);
}

fclose($fh);

header("Location: dashboard.php");

?>