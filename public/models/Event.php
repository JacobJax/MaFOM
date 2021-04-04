<?php require_once "../db/db_config.php" ?>
<?php

class Event{
    private string $name;
    private string $location;
    private string $description;
    private int $type_id;
    private int $category_id;
    private $start_date;
    private $start_time;
    private $end_date;
    private $end_time;
    private int $user_id;
    private string $poster;


    public function __construct($Name, $Location, $Desc, $Type_id, $Cat_id, $Start_date, $Start_time, $End_date, $End_time, $User_id, $Poster) {

        $this->name = $Name;
        $this->location = $Location;
        $this->description = $Desc;
        $this->type_id = $Type_id;
        $this->category_id = $Cat_id;
        $this->start_date = $Start_date;
        $this->start_time = $Start_time;
        $this->end_date = $End_date;
        $this->end_time = $End_time;
        $this->user_id = $User_id;
        $this->poster = $Poster;
        
    }

    public function addEvent() {

        $pdo = establishCONN();

        $stmt = $pdo->prepare("INSERT INTO events (name, evn_location, description, type_id, category_id, start_date, start_time, end_date, end_time, user_id, event_poster)  VALUES (:name, :lcation, :desc, :t_id, :c_id, :s_date, :s_time, :e_date, :e_time, :u_id, :pster)" );

        $stmt->bindValue(':name', $this->name);
        $stmt->bindValue(':lcation', $this->location);
        $stmt->bindValue(':desc', $this->description);
        $stmt->bindValue(':t_id', $this->type_id);
        $stmt->bindValue(':c_id', $this->category_id);
        $stmt->bindValue(':s_date', $this->start_date);
        $stmt->bindValue(':s_time', $this->start_time);
        $stmt->bindValue(':e_date', $this->end_date);
        $stmt->bindValue(':e_time', $this->end_time);
        $stmt->bindValue(':u_id', $this->user_id);
        $stmt->bindValue(':pster', $this->poster);

        $stmt->execute();
    }

    public static function getAllEvents() {

        $pdo = establishCONN();
        $stmt = $pdo->prepare("SELECT * FROM events");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getEventsWithTickets() {

        $pdo = establishCONN();
        $stmt = $pdo->prepare("SELECT * FROM events, users WHERE hasTickets = true AND  events.user_id = users.user_id");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getSingleEvent($id) {

        $pdo = establishCONN();
        
        $stmt = $pdo->prepare("SELECT * FROM events WHERE event_id = :eid");
        $stmt->bindValue(':eid', $id);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function getUserEvents($id) {

        $pdo = establishCONN();
        
        $stmt = $pdo->prepare("SELECT * FROM events WHERE user_id = :eid");
        $stmt->bindValue(':eid', $id);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function changeTicketStatus($id, $capacity, $price) {

        $pdo = establishCONN();

        $stmt = $pdo->prepare("UPDATE events SET capacity = :cpcity, price = :price, hasTickets = :hsPster WHERE event_id = :eid");
        $stmt->bindValue(':eid', $id, PDO::PARAM_INT);
        $stmt->bindValue(':cpcity', $capacity, PDO::PARAM_INT);
        $stmt->bindValue(':price', $price, PDO::PARAM_INT);
        $stmt->bindValue(':hsPster', true, PDO::PARAM_BOOL);

        $stmt->execute();
    }

    public static function getTickets($id) {

        $pdo = establishCONN();
        
        $stmt = $pdo->prepare("SELECT * FROM tickets WHERE status = :sts AND event_id = :eid");
        $stmt->bindValue(':sts', false);
        $stmt->bindValue(':eid', $id);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getEventCategory() {
        $pdo = establishCONN();
        
        $stmt = $pdo->prepare("SELECT * FROM categories");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getEventType() {
        $pdo = establishCONN();
        
        $stmt = $pdo->prepare("SELECT * FROM types");
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function changeNumber($eid) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("UPDATE events SET capacity = capacity - 1 WHERE event_id = :eid");
        $stmt->bindValue(':eid', $eid);
        $stmt->execute();
    }

    public static function getEventFromView($uid) {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM attendance WHERE atendee_id = :uid");
        $stmt->bindValue(':uid', $uid);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

?>