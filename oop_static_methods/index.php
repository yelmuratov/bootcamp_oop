<?php
include 'db.php';

class Products extends DB
{
    
    protected static $table_name = "categories";
   

    public static function getAll()
    {
        $query = "SELECT * FROM " . self::$table_name;
        $stmt = self::connect()->prepare($query);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        return $stmt->fetchAll();
    }

    public static function create($name, $or, $active)
    {
        $query = "INSERT INTO " . self::$table_name . "(name,or,active) VALUES(:name,:or,:active)";
        $stmt = self::connect()->prepare($query);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':or', $or);
        $stmt->bindParam(':active', $active);
        return $stmt->execute();
    }

    public static function update($id, $name, $or, $active)
    {
        $query = "UPDATE " . self::$table_name . " SET name=:name,or=:or,active=:active WHERE id=:id";
        $stmt = self::connect()->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':or', $or);
        $stmt->bindParam(':active', $active);
        return $stmt->execute();
    }

    public static function delete($id)
    {
        $query = "DELETE FROM " . self::$table_name . " WHERE id=:id";
        $stmt = self::connect()->prepare($query);
        $stmt->bindParam(':id', $id);
        return $stmt->execute();
    }

    public static function where($field, $value)
    {
        $query = "SELECT * FROM " . self::$table_name . " WHERE " . $field . "=:value";
        $stmt = self::connect()->prepare($query);
        $stmt->bindParam(':value', $value);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        return $stmt->fetchAll();
    }

    public static function find($id)
    {
        $query = "SELECT * FROM " . self::$table_name . " WHERE id=:id";
        $stmt = self::connect()->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        return $stmt->fetch();
    }
}

Products::delete(25);
echo "<h1>HeLLO WORLD</h1> <br>";
print_r(Products::where('id', 26));

echo "h1>HeLLO WORLD</h1>";
print_r(Products::find(26));


echo '<pre>';
print_r(Products::getAll());
echo '</pre>';
