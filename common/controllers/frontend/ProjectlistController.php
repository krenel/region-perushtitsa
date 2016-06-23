<?php

    class ProjectlistController extends Controller{

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
            $perPage = 3;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($projectCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/region%20Perushtitsa/index.php?c=projectlist&m=index");

            $projects = $projectCollection->getAll(array(), $offset, $perPage);

            //new

            $data['projects'] = $projects;
            $data['pagination'] = $pagination;

            $this->loadFrontView('projects/listing',$data);

        }


        public function showOne(){

            if (!$this->loggedIn()) {
                header('Location: index.php?c=login&m=login');
            }

            $data = array();

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=europroject&m=listing');
            }
            $projectCollection = new EuroProjectsCollection();
            $project = $projectCollection->getOne($_GET['id']);

            if(is_null($project)) {
                header('Location: index.php?c=europroject&m=listing');
            }

            $projectImageCollection = new ProjectImagesCollection();
            $projectImages = $projectImageCollection->getAllImg($_GET['id']);
            $Image = $projectImageCollection->getOneImg($_GET['id']);


            $data['project'] = $project;
            $data['Image'] = $Image;
            $data['projectImages'] = $projectImages;

            $this->loadFrontView('projects/showOne',$data);
        }
    }