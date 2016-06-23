<?php
    class IndexController extends Controller{

        public function __construct()
        {
            parent::__construct();
        }

        public  function index()
        {
            $data = array();

            $landmarksCollection = new LandmarksCollection();
            $landmarks2 = $landmarksCollection->getAll(array(), 4, 0);

            $landmarksImagesCollection = new LandmarksImagesCollection();
            $landmarksImages = $landmarksImagesCollection->getAll(array(), 4 ,0);

            $newsCollection = new NewsCollection();
            $news = $newsCollection->getAll(array(), 3, 0);


            $data['landmarks2'] = $landmarks2;
            $data['landmarksImages'] = $landmarksImages;
            $data['news'] = $news;

            $this->loadFrontView('index',$data);
        }

        public function about()
        {

            $data = array();

            $this->loadFrontView('about',$data);

        }

        public function logout()
        {

            unset($_SESSION['user']);
            unset($_SESSION['logged_in']);
            //header('Location: index.php?c=login&m=login');

        }


    }