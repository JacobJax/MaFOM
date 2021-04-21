<?php 

require_once "./models/User.php";

    $fname = "";
    $lname = "";
    $uname = "";
    $email = "";
    $phone = "";
    $location = "";
    $pwd = "";
    $cpwd = "";

$errors = [
    'email' => "",
    'phone' => "",
    'pwd' => "",
    'pwd1' => ""
];

if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $uname = $_POST['uname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $location = $_POST['location'];
    $pwd = $_POST['pwd'];
    $cpwd = $_POST['cpwd'];


    // handle input validation
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = "Invalid email address";
    }
    if(!preg_match('/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/', $pwd)) {
        $errors['pwd'] = "Password must contain 8 or characters, capital letters and special characters";
    }
    if($cpwd !== $pwd) {
        $errors['pwd1'] = "Passwords do not match";
    }
    if(!preg_match("/(^07|01)[0-9]{8}$/mi", $phone)) {
        $errors['phone'] = "Invalid phone";
    }

    // post to database
    if(!array_filter($errors)) {

        $user = new User($fname, $lname, $uname, $phone, $email, $location, $pwd);
        $user->register();

        header('Location: login.php');
    }
}

?>

<?php include_once 'includes/header.php'?>    

    <section class="add-evn">
        <div class="container pl-center">
            <form action="" method="POST" class="sm-form my-3">
                <h3 class="text-center">Sign Up</h3>
                <hr>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="fname">First Name</label>
                        <input type="text" class="form-control" name="fname" required value="<?php echo $fname ?>">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lname">Last Name</label>
                        <input type="text" class="form-control" name="lname" required value="<?php echo $lname ?>">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="uname">Userame</label>
                    <input type="text" class="form-control" name="uname" required value="<?php echo $uname ?>">
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" name="email" required value="<?php echo $email ?>">
                        <small><p><?php echo $errors['email'] ?></p></small>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="phone">Phone</label>
                        <input type="tel" class="form-control" name="phone" required value="<?php echo $phone ?>" >
                        <small><p><?php echo $errors['phone'] ?></p></small>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="lcation">Location</label>
                    <input type="text" class="form-control" name="location" required value="<?php echo $location ?>">
                </div>
    
                <div class="form-group form-row">
                    <div class="form-group col-md-6">
                        <label for="pwd">Password</label>
                        <input type="password" class="form-control" name="pwd" required value="<?php echo $pwd ?>" >
                        <small><p><?php echo $errors['pwd'] ?></p></small>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="pwd">Confirm Password</label>
                        <input type="password" class="form-control" name="cpwd" required value="<?php echo $cpwd ?>" >
                        <small><p><?php echo $errors['pwd1'] ?></p></small>
                    </div>
                </div>
               
                <div class="form-group">
                    <small><p>Already have an account? <a href="login.php" style="color: blue;">Log in here</a></p></small>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
        </div>
    </section>
</body>
</html>