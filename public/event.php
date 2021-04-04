<?php

require_once "./models/Event.php";
require_once "./models/Ticket.php";
require_once "./models/User.php";

$eid = $_GET["eid"];
$uid = $_GET["uid"]; 

$event = Event::getSingleEvent($eid);
$tickets = Event::getTickets($eid);
$host = User::getSingleUser($event["user_id"]);

$flw = User::getFollowing($event["user_id"], $uid);
// echo "<pre>";
//     var_dump($flw);
// echo "</pre>";
// exit();

if($_SERVER["REQUEST_METHOD"] === "POST") {

    $numT = $_POST["numT"];
    $counter = 0;

    Ticket::attendEvent($eid, $uid);

    while($counter < $numT) { 

        $evn = array_pop($tickets);
        Ticket::changeStatus($event["event_id"], $evn["ticket_id"], $uid);
        $counter++;

    }
    header('Location: events.php?uid=' . $uid);
}

?>

<?php include_once "includes/header.php" ?>    
    <section class="an-evn-s">
        <div class="container pl-center">
            <div class="an-evn my-3">
                <img src="<?php echo $event["event_poster"] ?>" alt="">
                <div class="an-evn-dets">
                    <div class="an-evn-ttl my-2 d-flex">
                        <h3 class="title"><?php echo $event["name"] ?></h3>
                        <p class="pill mx-3"><?php echo $event["evn_location"] ?></p>
                    </div>
                    <hr>
                    <div class="an-evn-hst d-flex my-2">
                        <div class="host d-flex bg-c my-2 mx-2">
                            <div class="host-text">
                                <h3 class="host-name" style="white-space:nowrap;">
                                    <?php echo $host["username"] ?>
                                </h3>
                                <form action="follow.php?uid=<?php echo $event["user_id"] ?>&fid=<?php echo $uid ?>&eid=<?php echo $event["event_id"] ?>" method="POST">
                                    <?php if(empty($flw)) {?>
                                        <button class="btn btn-primary btn-sm btn-block"><small>Follow</small></button>
                                    <?php } else {?>
                                        <button class="btn btn-link btn-sm btn-block">Following</button>
                                    <?php } ?>
                                </form>
                                
                            </div>
                        </div>
                        <div class="an-evn-cpt my-2 mx-3">
                            <p style="font-size: .8rem;"> <b><?php echo $event["capacity"] ?></b> seats remaining</p>
                            <div class="an-evn-date my-2">
                                <p style="font-size: .8rem; white-space: nowrap;" > <b><?php echo $event["start_date"] ?></b> from <b><?php echo $event["start_time"] ?></b> to  <b><?php echo $event["end_date"] ?> <?php echo $event["end_time"] ?></b> </p>
                            </div>
                        </div> 
                        <div class="an-evn-buy my-3 mb-3">
                            <form action="" method="POST" class="form-inline">
                                <div class="form-group mb-2">
                                    <label for="pname">Quantity:</label>
                                </div>
                                <div class="form-group col-md-4 mb-3">
                                    <input type="number" class="form-control" name="numT" value="1" style="width: 70px;">
                                </div>
                                <button type="submit" class="btn btn-success btn-block">Buy ticket(s)</button>
                            </form>
                        </div>
                    </div>
                    <hr>
                    <div class="an-evn-desc">
                        <p><?php echo $event["description"] ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>