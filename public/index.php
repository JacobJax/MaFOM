<?php 
require_once './models/Event.php';
require_once 'models/User.php';

$events = Event::getEventsWithTickets();

?>

<?php include_once "includes/header.php" ?>
<?php
    if(isset($_SESSION['uid'])) {
        $id = $_SESSION['uid'];
        $isBlocked = User::checkBlock($id);
    }
?>

<?php if(isset($_SESSION['uid']) && (bool)$isBlocked['isBlocked']) {?>
    <div class="container">
        <div class="jumbotron my-3">
            <h3>ACTION BLOCKED!</h3>
            <p>Unable to complete action because you have been blocked. </p>
            <p>This happens if</p>
            <ol>
                <li>We noted suspicious activity</li>
                <li>Attempt at an unallowed activity</li>
            </ol>
        </div>
    </div>
<?php } else {?>
    <section class="main-cont">
        <div class="container-fluid d-flex contents">
            <?php include_once 'includes/sidenav.php' ?>
            <main>
                <div class="event_s my-2">
                    <div class="evn-container">
                        <div class="events">
                            <?php foreach($events as $event) {?>
                                <div class="event my-3">
                                    <a href="
                                    <?php if(isset($_SESSION["uid"])) {?>
                                        event.php?uid=<?php echo $_SESSION["uid"] ?>&eid=<?php echo $event["event_id"] ?>
                                    <?php } else {?>
                                        login.php
                                    <?php }?>
                                    " class="link-evn">
                                        <div class="event-container d-flex">
                                            <div class="evn-img">
                                                <img src="<?php echo $event["event_poster"] ?>" alt="">
                                            </div>
                                            <div class="evn-text d-flex">
                                                <div class="evn-text-left">
                                                    <div class="evn-text-header d-flex">
                                                        <p class="pill evn-location"><?php echo $event["evn_location"] ?></p>
                                                        <small><p class="mx-2 evn-date"><?php echo $event["start_date"] . " from " . $event["start_time"] ?></p></small>
                                                    </div>
                                                    <div class="evn-description">
                                                        <h3 class="evn-title title"><?php echo $event["name"] ?></h3>
                                                        <p class="evn-description-text">
                                                            <?php echo $event["description"] ?>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                                    <div class="evn-links d-flex justify-content-around">
                                                        <?php if($event["price"] == 0){?>
                                                            <div class="evn-price">
                                                                <p><b>FREE</b></p>
                                                            </div>
                                                        <?php } else {?>
                                                            <div class="evn-price">
                                                                <p><b>Kshs <?php echo $event["price"] ?></b></p>
                                                            </div>
                                                        <?php }?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>    
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </main>

        </div>
    </section>
    <?php } ?>
</body>
</html>