<?php

require_once('../../Controller/WebappController.php');

use Controller\WebappController;

$controller = new WebappController;

$data = $controller->select('select * from languages', []);

var_dump($data->fetchAll());
