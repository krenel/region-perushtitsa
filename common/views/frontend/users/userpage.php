<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

    <div class="form-style-6">
        <h1>Hi, <?php echo $insertInfo['username']; ?></h1>
        <form action="" method="post" enctype="multipart/form-data">
            <input type="text" name="username" placeholder="Username" value="<?php echo $insertInfo['username'] ?>" />
            <input type="password" name="password" placeholder="Password" value="<?php echo $insertInfo['password'] ?>" />
            <input type="email" name="email" placeholder="E-Mail" value="<?php echo $insertInfo['email'] ?>" />
            <textarea name="userinfo" placeholder="User information..."><?php echo $insertInfo['userinfo'] ?></textarea>
            <input id="edit" type="submit" name="editUser" value="Edit" />
            <hr/>
            <input type="submit" name="back" value="Back" />
        </form>
    </div>

    <script>
        $btn = $('#edit');
        $form = $('form');
        $pas = $form.children()[1];
        $btn.on('click',function(){
            if($pas.value == ''){
                alert('Въведете парола!');
//                window.location = "http://localhost/obshtina%20Perushtitsa%20v2/index.php?c=loginuser&m=update&id=<?php //echo $_GET['id'] ?>//";
                return false;
            } else {
//                alert('Вашият профил беще актуализиран!');
//                window.location = "http://localhost/obshtina%20Perushtitsa%20v2/index.php";
            }
        });

    </script>


<?php include '/../include/footer.php'; ?>