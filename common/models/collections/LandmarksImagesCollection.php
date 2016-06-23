<?php

    class LandmarksImagesCollection extends Collection{

        protected $entity = 'LandmarksImagesEntity';
        protected $table = 'landmarksimages';

        public function  save(Entity $entity)
        {
            $dataInput = array(
                'img' => $entity->getImg(),
                'landmarks_id' => $entity->getLandmarksId(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(), $dataInput);
            } else {
                $this->create($dataInput);
            }
        }

    }