<?php
$personal = new Personal();
$personal->FormGenerated();
$personal = $personal->data;
include 'personal.tpl';