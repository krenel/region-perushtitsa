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
        <div class="control-group <?php echo (array_key_exists('projectName', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Project Name</label>
            <div class="controls">
                <input type="text" id="inputError" name="projectName" value="<?php echo $insertInfo['projectName']; ?>">
                <?php if (array_key_exists('projectName', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['projectName']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('fundingSource', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Funding Source</label>
            <div class="controls">
                <input type="text" id="inputError" name="fundingSource" value="<?php echo $insertInfo['fundingSource']; ?>">
                <?php if (array_key_exists('fundingSource', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['fundingSource']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('cost', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Cost</label>
            <div class="controls">
                <input type="text" id="inputError" name="cost" value="<?php echo $insertInfo['cost']; ?>">
                <?php if (array_key_exists('password', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['cost']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('timeLine', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Timeline</label>
            <div class="controls">
                <input type="text" id="inputError" name="timeLine" value="<?php echo $insertInfo['timeLine']; ?>">
                <?php if (array_key_exists('timeLine', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['timeLine']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('description', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Description</label>
            <div class="controls">
                <textarea required class="form-control" name="description" id="description" cols="30" rows="10"><?php echo $insertInfo['description']; ?></textarea>
            </div>
        </div>
        <input type="submit" name="updateProject" />
    </form>
</div>

<?php require_once __DIR__.'/../include/footer.php'; ?>
