<?php
    class NewsController extends Controller {

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

            $newsCollection = new NewsCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 5;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($newsCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/admin/index.php?c=news&m=index");

            $news = $newsCollection->getAll(array(),$offset, $perPage);

            $data['news'] = $news;
            $data['pagination'] = $pagination;

            $this->loadView('news/listing', $data);
        }

        public function create()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $insertInfo = array(
                'title' => '',
                'description' => '',
            );

            $errors = array();
            if(isset($_POST['createNew'])) {

                $insertInfo = array(
                    'title' => (isset($_POST['title']))? $_POST['title'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : '',
                );

                if (empty($errors)) {

                    $newsEntity = new NewsEntity();

                    $newsEntity->setTitle($insertInfo['title']);
                    $newsEntity->setDescription($insertInfo['description']);

                    $date = getdate();
                    $newsEntity->setDate($date['mday'].".".$date['month'].".".$date['year']);

                    $collection  = new NewsCollection();
                    $collection->save($newsEntity);

                    $_SESSION['flashMessage'] = 'You have 1 new new';
                    header('Location: index.php?c=news&m=index');
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('news/create',$data);
        }

        public function update()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();
            $collection = new NewsCollection();
            $new = $collection->getOne($_GET['id']);


            $insertInfo = array(
                'title' => $new->getTitle(),
                'description' => $new->getDescription(),
            );

            $errors = array();
            if(isset($_POST['updateNew'])) {

                $insertInfo = array(
                    'title' => (isset($_POST['title']))? $_POST['title'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : '',
                );

                if (empty($errors)) {

                    $newsEntity = new NewsEntity();

                    $newsEntity->setId($_GET['id']);
                    $newsEntity->setTitle($insertInfo['title']);
                    $newsEntity->setDescription($insertInfo['description']);

                    $date = getdate();
                    $newsEntity->setDate($date['mday'].".".$date['month'].".".$date['year']);

                    $collection  = new NewsCollection();
                    $collection->save($newsEntity);

                    $_SESSION['flashMessage'] = 'You have 1 new new';
                    header('Location: index.php?c=news&m=index');
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('news/edit',$data);
        }

        public function delete()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=news&m=index');
            }

            $newsCollection = new NewsCollection();
            $new = $newsCollection->getOne($_GET['id']);

            if(is_null($new)) {
                header('Location: index.php?c=news&m=index');
            }

            $newsCollection->delete($_GET['id']);
            header('Location: index.php?c=news&m=index');

        }

    }