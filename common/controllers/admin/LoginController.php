<?php

class LoginController extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function login()
    {
        $data = array();


        $adminsCollection = new AdminCollection();

        $errors = array();

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['adname'])) {
                if (isset($_POST['adname']) && isset($_POST['password']) && strlen($_POST['adname']) > 3 && strlen($_POST['password']) > 3) {
                    $password = sha1($_POST['password']);

                    $username = htmlspecialchars(trim($_POST['adname']));
                    $where = array('adname' => $username);

                    $result = $adminsCollection->getAll($where);

                    if ($result != null && $result[0]->getPassword() == $password) {
                        $_SESSION['admin'] = $result[0];
                        $_SESSION['logged_in'] = 1;
                        header('Location: index.php?c=dashboard');
                    } else {
                        $errors['login'] = 'Wrong credentials';
                    }

                } else {
                    $errors['login'] = 'Wrong credentials';
                }
            }
        }

        $data['errors'] = $errors;


        $this->loadView('login', $data);
    }


    public function logout()
    {
        unset($_SESSION['admin']);
        unset($_SESSION['logged_in']);
        header('Location: index.php?c=login&m=login');
    }

}
