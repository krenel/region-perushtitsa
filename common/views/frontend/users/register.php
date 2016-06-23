<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

<div class="form-style-6">
    <h1>Регистрация</h1>
    <form action="" method="post">
        <input type="text" name="username" placeholder="Username" pattern="[A-Za-z0-9]\b" />
        <div style="display: none" class="alert alert-error">
            <strong>Грешка!</strong> Изпозваийте само главни или малки букви или числа.
        </div>
        <input type="password" name="password" placeholder="Password" pattern="[A-Za-z0-9]\b" />
        <input type="password" name="password" placeholder="Repeat Password" pattern="[A-Za-z0-9]\b" />
        <div style="display: none" class="alert alert-error">
            <strong>Грешка!</strong> Hесъответстващи пароли.
        </div>
        <input type="email" name="email" placeholder="E-Mail" />
        <div style="display: none" class="alert alert-error">
            <strong>Грешка!</strong> Невалиден e-mail.
        </div>
        <textarea name="userinfo" placeholder="User information..."></textarea>
        <input id="regbtn" type="submit" name="RegisterUser" value="Регистрация" />
    </form>
    <a href="index.php?c=loginuser&m=login">Вход</a>
</div>

<script>

    $form = $('form');
    $username = $form.children()[0].value;
    $errUsername = $form.children()[1];
    $password = $form.children()[2];
    $rePassword = $form.children()[3];
    $errPassword = $form.children()[4];
    $email = $form.children()[5];
    $errEmail = $form.children()[6];
    $btn = $('#regbtn');


    $btn.on('click', function(){
        if($password.value != $rePassword.value){
            $errPassword.style.display = 'block';
            console.log('err');
            return false;
        }
        console.log('ok');
        return true;
    });

</script>
<?php include '/../include/footer.php'; ?>

