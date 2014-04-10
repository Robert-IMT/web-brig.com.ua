<?php
class Controller extends DB {
    public $data;
    
    public function __construct() 
    {
        parent::__construct();
    }
	
    function Controll()
    {
        $this->data = parent::Select('page','name');
        for ($i=0; $i<count($array = $this->data); $i++)
        {
            $this->data[$i] = $array[$i]['name'];
        }
        array_unshift($this->data, '');
    }
}