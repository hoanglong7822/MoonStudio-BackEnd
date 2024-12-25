<?php
namespace App\Services;
class ListService {
    public $list;
    public function __construct(UserService $list){
        $this->list = $list;
    }
    public function getList(){
        return $this->list->getName();
    }
}