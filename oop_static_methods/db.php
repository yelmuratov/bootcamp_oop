<?php
class DB
{
    protected static $host = "localhost";
    protected static $db_name = "e-commerce";
    protected static $username = "root";
    protected static $password = "";

    public static function connect()
    {
        try {
            $conn = new PDO("mysql:host=" . self::$host . ";dbname=" . self::$db_name, self::$username, self::$password);
            return $conn;
        } catch (PDOException $e) {
            echo "Connection error: " . $e->getMessage();
        }
    }
}
