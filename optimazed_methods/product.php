<?php
include 'db.php';
class Product extends DB
{
    public static $table = "products";
    public static function getProducts()
    {
        $stmt = self::connect()->prepare("SELECT * FROM products");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function createProduct($data)
    {
        $columns = implode(", ", array_keys($data));
        $values = ":" . implode(", :", array_keys($data));

        $stmt = self::connect()->prepare("INSERT INTO products ($columns) VALUES ($values)");
        if ($stmt->execute($data)) {
            return true;
        } else {
            return false;
        }
    }

    public static function getProduct($id)
    {
        $stmt = self::connect()->prepare("SELECT * FROM products WHERE id = :id");
        $stmt->execute(['id' => $id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function updateProduct($data)
    {
        $id = $data['id'];

        $columns = '';
        foreach ($data as $key => $value) {
            if ($key != 'id') {
                $columns .= $key . "=:" . $key . ", ";
            }
        }
        $columns = rtrim($columns, ", ");

        $stmt = self::connect()->prepare("UPDATE products SET $columns WHERE id = :id");

        $data['id'] = $id; 
        if ($stmt->execute($data)) {
            return true;
        } else {
            return false;
        }
    }


    public static function deleteProduct($id)
    {
        $stmt = self::connect()->prepare("DELETE FROM products WHERE id = :id");
        if ($stmt->execute(['id' => $id])) {
            return true;
        } else {
            return false;
        }
    }

    public static function search($name)
    {
        $stmt = self::connect()->prepare("SELECT * FROM products WHERE name LIKE :name");
        $stmt->execute(['name' => "%$name%"]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
