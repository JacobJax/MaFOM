<?php
require_once "models/Admin.php";
$uid = $_GET["uid"];
Admin::unblockUser($uid);
header("Location: users.php");