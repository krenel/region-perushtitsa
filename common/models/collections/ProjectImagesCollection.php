<?php

    class ProjectImagesCollection extends Collection{

        protected $entity = 'ProjectImagesEntity';
        protected $table = 'projectimages';

        public function save(Entity $entity)
        {
            $dataInput = array(
                'img' => $entity->getImg(),
                'img_id' => $entity->getImgid(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(), $dataInput);
            } else {
                $this->create($dataInput);
            }
        }


    }