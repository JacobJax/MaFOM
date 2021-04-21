<?php 

require_once "./models/Event.php";
require_once "./models/Ticket.php";

$uid = (int)$_GET['uid'];
$eid = (int)$_GET['eid'];

if(!isset($_GET['uid']) and !isset($_GET['eid'])) {
    header('Location: index.php');
}

if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $capacity = (int)$_POST['cpt'];

    $counter = 0;
    while($counter < $capacity) {

        $ticket = new Ticket($eid, $uid);
        $ticket->addTicket();
        $counter++;

    }

    Event::addCapacity($capacity, $eid);
    session_start();
    header('Location: events.php?uid=' . $_SESSION['uid']);
    
}

?>

<?php include_once 'includes/header.php' ?>

    <section class="add-evn">
        <div class="container pl-center">
            <form class="sm-form my-5" action="" method="POST">
                <h3>Add tickets</h3>
                <small><p>Increase the number of attendance for your party</p></small>
                <div class="form-group">
                    <label for="pname">Ticket quantity:</label>
                    <input type="number" class="form-control" name="cpt" required>
                </div>
                <hr>
                <button type="submit" class="btn btn-primary btn-block">Create tickets</button>
              </form>
        </div>
    </section>
</body>
</html>