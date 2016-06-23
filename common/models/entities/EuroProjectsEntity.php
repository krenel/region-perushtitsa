<?php

    class EuroProjectsEntity extends Entity{

        protected $id;
        protected $projectname;
        protected $fundingsource;
        protected $cost;
        protected $timeline;
        protected $description;

        /**
         * @return mixed
         */
        public function getDescription()
        {
            return $this->description;
        }

        /**
         * @param mixed $description
         */
        public function setDescription($description)
        {
            $this->description = $description;
        }

        /**
         * @return mixed
         */
        public function getTimeline()
        {
            return $this->timeline;
        }

        /**
         * @param mixed $timeline
         */
        public function setTimeline($timeline)
        {
            $this->timeline = $timeline;
        }

        /**
         * @return mixed
         */
        public function getCost()
        {
            return $this->cost;
        }

        /**
         * @param mixed $cost
         */
        public function setCost($cost)
        {
            $this->cost = $cost;
        }

        /**
         * @return mixed
         */
        public function getFundingsource()
        {
            return $this->fundingsource;
        }

        /**
         * @param mixed $fundingsource
         */
        public function setFundingsource($fundingsource)
        {
            $this->fundingsource = $fundingsource;
        }

        /**
         * @return mixed
         */
        public function getProjectname()
        {
            return $this->projectname;
        }

        /**
         * @param mixed $projectname
         */
        public function setProjectname($projectname)
        {
            $this->projectname = $projectname;
        }

        /**
         * @return mixed
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * @param mixed $id
         */
        public function setId($id)
        {
            $this->id = $id;
        }



    }