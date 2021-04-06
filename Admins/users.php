<?php
require_once 'models/Admin.php';

$u_sers = Admin::getUsers();
$users = $u_sers['users'];

$flws = Admin::getFollows();

?>

<?php include_once "./includes/header.php" ?>
<div class="container my-5">
    <h4>All users</h4><hr>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Location</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($users as $i => $user) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $user["first_name"] ?></td>
                    <td><?php echo $user["last_name"] ?></td>
                    <td><?php echo $user["username"] ?></td>
                    <td><?php echo $user["email"] ?></td>
                    <td><?php echo $user["phone"] ?></td>
                    <td><?php echo $user["location"] ?></td>
                    <td>
                        <button class="btn btn-danger btn-sm" >Delete</button>
                    </td>
                </tr>
            <?php }?>
        </tbody>
    </table>
    <br>
    <h4>Follows</h4><hr>
    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">#</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Location</th>
                <th scope="col">Follower</th>
                <th scope="col">Email</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($flws as $i => $user) {?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td><?php echo $user["uuname"] ?></td>
                    <td><?php echo $user["uemail"] ?></td>
                    <td><?php echo $user["uphone"] ?></td>
                    <td><?php echo $user["ulocation"] ?></td>
                    <td><?php echo $user["funame"] ?></td>
                    <td><?php echo $user["femail"] ?></td>
                </tr>
            <?php }?>
        </tbody>
    </table>
</div>
<?php include_once "./includes/footer.php" ?>
<!-- NHTJBFFTFSVLXQYB -->
<!-- SELECT * FROM events LEFT JOIN categories ON events.category_id = categories.category_id LEFT JOIN types ON events.type_id = types.type_id LEFT JOIN tickets ON events.event_id = tickets.event_id -->