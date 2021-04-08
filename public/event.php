<?php

require_once "./models/Event.php";
require_once "./models/Ticket.php";
require_once "./models/User.php";

$eid = $_GET["eid"];
$uid = $_GET["uid"]; 

if(!isset($_GET['uid']) and !isset($_GET['eid'])) {
    header('Location: index.php');
}

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

    if($numT <= $event["capacity"]) {
        
        while($counter < $numT) { 

            $evn = array_pop($tickets);
            Ticket::changeStatus($event["event_id"], $evn["ticket_id"], $uid);
            $counter++;
    
        }
        header('Location: events.php?uid=' . $uid);
    }
}

?>

<?php include_once "includes/header.php" ?>    
    <section class="an-evn-s">
        <div class="container pl-center">
            <div class="an-evn my-3">
                <img src="<?php echo $event["event_poster"] ?>" alt="">
                <div class="an-evn-dets">
                    <div class="an-evn-ttl my-2 d-flex" style="white-space: nowrap;">
                        <h3 class="title"><?php echo $event["name"] ?></h3>
                        <small><p class="mx-1"> - <?php echo $event["evn_location"] ?> -</p></small>
                        <small><p class="mx-1"><?php echo $event["type_name"] ?> | </p></small>
                        <small><p> <?php echo $event["category_name"] ?></p></small>
                    </div>
                    <hr>
                    <div class="an-evn-hst d-flex">
                        <div class="host d-flex bg-c my-2 mx-2">
                            <div class="host-text">
                                <h3 class="host-name" style="white-space:nowrap;">
                                    <?php echo $host["username"] ?>
                                </h3>
                                <form action="follow.php?uid=<?php echo $event["user_id"] ?>&fid=<?php echo $uid ?>&eid=<?php echo $event["event_id"] ?>" method="POST">
                                    <?php if($event["user_id"] != $uid) {?>
                                        <?php if(empty($flw)) {?>
                                            <button class="btn btn-primary btn-sm btn-block"><small>Follow</small></button>
                                        <?php } else {?>
                                            <a href="#" class="btn btn-link btn-sm btn-block">Following</a>
                                        <?php } ?>
                                    <?php }?>
                                </form>
                                
                            </div>
                        </div>
                        <div class="an-evn-cpt my-2 mx-3">
                            <p style="font-size: .8rem;">
                                <?php if($event["capacity"] <= 0){ ?>
                                    <b> SOLD OUT!</b>
                                <?php } else {?>
                                    <b>
                                        <?php echo $event["capacity"] ?>
                                    </b> seats remaining
                                <?php } ?>
                            </p>
                            <div class="an-evn-date my-2">
                                <p style="font-size: .8rem; white-space: nowrap;" > <b><?php echo $event["start_date"] ?></b> from <b><?php echo $event["start_time"] ?></b> to  <b><?php echo $event["end_date"] ?> <?php echo $event["end_time"] ?></b> </p>
                            </div>
                        </div> 
                        <div class="an-evn-buy my-3 mb-3">
                            <form action="" method="POST" class="form-inline">
                                <?php if($event["user_id"] != $uid) {?>
                                    <div class="form-group mb-2">
                                        <label for="pname">Quantity:</label>
                                    </div>
                                    <div class="form-group col-md-4 mb-3">
                                        <input type="number" class="form-control" name="numT" value="1" style="width: 70px;" required>
                                    </div>
                                    <?php if($event["capacity"] <= 0){ ?>
                                        <a href="#" class="btn btn-light btn-block"> <b>SOLD OUT!</b> </a>
                                    <?php } else { ?>
                                        <button type="submit" class="btn btn-success btn-block">Buy ticket(s)</button>
                                    <?php } ?>
                                <?php }?>
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