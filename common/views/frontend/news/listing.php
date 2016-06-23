<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

<div class="contentArea">

    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <a href="index.php?c=index&m=index">Начало</a> &nbsp;/&nbsp; <span>Новини</span>
        </div>


        <div class="row-fluid">
            <div class="span12">

                <h2>Всички новини</h2>

                <?php foreach($AllNews as $SingleNews) { ?>
                <hr/>
                <div class="media">
                    <a class="pull-left" href="index.php?c=FrontNews&m=showOne&id=<?php echo $SingleNews->getId(); ?>">
                        <img src="images/newsico.png" class="img-rounded" alt="" />
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"><?php echo $SingleNews->getTitle(); ?></h4>
                        <?php echo $SingleNews->getDescription(); ?>
                    </div>
                </div>
                <hr/>
                    <h5><?php echo $SingleNews->getDate(); ?></h5>
                <?php } ?>

            </div>
            <div class="span12"><?php echo $pagination->create(); ?></div>
        </div>


        <div id="footerInnerSeparator"></div>
    </div>
</div>

<?php include '/../include/footer.php'; ?>
