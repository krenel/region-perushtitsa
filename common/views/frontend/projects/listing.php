<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

<div class="contentArea">

    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <a href="index.php?c=index&m=index">Home</a> &nbsp;/&nbsp; <span>Европроекти</span>
        </div>

        <!--Edit Portfolio Content Area here-->
        <div class="row-fluid">
            <div class="span12">

                <h2>Европейски проекти</h2>

                <?php foreach ($projects as $project) { ?>
                    <?php
                    $projectImagesCollection = new ProjectImagesCollection();
                    $projectImages = $projectImagesCollection->getAll(array());
                    $projectImages = $projectImagesCollection->getOneImg($project->getId());
                    ?>
                <div class="media">
                        <img class="pull-left prjimg" src="admin/images/europrojects/<?php echo $projectImages->getImg(); ?>"  class="img-rounded" alt="" />
                    <div class="media-body">
                        <h4 class="media-heading"><?php echo $project->getProjectname(); ?></h4>
                        <?php echo $project->getDescription(); ?>
                    </div>
                    <a class="btn btn-info pull-right" href="index.php?c=projectlist&m=showOne&id=<?php echo $project->getId(); ?>">Към проекта</a>
                </div>
                <hr>
                <?php } ?>

            </div>
            <div class="span12"><?php echo $pagination->create(); ?></div>

        </div>
        <!--/End Portfolio Content Area-->

        <div id="footerInnerSeparator"></div>
    </div>
</div>

<script>

    function changebg() {
        document.body.style.background = "url('bgs/bg4.jpg') no-repeat fixed";
    }
    window.onload =  changebg();


</script>

<?php include '/../include/footer.php'; ?>
