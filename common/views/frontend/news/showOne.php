<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

    <div class="contentArea">

        <div class="divPanel notop page-content">

            <div class="breadcrumbs">
                <a href="index.php?c=index&m=index">Начало</a> &nbsp;/&nbsp; <a href="index.php?c=FrontNews&m=index">Новини</a> &nbsp;/&nbsp; <span><?php echo $SingleNews->getTitle(); ?></span>
            </div>


            <div class="row-fluid">
                <div class="span12">

                    <h2><?php echo $SingleNews->getTitle(); ?></h2>

                    <br />

                    <blockquote>
                        <p><?php echo $SingleNews->getDescription(); ?></p>
                        <small><?php echo $SingleNews->getDate(); ?></small>
                    </blockquote>

                </div>
            </div>


            <div id="footerInnerSeparator"></div>
        </div>
    </div>

<?php include '/../include/footer.php'; ?>