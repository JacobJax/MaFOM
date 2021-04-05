<?php 
session_start();
if(isset($_SESSION['uid'])) {
    session_destroy();
}
?>

<?php 

require_once "./models/User.php";

if(isset($_SESSION['uid'])) {
    session_destroy();
}

if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $email = $_POST['email'];
    $pwd = $_POST['pwd'];

    $checkLog = User::logIn($email, $pwd);

    if($checkLog['isLogged']) {

        session_start();

        $_SESSION['uid'] = $checkLog['userObject']['user_id'];
        $_SESSION['uname'] = $checkLog['userObject']['username'];
        $_SESSION['email'] = $checkLog['userObject']['email'];

        header('Location: index.php');
    }
}

?>

<?php include_once 'includes/header.php' ?>

    <section class="add-evn">
        <div class="container pl-center">
            <form class="sm-form my-5" action="" method="POST">
                <h3 class="text-center">Log In</h3>
                <hr>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" name="email" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="pwd">
                </div>
                <div class="form-group">
                    <small class="form-text text-muted">Dont have an account <a href="register.php">Register here</a></small>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Log in</button>
              </form>
        </div>
    </section>
</body>
</html>