<?php
    class LandmarkfrontController extends Controller{

        public function __construct()
        {
            parent::__construct();
        }

        public function index()
        {

            $data = array();

            $landmarkCollection = new LandmarksCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 4;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($landmarkCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/obshtina%20Perushtitsa%20-%20MVC/index.php?c=landmarkfront&m=index");

            $landmarks = $landmarkCollection->getAll(array(), $offset, $perPage);

            $data['landmarks'] = $landmarks;
            $data['pagination'] = $pagination;

            $this->loadFrontView('landmarks/listing',$data);

        }

        public function showOne(){

            $data = array();

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=landmarkfront&m=index');
            }

            $landmarkCollection = new LandmarksCollection();
            $landmark = $landmarkCollection->getOne($_GET['id']);

            if(is_null($landmark)) {
                header('Location: index.php?c=landmarkfront&m=index');
            }


            $landmarkImageCollection = new LandmarksImagesCollection();
            $landmarkImages = $landmarkImageCollection->getAllImgL($_GET['id']);
            $Image = $landmarkImageCollection->getOneImgL($_GET['id']);


            $data['landmark'] = $landmark;
            $data['Image'] = $Image;
            $data['landmarkImages'] = $landmarkImages;


            $this->loadFrontView('landmarks/showOne',$data);

        }

    }