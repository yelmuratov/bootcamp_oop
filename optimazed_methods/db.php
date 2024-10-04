<?php
    class DB {
        private static $localhost = "localhost";
        private static $username = "root";
        private static $password = "";
        private static $dbname = "test";

        public static function connect() {
            return new PDO("mysql:host=".self::$localhost.";dbname=".self::$dbname, self::$username, self::$password);
        }
    }

        
?>