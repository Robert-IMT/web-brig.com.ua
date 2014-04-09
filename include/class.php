<?php
class Controller extends DB {
    public $data;
    
    public function __construct() 
    {
        parent::__construct();
    }
	
    function Controll()
    {
        $this->data = parent::Select('page');
    }
}