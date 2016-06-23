<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>
<?php
    $projectImageCollection = new ProjectImagesCollection();
    $Image = $projectImageCollection->getOneImg($_GET['id']);
?>

<div id="divBoxed" class="container">

    <div class="contentArea">

        <div class="divPanel notop page-content">

            <div class="breadcrumbs">
                <a href="index.php?c=index&m=index">Начало</a> &nbsp;/&nbsp; <a href="index.php?c=projectlist&m=index">Европроекти</a> &nbsp;/&nbsp; <span><?php echo $project->getProjectName(); ?></span>
            </div>

            <div class="row-fluid">

                <!--Edit Main Content Area here-->
                <div class="span9" id="divMain">

                    <h3><?php echo $project->getProjectname(); ?></h3>
                    <hr/>
                    <p><?php echo $project->getDescription(); ?></p>

                </div>
                <!--Edit Sidebar Content here-->
                <div class="span3">
                    <h3>Източник на финансиране:</h3>
                    <p><?php echo $project->getFundingsource(); ?></p>
                    <!-- Start Side Categories -->


                    <!-- Edit Carousel -->
                    <h3>Снимки:</h3>
                    <div id="myCarousel" class="carousel slide">
                        <div class="carousel-inner">
                            <?php foreach($projectImages as $projectImage){ ?>
                            <div class="item">
                                <a href="admin/images/europrojects/<?php echo $projectImage->getImg(); ?>"><img src="admin/images/europrojects/<?php echo $projectImage->getImg(); ?>" class="img-polaroid" alt=""></a>
                            </div>
                            <?php } ?>
                        </div>

                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                    </div>
                    <!-- /End Carousel -->


                    <h3>Срок:</h3>
                    <p><?php echo $project->getTimeLine(); ?></p>
                    <h3>Стойност:</h3>
                    <p><?php echo $project->getCost(); ?></p>
                </div>
                <!--/End Sidebar Content -->
                <!--/End Main Content Area here-->


            </div>

            <div id="footerInnerSeparator"></div>
        </div>
    </div>

    <script>

        $crs = $('.carousel-inner');
        $crs.children()[0].setAttribute("class", "item active");

        function changebg() {
            document.body.style.background = "url('bgs/bg1.jpg') no-repeat fixed";
        }
        window.onload =  changebg();

    </script>

    <div id="footerOuterSeparator"></div>

<?php include '/../include/footer.php'; ?>

