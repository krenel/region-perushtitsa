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
        <div class="control-group <?php echo (array_key_exists('username', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Username</label>
            <div class="controls">
                <input type="text" id="inputError" name="username" value="<?php echo $insertInfo['username']; ?>">
                <?php if (array_key_exists('username', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['username']; ?></span>
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
        <div class="control-group <?php echo (array_key_exists('email', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">Email</label>
            <div class="controls">
                <input type="text" id="inputError" name="email" value="<?php echo $insertInfo['email']; ?>">
                <?php if (array_key_exists('email', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['email']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <div class="control-group <?php echo (array_key_exists('userinfo', $errors))? 'error' : ''; ?>">
            <label class="control-label" for="inputError">User Info</label>
            <div class="controls">
                <input type="text" id="inputError" name="userinfo" value="<?php echo $insertInfo['userinfo']; ?>">
                <?php if (array_key_exists('userinfo', $errors)): ?>
                    <span class="help-inline"><?php echo $errors['userinfo']; ?></span>
                <?php  endif; ?>
            </div>
        </div>
        <input type="submit" name="editUser" />
    </form>
</div>

<?php require_once __DIR__.'/../include/footer.php'; ?>