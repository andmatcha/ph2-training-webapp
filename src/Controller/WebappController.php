<?php

namespace Controller;

use Config\ConnectDatabase;

require_once('/var/www/Config/ConnectDatabase.php');

class WebappController extends ConnectDatabase
{
    public function select($sql, $values)
    {
        $statement = $this->connect()->prepare($sql);
        $statement->execute($values);
        return $statement;
    }
}
