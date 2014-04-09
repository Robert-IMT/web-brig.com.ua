<?php
$module = new Controller();
$module->Controll();
/*
echo '<PRE>';
print_r($module);
echo '</PRE>';

$module = array(
	'', 
	'page',
	'portfolio', 
	'gallery', 
	'library', 
	'requisites', 
        'contact', 
	'webdesign', 
	'imagedesign', 
	'polygraphy', 
	'sample', 
	'graphics', 
	'visualization', 
        'modeling', 
	'examples', 
	'article', 
	'book',
        'personal');
*/

if($_GET)
{
    $page = $_GET['page'];
    if (!array_search($page,$module))
    {
        $page = 'error';
    }
    $module = $_GET['module'];
}
else{
  $page = 'page';  
  $module = $_GET['module'];
}