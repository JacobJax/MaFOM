<?php require_once "../db/db_config.php" ?>
<?php

class User{
    private string $fname;
    private string $lname;
    private string $username;
    private string $phone;
    private string $email;
    private string $location;
    private string $password;


    public function __construct($Fname, $Lname, $Uname, $Phone, $Email, $Location, $Password){

        $this->fname = $Fname;
        $this->lname = $Lname;
        $this->username = $Uname;
        $this->phone = $Phone;
        $this->email = $Email;
        $this->location = $Location;
        $this->password = $Password;
    }

    public function register() {
       $pdo =  establishCONN();
        
        $stmt = $pdo->prepare("INSERT INTO users (first_name, last_name, username, email, phone, location, password )  VALUES (:fname, :lname, :uname, :email, :phone, :location, :pwd )" );

        $stmt->bindValue(':fname', $this->fname);
        $stmt->bindValue(':lname', $this->lname);
        $stmt->bindValue(':uname', $this->username);
        $stmt->bindValue(':email', $this->email);
        $stmt->bindValue(':phone', $this->phone);
        $stmt->bindValue(':location', $this->location);
        $stmt->bindValue(':pwd', password_hash($this->password, PASSWORD_DEFAULT));

        $stmt->execute();
    }

    public static function getUsers() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM users");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getSingleUser($id) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM users  WHERE id = :id");
        $stmt->bindValue(':id', $id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    private static function getWithEmail($email) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM users  WHERE email LIKE :email");
        $stmt->bindValue(':email', $email);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function logIn($email, $password) {
        $user = User::getWithEmail($email);
        $h_pwd = $user['password'];

        return [
            'isLogged' => password_verify($password, $h_pwd),
            'userObject' => $user
        ];
    }
}

?>