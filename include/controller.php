<?php
$module = new Controller();
$module->Controll();
$module = $module->data;
$fltr = new Controller();
$fltr->Filter();
$fltr = $fltr->filtered;

/* проверка на соответствие шаблону html адреса */
for ($i=1; $i<=3; $i++) {
  if (filter_input(INPUT_SERVER, 'REQUEST_URI', FILTER_VALIDATE_REGEXP, $fltr['regex'][$i])) {
    $fltr['url'] = $i;
  }
}
/* проверка валидности типа страницы */
$page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_REGEXP, $fltr['regex'][4]);
$sub = filter_input(INPUT_GET, 'sub', FILTER_VALIDATE_REGEXP, $fltr['regex'][5]);
if ($fltr['url']) {
  if(isset($page)) {
    if (!array_search($page, $module)) {
      $page = 'error';
    }
    if (isset($sub)) {
      if (!array_search($sub, $module)) {
        $page = 'error';
      }    
      if (array_search($sub, $module)) {
        if ($sub == 'login') { // вход
          session_start();
        }
        if ($sub == 'logout') { // выход
          setcookie ('web-brig','',time()-3600);
          unset($_SESSION['username']);
          session_destroy();
          header("Refresh: 1, url=http://".$_SERVER['HTTP_HOST']."/index.php");
          die();
        }     
      }
    }
  }
}
else {
  $page = 'error';
}

/* проверка и создание/удаление cookie для заднего фона */
$res = filter_input(INPUT_POST, 'res', FILTER_VALIDATE_REGEXP, $fltr['regex'][6]);
if ($res) {
  if ($res == 'hd') {
    setcookie ('web-brig[res]','hd');
  }
  if ($res == 'lq') {
    setcookie ('web-brig[res]','',time()-3600);
  }
}

/*
/
/?page=page
/?page=portfolio
/?page=portfolio&sub=webdesign
/?page=portfolio&sub=imagedesign
/?page=portfolio&sub=polygraphy
/?page=portfolio&sub=sample
/?page=gallery
/?page=gallery&sub=graphics
/?page=gallery&sub=visualization
/?page=gallery&sub=modeling
/?page=library       
/?page=library&sub=examples       
/?page=library&sub=article       
/?page=library&sub=book
/?page=requisites
/?page=contact
/?page=personal
/?page=personal&sub=login
/?page=personal&sub=logout
/?page=personal&sub=registered
*/