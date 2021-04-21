<?php
require_once 'models/Admin.php';

$e_vents = Admin::getEvents();
$events = $e_vents['events'];

$ats = Admin::getAttendance();
$ets = Admin::getEventRevenue();
$pvents = Admin::getPastEvents();

if($_SERVER["REQUEST_METHOD"] === "POST") {
    $eid = $_POST["eid"];

    Admin::deleteEvent($eid);
    header('Location: events.php');
}

?>

<?php include_once "./includes/header.php" ?>
<div class="container my-5">
    <h4>All events</h4>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Event name</th>
                <th scope="col">Type</th>
                <th scope="col">Category</th>
                <th scope="col">Created by</th>
                <th scope="col">Email</th>
                <th scope="col">Location</th>
                <th scope="col">Start on</th>
                <th scope="col">Ends on</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($events as $i => $event) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $event["name"] ?></td>
                    <td><?php echo $event["type_name"] ?></td>
                    <td><?php echo $event["category_name"] ?></td>
                    <td><?php echo $event["username"] ?></td>
                    <td><?php echo $event["email"] ?></td>
                    <td><?php echo $event["evn_location"] ?></td>
                    <td><?php echo $event["start_date"] ?></td>
                    <td><?php echo $event["end_date"] ?></td>
                    
                </tr>
            <?php }?>
        </tbody>
    </table><hr>
    <br>
    <h4>All attendance</h4>
    <a href="attReport.php" class="btn btn-primary btn-sm my-2">Generate report</a>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Event id</th>
                <th scope="col">Event name</th>
                <th scope="col">Event price</th>
                <th scope="col">Atendee username</th>
                <th scope="col">Email</th>
                <th scope="col">Created by</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($ats as $i => $event) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $event["event_id"] ?></td>
                    <td><?php echo $event["name"] ?></td>
                    <td><?php echo $event["price"] ?></td>
                    <td><?php echo $event["username"] ?></td>
                    <td><?php echo $event["email"] ?></td>
                    <td><?php echo $event["host_id"] ?></td>
                </tr>
            <?php }?>
        </tbody>
    </table><hr>
    <br>
    <h4>Events revenue</h4>
    <a href="revReport.php" class="btn btn-primary btn-sm my-2">Generate report</a>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Event id</th>
                <th scope="col">Event name</th>
                <th scope="col">Created by</th>
                <th scope="col">Generated revenue</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($ets as $i => $event) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $event["event"] ?></td>
                    <td><?php echo $event["evn_name"] ?></td>
                    <td><?php echo $event["created_by"] ?></td>
                    <td><?php echo $event["Total_revenue"] ?></td>
                </tr>
            <?php }?>
        </tbody>
    </table><hr>
    <br>
    <h4>Past events</h4>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Event name</th>
                <th scope="col">Location</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($pvents as $i => $event) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $event["name"] ?></td>
                    <td><?php echo $event["evn_location"] ?></td>
                    <td>
                        <form action="" method="POST" class="form-inline">
                            <input type="text" name="eid" hidden value="<?php echo $event["event_id"] ?>">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>                    
                </tr>
            <?php }?>
        </tbody>
    </table><hr>
    
</div>
<?php include_once "./includes/footer.php" ?>
