<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>
<?php
$landmarkCollection = new LandmarksCollection();
$landmark = $landmarkCollection->getOne($_GET['id']);
?>

<div class="contentArea">

    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <a href="index.php?c=index&m=index">Начало</a> &nbsp;/&nbsp; <a href="index.php?c=landmarkfront&m=index">Забележителности</a> &nbsp;/&nbsp; <span><?php echo $landmark->getName(); ?></span>
        </div>

        <div class="row-fluid">
            <!--Edit Main Content Area here-->
            <div class="span12" id="divMain">
                <hr>
                <h3><?php echo $landmark->getName(); ?></h3>
                <p><?php echo $landmark->getDescription(); ?></p>


                <h3>Снимки:</h3>

                <div class="row-fluid">
                    <?php foreach ($landmarkImages as $landmarkImage) { ?>
                    <div class="span2">
                        <a href="admin/images/landmarks/<?php echo $landmarkImage->getImg(); ?>"><img src="admin/images/landmarks/<?php echo $landmarkImage->getImg(); ?>" class="img-polaroid" style="margin:5px 0px 15px;" alt=""/></a>
                    </div>
                    <?php } ?>
                </div>

                <hr/>

            </div>
            <!--End Main Content Area here-->
        </div>

        <div id="footerInnerSeparator"></div>
    </div>
</div>

<script>

    function changebg() {
        document.body.style.background = "url('bgs/bg1.jpg') no-repeat fixed";
    }
    window.onload =  changebg();


</script>

<?php include '/../include/footer.php'; ?>

