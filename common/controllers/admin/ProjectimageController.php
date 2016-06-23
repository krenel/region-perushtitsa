<?php
    class ProjectimageController extends Controller{

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
            $project = $projectCollection->getOne($_GET['id']);

            if(is_null($project)) {
                header('Location: index.php?c=project&m=index');
            }

            $imageCollection = new ProjectImagesCollection();
            $images = $imageCollection->getAll(array('img_id' => $_GET['id']));

            $fileUpload = new FileUpload('img');
            $file = $fileUpload->getFilename();

            $fileExtention = $fileUpload->getFileExtention();

            $imageErrors = array();

            if ($file != '') {

                $imageErrors =  $fileUpload->validate();
                $newName = sha1(time()).'.'.$fileExtention;
                $insertInfo = array(
                    'img_id' => $_GET['id'],
                    'img' => $newName,
                );

                if (empty($imageErrors)) {
                    $imageEntity = new ProjectImagesEntity();
                    $obj =  $imageEntity->init($insertInfo);

                    $fileUpload->upload('images/europrojects/'.$newName);

                    $imageCollection->save($obj);

                    header("Location: index.php?c=projectimage&m=index&id=".$_GET['id']);
                }
            }

            $data['images'] = $images;
            $data['imagesErrors'] = $imageErrors;

            $this->loadView('projectimages/listing', $data);

        }

    }