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
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="event my-2">
                                <div class="event-container d-flex">
                                    <div class="evn-img">
                                        <img src="./img/prty-1.jpg" alt="">
                                    </div>
                                    <div class="evn-text d-flex">
                                        <div class="evn-text-left">
                                            <div class="evn-text-header d-flex">
                                                <p class="pill evn-location">Mombasa</p>
                                                <small><p class="mx-2 evn-date">March 21 1/1/2021 from 6pm</p></small>
                                            </div>
                                            <div class="evn-description">
                                                <h3 class="evn-title title">NRG COMMING MSA</h3>
                                                <p class="evn-description-text">
                                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus necessitatibus, porro odit nihil aliquam fugiat illum soluta deleniti optio. Doloribus fugiat libero corrupti laborum eaque, aperiam ipsam mollitia explicabo necessitatibus.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="evn-text-right d-flex flex-column" style="gap: 120px;">
                                            <div class="evn-links d-flex justify-content-around">
                                                <img src="https://img.icons8.com/ios/28/000000/external-link.png"/>
                                                <img src="https://img.icons8.com/ios/28/000000/bookmark-ribbon--v1.png"/>
                                            </div>
                                            <div class="evn-price">
                                                <p><b>Kshs 1500</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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