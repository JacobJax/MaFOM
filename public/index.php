<?php 
require_once './models/Event.php';

$events = Event::getEventsWithTickets();

?>

<?php include_once "includes/header.php" ?>

    <section class="main-cont">
        <div class="container-fluid d-flex contents">
            <?php include_once 'includes/sidenav.php' ?>
            <main>
                <div class="event_s my-2">
                    <div class="evn-container">
                        <div class="events">
                            <?php foreach($events as $event) {?>
                                <div class="event my-3">
                                    <a href="event.php?uid=<?php echo $_SESSION["uid"] ?>&eid=<?php echo $event["event_id"] ?>" class="link-evn">
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
                                                        <div class="evn-price">
                                                            <p><b>Kshs <?php echo $event["price"] ?></b></p>
                                                        </div>
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
</body>
</html>