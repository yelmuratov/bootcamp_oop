<?php
include 'db.php';

class Student {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->conn;
    }

    public function create($fio, $tel, $manzil, $img) {
        $sql = "INSERT INTO students (fio, tel, manzil, img) VALUES (:fio, :tel, :manzil, :img)";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':fio', $fio);
        $stmt->bindParam(':tel', $tel);
        $stmt->bindParam(':manzil', $manzil);
        $stmt->bindParam(':img', $img);
        return $stmt->execute();
    }

    public function read() {
        $sql = "SELECT * FROM students";
        $stmt = $this->conn->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function update($id, $fio, $tel, $manzil, $img) {
        $sql = "UPDATE students SET fio = :fio, tel = :tel, manzil = :manzil, img = :img WHERE id = :id";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':fio', $fio);
        $stmt->bindParam(':tel', $tel);
        $stmt->bindParam(':manzil', $manzil);
        $stmt->bindParam(':img', $img);
        $stmt->bindParam(':id', $id);
        return $stmt->execute();
    }

    public function delete($id) {
        $sql = "DELETE FROM students WHERE id = :id";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':id', $id);
        return $stmt->execute();
    }

    public function getStudentById($id) {
        $sql = "SELECT * FROM students WHERE id = :id";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>
