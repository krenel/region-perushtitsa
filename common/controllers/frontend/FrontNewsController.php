<?php
    class FrontNewsController extends Controller {

        public function __construct()
        {
            parent::__construct();
        }

        public function index(){

            $data = array();

            $NewsCollection = new NewsCollection();

            $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
            $perPage = 5;
            $offset  = ($page) ? ($page-1) * $perPage : 0;

            $rows = count($NewsCollection->getAll(array(), -1, 0));

            $pagination = new Pagination();
            $pagination->setPerPage($perPage);
            $pagination->setTotalRows($rows);
            $pagination->setBaseUrl("http://localhost/obshtina%20Perushtitsa%20v2/index.php?c=FrontNews&m=index");

            $AllNews = $NewsCollection->getAll(array());

            $data['AllNews'] = $AllNews;
            $data['pagination'] = $pagination;

            $this->loadFrontView('news/listing',$data);


        }

        public function showOne(){

            $data = array();

            if(!isset($_GET['id'])) {
                header('Location: index.php?c=FrontNews&m=index');
            }

            $NewsCollection = new NewsCollection();
            $SingleNews = $NewsCollection->getOne($_GET['id']);

            if(is_null($SingleNews)) {
                header('Location: index.php?c=FrontNews&m=index');
            }

            $data['SingleNews'] = $SingleNews;

            $this->loadFrontView('news/showOne',$data);

        }
    }