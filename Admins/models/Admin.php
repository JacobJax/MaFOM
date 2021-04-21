<?php 
require_once "../db/db_config.php";

class Admin {

    public static function getEvents(){
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM events LEFT JOIN categories ON events.category_id = categories.category_id LEFT JOIN types ON events.type_id = types.type_id LEFT JOIN users ON events.user_id = users.user_id");
        $stmt->execute();

        $evnObject = [
            'events' => $stmt->fetchAll(PDO::FETCH_ASSOC),
            'eventCount' => $stmt->rowCount()
        ];

        return $evnObject;
   
    }

    public static function getAttendance(){
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM attendance");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
   
    }

    public static function getUsers(){
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM users");
        $stmt->execute();

        $evnObject = [
            'users' => $stmt->fetchAll(PDO::FETCH_ASSOC),
            'userCount' => $stmt->rowCount()
        ];

        return $evnObject;
   
    }
    public static function getUsersP(){
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT user_id, first_name, last_name, username, email, phone, location FROM users");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
   
    }

    public static function getFollows() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM follows_table");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

    public static function getTicketCount() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM tickets");
        $stmt->execute();

        return $stmt->rowCount();
    }
    
    public static function getTickets() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM tickets");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getEventRevenue() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM v_ticket ORDER BY Total_revenue DESC");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getRevenue() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM revenue ORDER BY Total_Rev DESC");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function deleteUser($id) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("DELETE FROM tickets WHERE user_id = :id");
        $stmt->bindValue(':id', $id);
        $stmt->execute();
    }

    public static function deleteEvent($id) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("DELETE FROM events WHERE event_id = :id");
        $stmt->bindValue(':id', $id);
        $stmt->execute();
    }

    public static function blockUser($uid) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("UPDATE users SET isBlocked = :blc WHERE user_id = :uid");
        $stmt->bindValue(':blc', true);
        $stmt->bindValue(':uid', $uid);

        $stmt->execute();
    }

    public static function unblockUser($uid) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("UPDATE users SET isBlocked = :blc WHERE user_id = :uid");
        $stmt->bindValue(':blc', false);
        $stmt->bindValue(':uid', $uid);

        $stmt->execute();
    }

    public static function getPastEvents() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM past_events");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


}

?>