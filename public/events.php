<?php 
require_once './models/Event.php';
require_once './models/User.php';

$uid = (int)$_GET['uid'];
$events = Event::getUserEvents($uid);
$v_events = Event::getEventFromView($uid);


// echo "<pre>";
// var_dump($events);
// echo "</pre>";
// exit();

?>

<?php include_once 'includes/header.php' ?>

    <section class="main-cont">
        <div class="container-fluid d-flex contents">
        <?php include_once 'includes/sidenav.php' ?>

            <main class="mx-5">
                <div class="event_s my-2">
                    <div class="evns-container" style="width: 968px; overflow: scroll; padding: 10px; height: 90vh;">
                        <div class="evn-created">
                            <h3>Created events</h3>
                            <table class="table table-borderless">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Event name</th>
                                        <th scope="col">Location</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($events as $i => $event) { ?>
                                        <tr>
                                            <th scope="row"><?php echo $i + 1 ?></th>
                                            <td><?php echo $event["name"] ?></td>
                                            <td><?php echo $event["evn_location"] ?></td>
                                            <td><?php echo $event["start_date"] ?></td>
                                            <td><?php echo $event["price"] ?></td>
                                            <td>
                                                <?php if($event["hasTickets"]) {?>
                                                    <a href="moreTickets.php?uid=<?php echo $uid ?>&eid=<?php echo $event["event_id"] ?>" class="btn btn-primary btn-sm">Add more tickets</a>
                                                <?php } else {?>
                                                    <a href="addTickets.php?uid=<?php echo $uid ?>&eid=<?php echo $event["event_id"] ?>" class="btn btn-primary btn-sm">Create tickets</a>
                                                <?php }?>
                                                <a href="#" class="btn btn-secondary btn-sm">Edit</a>
                                                <a href="#" class="btn btn-danger btn-sm">Delete</a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div><br>
                        <div class="evn-attend">
                            <h3>Events attending</h3>
                            <table class="table table-borderless">
                                <thead class="thead-light">
                                  <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Event name</th>
                                    <th scope="col">Host</th>
                                    <th scope="col">Location</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Price</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($v_events as $i => $event) { ?>
                                        <tr>
                                            <th scope="row"><?php echo $i + 1 ?></th>
                                            <td><?php echo $event["name"] ?></td>
                                            <td>
                                                <?php 
                                                    $host = User::getSingleUser($event["host_id"]);
                                                    echo $host["username"];
                                                 ?>
                                            </td>
                                            <td><?php echo $event["evn_location"] ?></td>
                                            <td><?php echo $event["start_date"] ?></td>
                                            <td><?php echo $event["price"] ?></td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </section>
</body>
</html>