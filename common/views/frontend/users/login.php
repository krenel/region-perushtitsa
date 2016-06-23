<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

<div class="form-style-6">
    <h1>Вход</h1>
    <form method="post">
        <?php
        if(array_key_exists('login', $errors)) {
            echo $errors['login'];
        }
        ?>
        <input type="text" name="username" placeholder="Username" />
        <input type="password" name="password" placeholder="Password" />
        <input type="submit" name="LoginUser" value="Вход" />
    </form>
    <a href="index.php?c=loginuser&m=register">Нямате профил? Регистрация тук</a>
</div>


<?php include '/../include/footer.php'; ?>