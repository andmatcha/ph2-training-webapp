<?php

use Controller\WebappController;

require_once('../../Controller/WebappController.php');

$controller = new WebappController;

$data = $controller->select('select * from languages', []);

var_dump($data->fetchAll());
