<?php 
require_once './models/Event.php';

$events = Event::getEventsWithTickets();

?>

<?php include_once "includes/header.php" ?>

    <section class="main-cont">
        <div class="container-fluid d-flex contents">
            <?php include_once 'includes/sidenav.php' ?>
            <main>
                <div class="events my-2">
                    <div class="evn-container">
                        <div class="events">
                            <?php foreach($events as $event) {?>
                                <div class="event my-3">
                                    <a href="event.php?eid=<?php echo $event["event_id"] ?>" class="link-evn">
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

            <aside class="right-menu">
                <div class="popular my-3">
                    <h3 class="popular-header title">Popular events</h3>
                    <div class="evn-popular bg-c my-2">
                        <h6 class="pop-name">Something good</h6>
                        <p style="font-size: .8rem;"><b>13 people attending</b></p>
                    </div>                                       
                    <div class="evn-popular bg-c my-2">
                        <h6 class="pop-name">Something good</h6>
                        <p style="font-size: .8rem;"><b>13 people attending</b></p>
                    </div>                                       
                    <div class="evn-popular bg-c my-2">
                        <h6 class="pop-name">Something good</h6>
                        <p style="font-size: .8rem;"><b>13 people attending</b></p>
                    </div>                                       
                </div>
                <div class="popular my-3">
                    <h3 class="popular-header title">Popular hosts</h3>
                    <div class="host d-flex bg-c my-2">
                        <div class="host-ill">
                            <img src="https://img.icons8.com/emoji/48/000000/man-dark-skin-tone.png"/>
                        </div>
                        <div class="host-text">
                            <h3 class="host-name">NRG RADIO</h3>
                            <a href="" class="pill"><small>Follow</small></a>
                        </div>
                    </div>
                    <div class="host d-flex bg-c my-2">
                        <div class="host-ill">
                            <img src="https://img.icons8.com/emoji/48/000000/man-dark-skin-tone.png"/>
                        </div>
                        <div class="host-text">
                            <h3 class="host-name">NRG RADIO</h3>
                            <a href="" class="pill"><small>Follow</small></a>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </section>
</body>
</html>