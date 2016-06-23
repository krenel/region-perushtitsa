<?php

    class AdminCollection extends Collection{

        protected $entity = 'AdminEntity';
        protected $table = 'admin';

        public function save(Entity $entity)
        {
            $dataInput = array(
                'adname' => $entity->getAdname(),
                'password' => $entity->getPassword(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(), $dataInput);
            } else {
                $this->create($dataInput);
            }
        }


    }