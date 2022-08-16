<?php

namespace Config;

use PDO;

class ConnectDatabase
{
    const HOST = 'db';
    const DB_NAME = 'webapp';
    const CHARSET = 'utf8';
    const USER = 'root';
    const PASSWORD = 'password';

    public function connect()
    {
        try {
            $dsn = 'mysql:host=' . self::HOST . ';dbname=' . self::DB_NAME . ';charset=' . self::CHARSET;
            $user = self::USER;
            $password = self::PASSWORD;
            $pdo = new PDO($dsn, $user, $password, [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            ]);
        } catch (PDOException $e) {
            echo ('接続失敗' . $e->getMessage());
            exit();
        }
        return $pdo;
    }
}
