<?php

class NewsCollection extends Collection{

    protected $entity = 'NewsEntity';
    protected $table = 'news';

    public function save(Entity $entity)
    {
        $dataInput = array(
            'title' => $entity->getTitle(),
            'description' => $entity->getDescription(),
            'date' => $entity->getDate(),
        );

        if ($entity->getId() > 0) {
            $this->update($entity->getId(), $dataInput);
        } else {
            $this->create($dataInput);
        }
    }


}