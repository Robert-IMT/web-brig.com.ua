<?php
class Page extends Menu {
    public $type;
    
    public function __construct($type) {
        parent::__construct();
        $this->type = $type;
    }
}