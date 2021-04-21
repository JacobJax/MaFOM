<?php
require_once "models/Admin.php";
$uid = $_GET["uid"];
Admin::blockUser($uid);
header("Location: users.php");