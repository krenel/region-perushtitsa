<?php
    class LoginuserController extends Controller{

        public function __construct()
        {
            parent::__construct();
        }

        public function login()
        {
            $data = array();


            $usersCollection = new UserLIstCollection();

            $errors = array();

            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                if (isset($_POST['username'])) {
                    if (isset($_POST['username']) && isset($_POST['password']) && strlen($_POST['username']) > 3 && strlen($_POST['password']) > 3) {
                        $password = sha1($_POST['password']);

                        $username = htmlspecialchars(trim($_POST['username']));
                        $where = array('username' => $username);

                        $result = $usersCollection->getAll($where);

                        if ($result != null && $result[0]->getPassword() == $password) {
                            $_SESSION['user'] = $result[0];
                            $_SESSION['logged_in'] = 1;
                            header('Location: index.php?c=index&m=index');
                        } else {
                            $errors['login'] = 'Wrong credentials';
                        }

                    } else {
                        $errors['login'] = 'Wrong credentials';
                    }
                }
            }

            $data['errors'] = $errors;


            $this->loadFrontView('users/login', $data);
        }

        private function validateUserInput($input)
        {
            $errors = array();

            if(!isset($input['username']) || strlen(trim($input['username'])) < 3 || strlen(trim($input['username'])) > 255) {
                $errors['username'] = 'Incorrect username';
            }

            return $errors;
        }

        public function register()
        {

            $data = array();

            $insertInfo = array(
                'username' => '',
                'password' => '',
                'email'    => '',
                'userinfo' => ''
            );

            $errors = array();

            if(isset($_POST['RegisterUser'])) {

                $insertInfo = array(
                    'username' => (isset($_POST['username']))? $_POST['username'] : '',
                    'password' => (isset($_POST['password']))? $_POST['password'] : '',
                    'email'    => (isset($_POST['email']))? $_POST['email'] : '',
                    'userinfo' => (isset($_POST['userinfo']))? $_POST['userinfo'] : ''
                );

                $errors = $this->validateUserInput($insertInfo);

                if (empty($errors)) {
                    $password = sha1($insertInfo['password']);

                    $userEntity = new UserListEntity();
                    $userEntity->setUsername($insertInfo['username']);
                    $userEntity->setEmail($insertInfo['email']);
                    $userEntity->setPassword($password);
                    $userEntity->setUserinfo($insertInfo['userinfo']);

                    $collection = new UserLIstCollection();
                    $collection->save($userEntity);

                    //$_SESSION['flashMessage'] = 'You have 1 new user';
                    header('Location: index.php?c=index&m=index');
                }

            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadFrontView('users/register',$data);

        }

        public function update()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=loginuser&m=login');
            }

            $data = array();

            //$id = $_GET['id'];

            $collection = new UserLIstCollection();
            $user = $collection->getOne($_GET['id']);

            if(is_null($user)) {
                header('Location: users.php');
            }

            $insertInfo = array(
                'username' => $user->getUsername(),
                'password' => '',
                'email'    => $user->getEmail(),
                'userinfo' => $user->getUserInfo(),
            );

            $errors = array();

            if(isset($_POST['back'])) {
                header("Location: index.php?c=index&m=index");
            }

            if(isset($_POST['editUser'])) {

                $insertInfo = array(
                    'username' => (isset($_POST['username']))? $_POST['username'] : '',
                    'password' => (isset($_POST['password']))? $_POST['password'] : '',
                    'email'    => (isset($_POST['email']))? $_POST['email'] : '',
                    'userinfo' => (isset($_POST['userinfo']))? $_POST['userinfo'] : '',
                    'userimage' => (isset($_POST['image'])) ? $_POST['image'] : '',
                );


                $errors = $this->validateUserInput($insertInfo);

                if (empty($errors)) {
                    $UserEntity = new UserListEntity();
                    $UserEntity->setId($_GET['id']);
                    $UserEntity->setUsername($insertInfo['username']);
                    $UserEntity->setPassword(sha1($insertInfo['password']));
                    $UserEntity->setEmail($insertInfo['email']);
                    $UserEntity->setUserinfo($insertInfo['userinfo']);

                    $collection->save($UserEntity);


                    $_SESSION['flashMessage'] = 'You have 1 affected row';
                    header("Location: index.php?c=loginuser&m=update&id=".$_GET['id']."");
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadFrontView('users/userpage',$data);

        }

        public function logout()
        {
            unset($_SESSION['user']);
            unset($_SESSION['logged_in']);
            header('Location: index.php?c=index&m=index');
        }

    }