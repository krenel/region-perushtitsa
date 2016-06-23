<?php
    class LandmarkController extends Controller{

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

            $landmarkCollection = new LandmarksCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 5;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($landmarkCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/admin/index.php?c=landmark&m=index");

            $landmarks = $landmarkCollection->getAll(array(), $offset, $perPage);

            $data['landmarks'] = $landmarks;
            $data['pagination'] = $pagination;

            $this->loadView('landmarks/listing',$data);
        }

        public function create()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $insertInfo = array(
                'name' => '',
                'description' => '',
            );
            $errors = array();
            if(isset($_POST['createLandmark'])) {

                $insertInfo = array(
                    'name' => (isset($_POST['name']))? $_POST['name'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : '',
                );

                if (empty($errors)) {

                    $landmarkEntity = new LandmarksEntity();
                    $landmarkEntity->setName($insertInfo['name']);
                    $landmarkEntity->setDescription($insertInfo['description']);

                    $collection = new LandmarksCollection();
                    $collection->save($landmarkEntity);

                    $_SESSION['flashMessage'] = 'You have 1 new user';
                    header('Location: index.php?c=landmark&m=index');
                }


            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('landmarks/create', $data);

        }

        public function update()
        {

            $landmarkCollection = new LandmarksCollection();
            $landmark = $landmarkCollection->getOne($_GET['id']);

            $insertInfo = array(
                'name' => $landmark->getName(),
                'description' => $landmark->getDescription(),
            );

            $errors = array();

            if(isset($_POST['editLandmark'])) {

                $insertInfo = array(
                    'name' => (isset($_POST['name']))? $_POST['name'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : '',
                );


                if (empty($errors)) {

                    $landmarkEntity = new LandmarksEntity();
                    $landmarkEntity->setId($_GET['id']);
                    $landmarkEntity->setName($insertInfo['name']);
                    $landmarkEntity->setDescription($insertInfo['description']);

                    $collection = new LandmarksCollection();
                    $collection->save($landmarkEntity);
                }

                $_SESSION['flashMessage'] = 'You have 1 affected row';
                header('Location: index.php?c=landmark&m=index');

            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('landmarks/update', $data);

        }

        public function  delete()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=landmark&m=index');
            }

            $landmarkCollection = new LandmarksCollection();
            $landmark = $landmarkCollection->getOne($_GET['id']);

            if(is_null($landmark)) {
                header('Location: index.php?c=landmark&m=index');
            }

            $landmarkCollection->delete($landmark->getId());
            header('Location: index.php?c=landmark&m=index');

        }

        public function landmarksImages(){

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            if (!isset($_GET['id'])) {
                header('Location: index.php?c=landmark&m=index');
            }

            $landmarkCollection = new LandmarksCollection();
            $landmark = $landmarkCollection->getOne($_GET['id']);

            if (is_null($landmark)) {
                header('Location: index.php?c=landmark&m=index');
            }

            $landmarksImageCollection = new LandmarksImagesCollection();
            $landmarksImages = $landmarksImageCollection->getAll(array('landmarks_id' => $_GET['id']));

//            do tuk!

            $fileUpload = new FileUpload('landmarkimage');
            $file = $fileUpload->getFilename();

            $fileExtention = $fileUpload->getFileExtention();

            $imageErrors = array();

            if ($file != '') {

                $imageErrors =  $fileUpload->validate();
                $newName = sha1(time()).'.'.$fileExtention;
                $insertInfo = array(
                    'landmarks_id' => $_GET['id'],
                    'img' => $newName
                );

                if (empty($imageErrors)) {

                    $landmarkEntity = new LandmarksImagesEntity();
                    $obj =  $landmarkEntity->init($insertInfo);

                    $landmarksImageCollection->save($obj);

                    $fileUpload->upload('images/landmarks/'.$newName);

                    header("Location: index.php?c=landmark&m=landmarksImages&id=".$_GET['id']);
                }
            } else {

            }

            $data['imageErrors'] = $imageErrors;
            $data['landmarksImages'] = $landmarksImages;
            $data['LandmarksId'] = $_GET['id'];

            $this->loadView('landmarks/landmarksImages', $data);

        }

        public function deleteLandmarkImage()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=landmark&m=index');
            }

            $landmarkImageCollection = new LandmarksImagesCollection();

            $landmarkImage = $landmarkImageCollection->getOne($_GET['id']);

            if(is_null($landmarkImage)) {
                header('Location: index.php?c=landmark&m=index');
            }

            $imgId = $landmarkImage->getLandmarksid();

            unlink('images/landmarks/'.$landmarkImage->getImg());
            $landmarkImageCollection->delete($_GET['id']);

            header("Location: index.php?c=landmark&m=landmarksImages&id=".$imgId);

        }

    }