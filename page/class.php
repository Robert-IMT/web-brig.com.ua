<?php
class Page extends Menu {
  public $type;
    
  public function __construct($type) {
    parent::__construct();
    $this->type = $type;
  }
	
  function Show() {
    if ($_GET['sub']) {
      $file = $this->type."/".$_GET['sub']."/".$_GET['sub'].'.php';
      $title = $_GET['sub'];
    }
    else {
      $file = $this->type."/".$this->type.'.php';
      $title = $this->type;
    }
    $this->data = parent::Select('page'); 
    foreach ($this->data as $kay => $val) {
      if ($val['name'] == $title) {
        break;                
      }
    }
    include 'template/header.tpl';
    if ($file != '/.php') {
      include $file;
    }
    include 'template/footer.tpl';
  }
}