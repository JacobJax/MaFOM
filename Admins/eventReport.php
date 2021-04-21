<?php

require_once 'models/Admin.php';

$e_vents = Admin::getEvents();
$events = $e_vents["events"];

$fh = fopen("reports/events.csv", "w");

foreach($events as $event) {
    fputcsv($fh, $event);
}

fclose($fh);

header("Location: dashboard.php");

?>