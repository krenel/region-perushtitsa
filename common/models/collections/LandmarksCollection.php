<?php

    class LandmarksCollection extends Collection{

        protected $entity = 'LandmarksEntity';
        protected $table = 'landmarks';

        public function save(Entity $entity)
        {
            $dataInput = array(
                'name' => $entity->getName(),
                'description' => $entity->getDescription(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(), $dataInput);
            } else {
                $this->create($dataInput);
            }
        }

    }