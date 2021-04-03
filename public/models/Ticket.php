<?php require_once "../db/db_config.php" ?>
<?php

class Ticket{
    
    private string $serialNum;
    private int $event_id;
    private int $user_id;
    private int $counter = 1000000;

    public function __construct($e_id, $u_id) {
        $this->event_id = $e_id;
        $this->user_id = $u_id;

        $this->serialNum = $this->convertNum($this->counter);
        $this->incrementCounter();
    }

    private function incrementCounter() {
        $this->counter += 2;
    }

    private function convertNum($number){

        $hex_map = ["0","1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
        
        $hex_value = [];
        $conv_num = [];
        
        while($number > 0){
            array_push($conv_num, $number % 36);
            $number = (int)$number / 36;
        }
        for($i = 0; $i < count($conv_num); $i++)
        {
            array_push($hex_value, $hex_map[$conv_num[$i]]);
        }
        $c_str = implode("", array_reverse($hex_value));
        
        return strrev($c_str);
    }

    public function addTicket() {
        $rnum = $this->convertNum(rand(10000, 900000));

        $pdo = establishCONN();

        $stmt = $pdo->prepare("INSERT INTO tickets (serial_number, event_id, user_id) VALUES (:snum, :eid, :uid)");
        $stmt->bindValue(':snum', $this->serialNum . $rnum);
        $stmt->bindValue(':eid', $this->event_id);
        $stmt->bindValue(':uid', $this->user_id);

        $stmt->execute();
    }

    public static function getTickets() {
        $pdo = establishCONN();

        $stmt = $pdo->prepare("SELECT * FROM tickets
                                LEFT JOIN events
                                    ON tickets.event_id = events.event_id
                                LEFT JOIN users
                                    ON tickets.user_id = users.user_id
                                LEFT JOIN users
                                    ON tickets.buyer_id = users.user_id
                                ");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

?>