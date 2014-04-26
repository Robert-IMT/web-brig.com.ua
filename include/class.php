<?php
class Controller extends DB {
  public $data;
  public $filtered;

  public function __construct() {
    parent::__construct();
  }
	
  function Controll() {
    $this->data = parent::Select('page','name');
    for ($i=0; $i<count($array = $this->data); $i++) {
      $this->data[$i] = $array[$i]['name'];
    }
    array_unshift($this->data, '');
  }
  
  function Filter () {
    $this->filtered = array(
        "url" => 0,
        "regex" => array(
            1 => array("options" => array("regexp" => "(^\/$)")),
            2 => array("options" => array("regexp" => "(^\/\?[\w]{4,4}=[\w]{4,10}$)")),
            3 => array("options" => array("regexp" => "(^\/\?[\w]{4,4}=[\w]{4,10}&[\w]{3,3}=[\w]{4,13}$)")),
            4 => array("options" => array("regexp" => "(^[\w]{4,10}$)")),
            5 => array("options" => array("regexp" => "(^[\w]{3,13}$)")),
            6 => array("options" => array("regexp" => "(^hd|lq$)"))));
        return $this->filtered;
  }
}