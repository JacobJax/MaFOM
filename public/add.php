<?php
require_once './models/Event.php';

$categories = Event::getEventCategory();
$types = Event::getEventType();

$uid = (int)$_GET['uid'];
if(!isset($_GET['uid'])) {
    header('Location: index.php');
}

if($_SERVER["REQUEST_METHOD"] === "POST") {

    $name = $_POST['ename'];
    $description = $_POST['edesc'];
    $type_id = $_POST['type_id'];
    $category_id = $_POST['ctg_id'];
    $poster;
    $location = $_POST['elocat'];
    $s_date = $_POST['estartd'];
    $s_time = $_POST['estartt'];
    $e_date = $_POST['eendd'];
    $e_time = $_POST['eendt'];


    // handle image upload   
    $valid_ext = ['jpg', 'jpeg', 'png'];
    $file = $_FILES['ill'];

    $fileName = $file['name'];
    $fileTmpDes = $file['tmp_name'];
    $fileError = $file['error'];

    $fileExt = explode('.', $fileName);
    $actualFileExt = strtolower(end($fileExt));

    $fileNewName = uniqid('', true) . '.' . $actualFileExt;
    $destination = "./img/" . $fileNewName;
    $poster = $destination;
    move_uploaded_file($fileTmpDes, $destination); 

    $event = new Event($name, $location, $description, $type_id, $category_id, $s_date, $s_time, $e_date, $e_time, $uid, $poster);
    $event->addEvent();

    session_start();
    header('Location: events.php?uid=' . $_SESSION['uid']);

}


?>

<?php include_once 'includes/header.php' ?>
    
    <section class="add-evn">
        <div class="container ct-add">
            <form class="evn-add-form" enctype="multipart/form-data" method="POST">
                <h3>Event Basic info</h3>
                <p>Name your event and tell event-goers why they should come. Add details that highlight what makes it unique.</p>
                <div class="form-group">
                    <label for="pname">Event name</label>
                    <input type="text" class="form-control" name="ename" required>
                </div>
                <div class="form-group">
                    <label for="p-age">Event description</label>
                    <textarea name="edesc" class="form-control" rows="2" required></textarea>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="exampleFormControlSelect1">Type</label>
                        <select class="form-control" name="type_id">
                            <?php foreach($types as $type) { ?>
                                <option value=<?php echo $type["type_id"] ?> ><?php echo $type["type_name"] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleFormControlSelect1">Category</label>
                        <select class="form-control" name="ctg_id">
                            <?php foreach($categories as $ctg) { ?>
                                <option value=<?php echo $ctg["category_id"] ?> ><?php echo $ctg["category_name"] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ill">Add event poster</label>
                    <input type="file" name="ill" id="" required>
                </div>

                <hr>

                <h3>Location</h3>    
                <p>Help people in the area discover your event and let attendees know where to show up.</p>
                <div class="form-group">
                    <label for="pname">Event location</label>
                    <input type="text" class="form-control" name="elocat" required>
                </div>

                <hr>

                <h3>Date and Time</h3>
                <p>Tell event-goers when your event starts and ends so they can make plans to attend.</p>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="pname">Event starts</label>
                        <input type="date" class="form-control" name="estartd" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="pname">Start time</label>
                        <input type="time" class="form-control" name="estartt" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="pname">Event ends</label>
                        <input type="date" class="form-control" name="eendd" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="pname">End time</label>
                        <input type="time" class="form-control" name="eendt" required>
                    </div>
                </div>  
                <hr>
                <button type="submit" class="btn btn-primary btn-block">Create Event</button> 
            </form>
        </div>
    </section>
</body>
</html>
