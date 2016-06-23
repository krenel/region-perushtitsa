<?php
    class EuroprojectController extends Controller{

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

            $projectCollection = new EuroProjectsCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 5;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($projectCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/admin/index.php?c=europroject&m=index");

            $projects = $projectCollection->getAll(array(), $offset, $perPage);

            $data['projects'] = $projects;
            $data['pagination'] = $pagination;

            $this->loadView('europrojects/listing',$data);
        }

        public function create()
        {
            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $insertInfo = array(
                'projectName' => '',
                'fundingSource' => '',
                'cost' => '',
                'timeLine' => '',
                'description' => ''
            );

            $errors = array();
            if(isset($_POST['createProject'])) {

                $insertInfo = array(
                    'projectName' => (isset($_POST['projectName']))? $_POST['projectName'] : '',
                    'fundingSource' => (isset($_POST['fundingSource']))? $_POST['fundingSource'] : '',
                    'cost' => (isset($_POST['cost']))? $_POST['cost'] : '',
                    'timeLine' => (isset($_POST['timeLine']))? $_POST['timeLine'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : ''
                );

                if (empty($errors)) {

                    $projectEntity = new EuroProjectsEntity();

                    $projectEntity->setProjectname($insertInfo['projectName']);
                    $projectEntity->setFundingsource($insertInfo['fundingSource']);
                    $projectEntity->setCost($insertInfo['cost']);
                    $projectEntity->setTimeline($insertInfo['timeLine']);
                    $projectEntity->setDescription($insertInfo['description']);

                    $collection  = new EuroProjectsCollection();
                    $collection->save($projectEntity);

                    $_SESSION['flashMessage'] = 'You have 1 new admin';
                    header('Location: index.php?c=europroject&m=index');
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('europrojects/create',$data);
        }

        public function update()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $collection  = new EuroProjectsCollection();
            $project = $collection->getOne($_GET['id']);


            $insertInfo = array(
                'projectName' => $project->getProjectname(),
                'fundingSource' => $project->getFundingsource(),
                'cost' => $project->getCost(),
                'timeLine' => $project->getTimeline(),
                'description' => $project->getDescription()
            );

            $errors = array();
            if(isset($_POST['updateProject'])) {

                $insertInfo = array(
                    'projectName' => (isset($_POST['projectName']))? $_POST['projectName'] : '',
                    'fundingSource' => (isset($_POST['fundingSource']))? $_POST['fundingSource'] : '',
                    'cost' => (isset($_POST['cost']))? $_POST['cost'] : '',
                    'timeLine' => (isset($_POST['timeLine']))? $_POST['timeLine'] : '',
                    'description' => (isset($_POST['description']))? $_POST['description'] : ''
                );


                if (empty($errors)) {

                    $projectEntity = new EuroProjectsEntity();

                    $projectEntity->setId($_GET['id']);
                    $projectEntity->setProjectname($insertInfo['projectName']);
                    $projectEntity->setFundingsource($insertInfo['fundingSource']);
                    $projectEntity->setCost($insertInfo['cost']);
                    $projectEntity->setTimeline($insertInfo['timeLine']);
                    $projectEntity->setDescription($insertInfo['description']);

                    $collection->save($projectEntity);

                    $_SESSION['flashMessage'] = 'You have 1 new project';
                    header('Location: index.php?c=europroject&m=index');
                }
            }

            $data['insertInfo'] = $insertInfo;
            $data['errors'] = $errors;

            $this->loadView('europrojects/update',$data);

        }

        public function delete()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $table= 'europrojects';

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=europroject&m=index');
            }
            $projectCollection = new EuroProjectsCollection();
            $project = $projectCollection->getOne($_GET['id']);

            if(is_null($project)) {
                header('Location: index.php?c=europroject&m=index');
            }

            $projectCollection->delete($_GET['id']);
            header('Location: index.php?c=europroject&m=index');

        }

        public function seeProject(){

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            $projectCollection = new EuroProjectsCollection();
            $project = $projectCollection->getOne($_GET['id']);

            $data['project'] = $project;

            $this->loadView('europrojects/seeProject', $data);

        }

        public function projectImages(){

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            if (!isset($_GET['id'])) {
                header('Location: index.php?c=europroject&m=index');
            }

            $europrojectsCollection = new EuroProjectsCollection();
            $project = $europrojectsCollection->getOne($_GET['id']);

            if (is_null($project)) {
                header('Location: index.php?c=europroject&m=index');
            }

            $projectsImageCollection = new ProjectImagesCollection();
            $images = $projectsImageCollection->getAll(array('img_id' => $_GET['id']));

//            do tuk!

            $fileUpload = new FileUpload('image');
            $file = $fileUpload->getFilename();

            $fileExtention = $fileUpload->getFileExtention();

            $imageErrors = array();

            if ($file != '') {

                $imageErrors =  $fileUpload->validate();
                $newName = sha1(time()).'.'.$fileExtention;
                $insertInfo = array(
                    'img_id' => $_GET['id'],
                    'img' => $newName
                );

                if (empty($imageErrors)) {

                    $projectEntity = new ProjectImagesEntity();
                    $obj =  $projectEntity->init($insertInfo);
                    $projectsImageCollection->save($obj);

                    $fileUpload->upload('images/europrojects/'.$newName);

                    header("Location: index.php?c=europroject&m=projectImages&id=".$_GET['id']);
                }
            } else {

            }

            $data['imageErrors'] = $imageErrors;
            $data['images'] = $images;
            $data['Imgid'] = $_GET['id'];

            $this->loadView('europrojects/projectImages', $data);
        }

        public function deleteProjectImage()
        {

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=europroject&m=index');
            }

            $imageCollection = new ProjectImagesCollection();

            $image = $imageCollection->getOne($_GET['id']);

            if(is_null($image)) {
                header('Location: index.php?c=europroject&m=index');
            }

            $imgId = $image->getImgid();

            unlink('images/europrojects/'.$image->getImg());
            $imageCollection->delete($_GET['id']);

            header("Location: index.php?c=europroject&m=projectImages&id=".$imgId);

        }
    }