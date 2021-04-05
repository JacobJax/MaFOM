<?php 
if(session_status() === PHP_SESSION_NONE) {
    session_start();
} 
// echo $_SESSION["uid"];
// echo $_SESSION["uname"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MaFOM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/styles.css">

</head>
<body>
    <nav class="navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">
                <h3><b>Ma<span>FOM</span></b></h3>
            </a>
            <ul class="nav justify-content-end">
                <li class="nav-item">
                  <?php if(isset($_SESSION['uid'])) { ?>
                    <a class="nav-link active mx-2 btn btn-primary" href="logout.php">Log out</a>
                  <?php } else { ?>
                    <a class="nav-link active mx-2 btn btn-primary" href="login.php">Log in</a>
                  <?php } ?>
                </li>
                <li class="nav-item">
                  <?php if(isset($_SESSION['uid'])) { ?>
                    <a class="nav-link" href="#">Hi, <?php echo $_SESSION['uname'] ?></a>
                  <?php } else { ?>
                    <a class="nav-link btn btn-outline-primary" href="register.php">Sign up</a>
                  <?php } ?>
                </li>
                
              </ul>
        </div>
    </nav>