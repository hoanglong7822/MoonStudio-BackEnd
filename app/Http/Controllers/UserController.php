<?php

namespace App\Http\Controllers;
use App\Services\ListService;
class UserController extends Controller
{
    public $User;
    public function __construct(ListService $User)
    {
        $this->User = $User;
    }
    public function index(){
        return $this->User->getList();
    }
}
