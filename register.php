<?php include 'common/views/frontend/include/header.php'; ?>
<?php include 'common/views/frontend/include/menu.php'; ?>
<div class="form-style-6">
    <h1>Registration</h1>
    <form>
        <input type="text" name="username" placeholder="Username" />
        <input type="password" name="password" placeholder="Password" />
        <input type="email" name="email" placeholder="E-Mail" />
        <textarea name="userinfo" placeholder="User information..."></textarea>
        <input type="submit" name="RegisterUser" value="Register" />
    </form>
    <a href="login1.php">Login</a>
</div>
<?php include 'common/views/frontend/include/footer.php'; ?>
