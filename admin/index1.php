<?php
require_once('common/header.php');

if (!loggedIn()) {
    header('Location: login1.php');
}

require_once('common/sidebar.php');

?>

<?php
$admins = new AdminCollection();
$adminsCount = count($admins->getAll(array(),-1,0));

$users = new UserLIstCollection();
$usersCount = count($users->getAll(array(),-1,0));

$projects = new EuroProjectsCollection();
$projectsCount = count($projects->getAll(array(), -1, 0));

$landmarks = new LandmarksCollection();
$landmarksCount = count($landmarks->getAll(array(), -1, 0));

?>


    <!-- start: Content -->
    <div id="content" class="span10">


        <ul class="breadcrumb">
            <li>
                <i class="icon-home"></i>
                <a href="index.php">Home</a>
                <i class="icon-angle-right"></i>
            </li>
            <li><a href="#">Dashboard</a></li>
        </ul>

        <div class="row-fluid">

            <a href="admin.php" class="quick-button span2">
                <i class="icon-group"></i>
                <p>Admins</p>
                <span class="notification blue"><?php echo $adminsCount ?></span>
            </a>

            <a href="users.php" class="quick-button span2">
                <i class="icon-group"></i>
                <p>Users</p>
                <span class="notification red"><?php echo $usersCount ?></span>
            </a>

            <a href="europrojects.php" class="quick-button span2">
                <i class="icon-file"></i>
                <p>Projects</p>
                <span class="notification green"><?php echo $projectsCount ?></span>
            </a>

            <a href="landmarks.php" class="quick-button span2">
                <i class="icon-camera-retro"></i>
                <p>Landmarks</p>
                <span class="notification purple"><?php echo $landmarksCount ?></span>
            </a>

        </div>

    </div><!--/.fluid-container-->
    <!-- end: Content -->

<?php
require_once('common/footer.php');
?>