<?php
$module = new Controller();
$module->Controll();
$module = $module->data;

if($_GET['page'])
{
    $page = $_GET['page'];
    if ($page == 'logout')
    {
        setcookie ('web-brig','',time()-3600);
        unset($_SESSION['username']);
        session_destroy();
        header("Refresh: 1, url=http://".$_SERVER['HTTP_HOST']."/index.php");
        die();
    }
    elseif (!array_search($page, $module))
    {
        $page = 'error';
    }
}
else
{  
    $page = 'page';
}