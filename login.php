<?php include 'common/views/frontend/include/header.php'; ?>
<?php include 'common/views/frontend/include/menu.php'; ?>

<div class="form-style-6">
    <h1>Login</h1>
    <form method="post">
        <?php
        if(array_key_exists('login', $errors)) {
            echo $errors['login'];
        }
        ?>
        <input type="text" name="username" placeholder="Username" />
        <input type="password" name="password" placeholder="Password" />
        <input class="btn btn-primary" type="submit" name="LoginUser" value="Sing in" />
    </form>
    <a href="index.php?c=loginuser&m=register">Register</a>
</div>
<?php include 'common/views/frontend/include/footer.php'; ?>