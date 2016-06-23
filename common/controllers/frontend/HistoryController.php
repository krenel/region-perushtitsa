<?php
    class HistoryController extends Controller{

        public function __construct()
        {
            parent::__construct();
        }

        public function history()
        {
            $data = array();

            $this->loadFrontView('history/history',$data);
        }

        public function page1()
        {
            $data = array();

            $this->loadFrontView('history/page1',$data);
        }

        public function page2()
        {
            $data = array();

            $this->loadFrontView('history/page2',$data);
        }

        public function page3()
        {
            $data = array();

            $this->loadFrontView('history/page3',$data);
        }
    }