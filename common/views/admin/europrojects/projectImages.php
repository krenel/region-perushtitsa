<?php require_once __DIR__.'/../include/header.php'; ?>
<?php require_once __DIR__.'/../include/sidebar.php'; ?>
    <link id="bootstrap-style" href="css/images.css" rel="stylesheet">

    <!-- start: Content -->
    <div id="content" class="span10" xmlns="http://www.w3.org/1999/html">

        <ul class="breadcrumb">
            <li>
                <i class="icon-home"></i>
                <a href="index.php">Home</a>
                <i class="icon-angle-right"></i>
            </li>
            <li><a href="#">Project Images</a></li>
        </ul>

        <form action="index.php?c=europroject&m=projectImages&id=<?php echo $_GET['id']; ?>" method="post"  class="form-horizontal" enctype="multipart/form-data">
            <fieldset>
                <div class="control-group">
                    <label class="control-label" for="fileInput">File input</label>
                    <div class="controls">
                        <input class="input-file uniform_on" id="fileInput" name="image" type="file">
                        <input type="submit" name="createImage" value="Add Picture" class="btn btn-primary"/>
                    </div>
                </div>

            </fieldset>
        </form>


        <div class="container">
            <div class="row">
                <?php foreach($images as $image): ?>
                    <div class="span3 ">
                        <a href="index.php?c=europroject&m=deleteProjectImage&id=<?php echo $image->getId(); ?>" class="btn btn-mini btn-danger ">Delete</a>
                        <img style="width:270px; height:220px;" class="img-responsive" src="images/europrojects/<?php echo  $image->getImg(); ?>" />
                    </div>
                <?php endforeach; ?>

            </div>
        </div>
    </div>


<?php require_once __DIR__.'/../include/footer.php'; ?>