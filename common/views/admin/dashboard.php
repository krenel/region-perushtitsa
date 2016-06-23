<?php include 'include/header.php'; ?>
<?php include 'include/sidebar.php'; ?>

<?php
$admins = new AdminCollection();
$adminsCount = count($admins->getAll(array(),-1,0));

$users = new UserLIstCollection();
$usersCount = count($users->getAll(array(),-1,0));

$projects = new EuroProjectsCollection();
$projectsCount = count($projects->getAll(array(), -1, 0));

$landmarks = new LandmarksCollection();
$landmarksCount = count($landmarks->getAll(array(), -1, 0));

$news = new NewsCollection();
$newsCount = count($news->getAll(array(),-1, 0));

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

        <a href="index.php?c=admin&m=index" class="quick-button span2">
            <i class="icon-group"></i>
            <p>Admins</p>
            <span class="notification blue"><?php echo $adminsCount ?></span>
        </a>

        <a href="index.php?c=user&m=index" class="quick-button span2">
            <i class="icon-group"></i>
            <p>Users</p>
            <span class="notification red"><?php echo $usersCount ?></span>
        </a>

        <a href="index.php?c=europroject&m=index" class="quick-button span2">
            <i class="icon-file"></i>
            <p>Projects</p>
            <span class="notification green"><?php echo $projectsCount ?></span>
        </a>

        <a href="index.php?c=landmark&m=index" class="quick-button span2">
            <i class="icon-camera-retro"></i>
            <p>Landmarks</p>
            <span class="notification purple"><?php echo $landmarksCount ?></span>
        </a>

        <a href="index.php?c=news&m=index" class="quick-button span2">
            <i class="icon-fire"></i>
            <p>News</p>
            <span class="notification yellow"><?php echo $newsCount ?></span>
        </a>

    </div>

</div>

<?php include 'include/footer.php'; ?>
