<?php include('/../include/header.php'); ?>
<?php include('/../include/sidebar.php'); ?>

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
        <div class="control-group <?php echo (array_key_exists('adname', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">adname</label>
            <div class="controls">
                <input type="text" id="inputError" name="adname" value="<?php echo $insertInfo['adname']; ?>">
                <?php if (array_key_exists('adname', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['adname']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('password', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Password</label>
            <div class="controls">
                <input type="password" id="inputError" name="password">
                <?php if (array_key_exists('password', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['password']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <input type="submit" name="editAdmin" />
    </form>
</div>

<?php include('/../include/footer.php'); ?>
