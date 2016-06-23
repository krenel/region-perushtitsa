<?php

    class ProjectImagesEntity extends Entity{

        protected $id;
        protected $imgid;
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
        public function getImgid()
        {
            return $this->imgid;
        }

        /**
         * @param mixed $imgid
         */
        public function setImgid($imgid)
        {
            $this->imgid = $imgid;
        }



    }