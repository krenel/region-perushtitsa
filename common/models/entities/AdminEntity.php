<?php

    class AdminEntity extends Entity{

        protected $id;
        protected $adname;
        protected $password;

        /**
         * @return mixed
         */
        public function getPassword()
        {
            return $this->password;
        }

        /**
         * @param mixed $password
         */
        public function setPassword($password)
        {
            $this->password = $password;
        }

        /**
         * @return mixed
         */
        public function getAdname()
        {
            return $this->adname;
        }

        /**
         * @param mixed $adname
         */
        public function setAdname($adname)
        {
            $this->adname = $adname;
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