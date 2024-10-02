<?php
include 'Student.php';
$student = new Student();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $student->delete($id);
}

header("Location: index.php");
?>
