<?php

    class UserLIstCollection extends Collection{

        protected $entity = 'UserListEntity';
        protected $table = 'userlist';

        public function save(Entity $entity)
        {
            $dataInput = array(
                'username' => $entity->getUsername(),
                'password' => $entity->getPassword(),
                'email' => $entity->getEmail(),
                'userinfo' => $entity->getUserinfo(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(), $dataInput);
            } else {
                $this->create($dataInput);
            }
        }

    }