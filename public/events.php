<?php 
require_once './models/Event.php';

$uid = (int)$_GET['uid'];
$events = Event::getUserEvents($uid);

// echo "<pre>";
// var_dump($events);
// echo "</pre>";
// exit();

?>

<?php include_once 'includes/header.php' ?>

    <section class="main-cont">
        <div class="container-fluid d-flex contents">
            <aside class="left-nav">
                <div class="letf-nav-items">
                    <ul class="nav flex-column my-5">
                        <li class="nav-item">
                            <a class="nav-link active" href="index.html">
                                <img src="https://img.icons8.com/emoji/30/000000/house-emoji.png" class="mx-2">Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <img src="https://img.icons8.com/emoji/30/000000/calendar-emoji.png" class="mx-2">Events
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <img src="https://img.icons8.com/emoji/30/000000/-emoji-admission.png"/ class="mx-2">Tickets
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <img src="https://img.icons8.com/emoji/30/000000/bookmark-emoji.png" class="mx-2">Saved
                            </a>
                        </li>
                    </ul>
                    <a href="add.html" class="btn btn-event">Create event</a>
                </div>
            </aside>

            <main class="mx-5">
                <div class="events my-2">
                    <div class="evns-container" style="width: 968px;">
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
                                            <td><?php echo $event["location"] ?></td>
                                            <td><?php echo $event["start_date"] ?></td>
                                            <td><?php $event["price"] ?></td>
                                            <td>
                                                <a href="addTickets.php?uid=<?php echo $uid ?>&eid=<?php echo $event["event_id"] ?>" class="btn btn-primary btn-sm">Create tickets</a>
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
                                  <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                    <td>@mdo</td>
                                  </tr>
                                  <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                    <td>@fat</td>
                                  </tr>
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