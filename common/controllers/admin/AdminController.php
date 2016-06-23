<?php

class AdminController extends Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        if (!$this->loggedIn()) {
            header('Location: index.php?c=login&m=login');
        }

        $adminCollection = new AdminCollection();

        $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
        $perPage = 10;
        $offset  = ($page) ? ($page-1) * $perPage : 0;

        $rows = count($adminCollection->getAll(array(), -1, 0));

        $pagination = new Pagination();
        $pagination->setPerPage($perPage);
        $pagination->setTotalRows($rows);
        $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/admin/admin.php?c=admin&m=index");

        $admins = $adminCollection->getAll(array(), $offset, $perPage);

        $data['admins'] = $admins;
        $data['pagination'] = $pagination;


        $this->loadView('admins/listing', $data);

    }

    public function create()
    {
        if (!$this->loggedIn()) {
            header('Location: index.php?c=login&m=login');
        }

        $data = array();

        $insertInfo = array(
            'adname' => '',
            'password' => '',
        );
        $errors = array();
        if(isset($_POST['createAdmin'])) {

            $insertInfo = array(
                'adname' => (isset($_POST['adname']))? $_POST['adname'] : '',
                'password' => (isset($_POST['password']))? $_POST['password'] : '',
            );

            $errors = $this->validateAdminInput($insertInfo);

            if (empty($errors)) {

                $userEntity = new AdminEntity();
                $userEntity->setAdname($insertInfo['adname']);
                $userEntity->setPassword($insertInfo['password']);

                $collection = new AdminCollection();
                $collection->save($userEntity);

                $_SESSION['flashMessage'] = 'You have 1 new user';
                header('Location: index.php?c=admin&m=index');
            }


        }

        $data['insertInfo'] = $insertInfo;
        $data['errors'] = $errors;

        $this->loadView('admins/create', $data);
    }

    public function delete()
    {
        if (!$this->loggedIn()) {
            header('Location: index.php?c=login&m=login');
        }

        if(!isset($_GET['id'])) {
            header('Location: index.php?c=admin&m=index');
        }

        $adminCollection = new AdminCollection();
        $admin = $adminCollection->getOne($_GET['id']);

        if(is_null($admin)) {
            header('Location: index.php?c=admin&m=index');
        }

        $adminCollection->delete($admin->getId());
        header('Location: index.php?c=admin&m=index');
    }

    private function validateAdminInput($input)
    {
        $errors = array();

        if(!isset($input['adname']) || strlen(trim($input['adname'])) < 3 || strlen(trim($input['adname'])) > 255) {
            $errors['adname'] = 'Incorrect username';
        }

        return $errors;
    }

    public function update()
    {
        $adminCollection = new AdminCollection();
        $admin = $adminCollection->getOne($_GET['id']);

        $insertInfo = array(
            'adname' => $admin->getAdname(),
            'password' => '',
        );

        $errors = array();

        if(isset($_POST['editAdmin'])) {

            $insertInfo = array(
                'adname' => (isset($_POST['adname']))? $_POST['adname'] : '',
                'password' => (isset($_POST['password']))? $_POST['password'] : '',
            );

            $errors = $this->validateAdminInput($insertInfo);

            if (empty($errors)) {

                $adminEntity = new AdminEntity();
                $adminEntity->setId($_GET['id']);
                $adminEntity->setAdname($insertInfo['adname']);
                $adminEntity->setPassword(sha1($insertInfo['password']));

                $collection = new AdminCollection();
                $collection->save($adminEntity);
            }

            $_SESSION['flashMessage'] = 'You have 1 affected row';
            header('Location: index.php?c=admin&m=index');

        }

        $data['insertInfo'] = $insertInfo;
        $data['errors'] = $errors;

        $this->loadView('admins/update', $data);
    }
}