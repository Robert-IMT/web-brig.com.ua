<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="template/css/style.css">
        <title>
<?php 
if (!empty($title) && $title != 'page')
    echo 'BRIg: '.$this->data[$kay]['title'];
else
    echo 'BRIg';
?>
        </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
<body>
    <header>
<!-- Header -->
<?php
if ($title == 'page')
{
?>
	<div id="header">
<?php
}
else
{
?>
	<div id="header" class="line">
<?php
}
?>
            <div class="mode">
                <a href="..
<?php
if ($_SERVER['REQUEST_URI'] == '/')
echo $_SERVER['REQUEST_URI'].'?';
else
echo $_SERVER['REQUEST_URI'].'&';
?>
res=hd" id="hd" title="HD режим" method="POST">HD</a>
                <a href="..
<?php
if ($_SERVER['REQUEST_URI'] == '/')
echo $_SERVER['REQUEST_URI'].'?';
else
echo $_SERVER['REQUEST_URI'].'&';
?>
res=lq" id="lq" title="LQ режим">LQ</a>
            </div>
<?php
if ($title != 'page')
{
?>
            <div class="name">
                Студия<br />
                web-дизайна &nbsp;
            </div>
<?php
}
?>
            <div class="personal">
            	<a href="../?page=personal" id="login" title="Вход">Вход</a>
                <!--
                <a href="../?page=logout" id="logout" title="Выход">Выход</a>
                -->
            </div>
        </div>
<?php
if ($title != 'page')
{
?>
        <div class="menu small">
<?php 
include 'menu/menu.php'; 
?>
        </div>
<?php
}
?>