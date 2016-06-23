<?php
    class UserController extends Controller{

        public function __construct()
        {
            parent::__construct();
        }

        public function index()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();
            $userCollection = new UserLIstCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 10;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($userCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/admin/index.php?c=user&m=index");

            $users = $userCollection->getAll(array(), $offset, $perPage);

            $data['users'] = $users;
            $data['pagination'] = $pagination;

            $this->loadView('users/listing',$data);
        }

        private function validateUserInput($input)
        {
            $errors = array();

            if(!isset($input['username']) || strlen(trim($input['username'])) < 3 || strlen(trim($input['username'])) > 255) {
                $errors['username'] = 'Incorrect username';
            }

            return $errors;
        }

        public function create()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $insertInfo = array(
                'username' => '',
                'password' => '',
                'email'    => '',
                'userinfo' => ''
            );

            $errors = array();

            if(isset($_POST['createUser'])) {

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

                    $_SESSION['flashMessage'] = 'You have 1 new user';
                    header('Location: index.php?c=user&m=index');
                }

            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('users/create',$data);
        }

        public function update()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
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

            if(isset($_POST['editUser'])) {

                $insertInfo = array(
                    'username' => (isset($_POST['username']))? $_POST['username'] : '',
                    'password' => (isset($_POST['password']))? $_POST['password'] : '',
                    'email'    => (isset($_POST['email']))? $_POST['email'] : '',
                    'userinfo' => (isset($_POST['userinfo']))? $_POST['userinfo'] : ''
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
                    header('Location: index.php?c=user&m=index');
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('users/update',$data);

        }

        public function delete()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $table = 'userlist';

            if(!isset($_GET['id'])) {
                header('Location: users.php');
            }


            $userlistCollection = new UserLIstCollection();
            $user = $userlistCollection->getOne($_GET['id']);

            if(is_null($user)) {
                header('Location: index.php?c=user&m=index');
            }

            $userlistCollection->delete($user->getId());
            header('Location: index.php?c=user&m=index');

        }

    }