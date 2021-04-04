<?php 

require_once "./models/Event.php";
require_once "./models/Ticket.php";

$uid = (int)$_GET['uid'];
$eid = (int)$_GET['eid'];

if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $capacity = (int)$_POST['cpt'];
    $price = (int)$_POST['price'];

    $counter = 0;
    while($counter < $capacity) {

        $ticket = new Ticket($eid, $uid);
        $ticket->addTicket();
        $counter++;

    }

    Event::changeTicketStatus($eid, $capacity, $price);
    session_start();
    header('Location: events.php?uid=' . $_SESSION['uid']);
    
}

?>

<?php include_once 'includes/header.php' ?>

    <section class="add-evn">
        <div class="container pl-center">
            <form class="sm-form my-5" action="" method="POST">
                <h3>Pricing</h3>
                <small><p>Tell event-goers the cost of the event and the number of people to attend</p></small>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="pname">Event Capacity</label>
                        <input type="number" class="form-control" name="cpt">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="pname">Event Price</label>
                        <input type="number" class="form-control" name="price">
                    </div>
                </div>
                <hr>
                <button type="submit" class="btn btn-primary btn-block">Create tickets</button>
              </form>
        </div>
    </section>
</body>
</html>