<?php

    class LandmarksImagesEntity extends Entity{

        protected $id;
        protected $landmarksid;
        protected $img;

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

        /**
         * @return mixed
         */
        public function getImg()
        {
            return $this->img;
        }

        /**
         * @param mixed $img
         */
        public function setImg($img)
        {
            $this->img = $img;
        }

        /**
         * @return mixed
         */
        public function getLandmarksid()
        {
            return $this->landmarksid;
        }

        /**
         * @param mixed $landmarksid
         */
        public function setLandmarksid($landmarksid)
        {
            $this->landmarksid = $landmarksid;
        }

    }