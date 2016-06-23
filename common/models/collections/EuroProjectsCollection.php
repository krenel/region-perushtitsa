<?php

    class EuroProjectsCollection extends Collection{

        protected $entity = 'EuroProjectsEntity';
        protected $table = 'europrojects';

        public function save(Entity $entity)
        {
            $dataInput = array(
                'projectName' => $entity->getProjectname(),
                'fundingSource' => $entity->getFundingsource(),
                'cost' => $entity->getCost(),
                'timeLine' => $entity->getTimeline(),
                'description' => $entity->getDescription(),
            );

            if ($entity->getId() > 0) {
                $this->update($entity->getId(),$dataInput );
            } else {
                $this->create($dataInput);
            }
        }

    }