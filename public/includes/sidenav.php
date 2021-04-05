            <aside class="left-nav">
                <div class="letf-nav-items">
                    <ul class="nav flex-column my-5">
                        <li class="nav-item">
                            <a class="nav-link active" href="index.php">
                                <img src="https://img.icons8.com/emoji/30/000000/house-emoji.png" class="mx-2">Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="
                            <?php if(isset($_SESSION["uid"])) { ?>
                                events.php?uid=<?php echo $_SESSION['uid'] ?>
                            <?php } else { ?>
                                login.php
                            <?php } ?>
                            ">
                                <img src="https://img.icons8.com/emoji/30/000000/calendar-emoji.png" class="mx-2">Events
                            </a>
                        </li>
                    </ul>
                    <a href="
                    <?php if(isset($_SESSION["uid"])) { ?>
                    add.php?uid=<?php echo $_SESSION['uid'] ?>
                    <?php } else { ?>
                        login.php
                    <?php } ?>
                    " class="btn btn-event">Create event</a>
                </div>
            </aside>
