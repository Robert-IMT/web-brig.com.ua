<?php
$module = new Controller();
$module->Controll();
$module = $module->data;

if($_GET['page'])
{
    $page = $_GET['page'];
    if (!array_search($page, $module))
    {
        $page = 'error';
    }
}
else
{  
    $page = 'page';
}