<?php
class Personal extends Menu {
    public $data;
    
    public function __construct() {
        parent::__construct();
    }
    
    function FormGenerated ()
    {
        $this->data = parent::Select('regform');
        $form = $this->data;
        echo '<div class="regform"><form class="form-vertical" method="POST" action="">';
        for ($i=0;$i<count($form)-1;$i++)
        {
            echo '<input type="'.$form[$i]['type'].'" name="'.$form[$i]['name'].'" placeholder="'
                    .$form[$i]['placeholder'].'" '.$form[$i]['required'].' pattern="'.$form[$i]['pattern']
                    .'">  '.$form[$i]['coment'];
            if ($form[$i]['required'] == 'required')
            {
                echo ' *';
            }
            echo '</br>';
        }
        echo '</form></div>';
        $this->data = $form[$i];
    }   
    
    function Verification() 
    {
        $this->data = parent::Select('personal');
    }
}

