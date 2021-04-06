<?php 
require_once 'models/Admin.php';

$events = Admin::getEvents();
$ecount = $events['eventCount'];

$users = Admin::getUsers();
$ucount = $users['userCount'];

$tcount = Admin::getTicketCount();

?>

<?php include_once "./includes/header.php" ?>

    <div class="container my-5">
        <div class="row">
            <div class="col-sm">
                <div class="card">
                    <div class="card-header">
                        Users
                    </div>
                    <div class="card-body">
                        <h3 class="card-title"><?php echo $ucount ?> </h3>
                        <p class="card-text">Total users</p>
                        <a href="#" class="btn btn-primary">Generate report</a>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card">
                    <div class="card-header">
                        Events
                    </div>
                    <div class="card-body">
                        <h3 class="card-title"><?php echo $ecount ?> </h3>
                        <p class="card-text">Total events</p>
                        <a href="#" class="btn btn-primary">Generate report</a>
                    </div>
                </div>
            </div>
            <div class="col-sm">
            <div class="card">
                <div class="card-header">
                        Tickets
                    </div>
                    <div class="card-body">
                        <h3 class="card-title"><?php echo $tcount ?> </h3>
                        <p class="card-text">Total tickets so far</p>
                        <a href="#" class="btn btn-primary">Generate report</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<?php include_once "./includes/footer.php" ?>