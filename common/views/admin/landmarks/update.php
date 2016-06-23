<?php require_once __DIR__.'/../include/header.php'; ?>
<?php require_once __DIR__.'/../include/sidebar.php'; ?>



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


        <form action="" method="post">
            <div class="control-group <?php echo (array_key_exists('name', $errors))? 'error' : ''; ?>">
                <label class="control-label" for="inputError">Name</label>
                <div class="controls">
                    <input type="text" id="inputError" name="name" value="<?php echo $insertInfo['name']; ?>">
                    <?php if (array_key_exists('name', $errors)): ?>
                        <span class="help-inline"><?php echo $errors['name']; ?></span>
                    <?php  endif; ?>
                </div>
            </div>
            <div class="control-group <?php echo (array_key_exists('description', $errors))? 'error' : ''; ?>">
                <label class="control-label" for="inputError">Description</label>
                <div class="controls">
                    <textarea required class="form-control" name="description" id="description" cols="30" rows="10"><?php echo $insertInfo['description']; ?></textarea>
                </div>
            </div>
            <input type="submit" name="editLandmark" />
        </form>
    </div>

<?php require_once __DIR__.'/../include/footer.php'; ?>