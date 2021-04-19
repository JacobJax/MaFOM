<?php 
session_start();
if(isset($_SESSION['uid'])) {
    session_destroy();
}
?>

<?php 

require_once "./models/User.php";
$errors = [
    'error' => ""
];

if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $email = $_POST['email'];
    $pwd = $_POST['pwd'];

    $user = User::getWithEmail($email);
    
    if($user) {
        $checkLog = User::logIn($email, $pwd);
        if($checkLog['isLogged']) {

            session_start();
    
            $_SESSION['uid'] = $checkLog['userObject']['user_id'];
            $_SESSION['uname'] = $checkLog['userObject']['username'];
            $_SESSION['email'] = $checkLog['userObject']['email'];
    
            header('Location: index.php');
        } else {
            $errors["error"] = "Wrong password. Try again";
        }
    } else {
        $errors["error"] = "User account does not exist. Register to log in";
    }
    
}

?>

<?php include_once 'includes/header.php' ?>

    <section class="add-evn">
        <div class="container pl-center">
            <form class="sm-form my-5" action="" method="POST">
                <h3 class="text-center">Log In</h3>
                <hr>
                <?php if(array_filter($errors)) {?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <?php echo $errors["error"] ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php } ?>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" name="email" aria-describedby="emailHelp" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="pwd" required>
                </div>
                <div class="form-group">
                    <small class="form-text text-muted">Dont have an account <a href="register.php">Register here</a></small>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Log in</button>
              </form>
        </div>
    </section>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>