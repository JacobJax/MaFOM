<?php

require_once 'models/Admin.php';

$tickets = Admin::getAttendance();

$fh = fopen("reports/attendance.csv", "w");

foreach($tickets as $event) {
    fputcsv($fh, $event);
}

fclose($fh);

header("Location: events.php");

?>