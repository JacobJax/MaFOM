<?php 
require_once "./models/User.php";

$eid = $_GET['eid'];
$uid = $_GET["uid"];
$fid = $_GET["fid"];

User::follow($uid, $fid);
header('Location: event.php?uid=' . $uid . '&eid=' . $eid);
?>