<?php
include 'Student.php';
$student = new Student();

if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $fio = $_POST['fio'];
    $tel = $_POST['tel'];
    $manzil = $_POST['manzil'];

    // Rasmni yuklash jarayoni
    $img = $_FILES['img']['name'];
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($img);

    if (move_uploaded_file($_FILES['img']['tmp_name'], $target_file)) {
        $student->update($id, $fio, $tel, $manzil, $img);
    }
    header("Location: index.php");
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $studentData = $student->getStudentById($id);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Talaba Tahrirlash</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Talaba Tahrirlash</h2>
    <div class="card">
        <div class="card-body">
            <form action="edit.php?id=<?= $studentData['id']; ?>" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<?= $studentData['id']; ?>">
                <div class="mb-3">
                    <label for="fio" class="form-label">F.I.O</label>
                    <input type="text" class="form-control" name="fio" value="<?= $studentData['fio']; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="tel" class="form-label">Telefon</label>
                    <input type="text" class="form-control" name="tel" value="<?= $studentData['tel']; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="manzil" class="form-label">Manzil</label>
                    <input type="text" class="form-control" name="manzil" value="<?= $studentData['manzil']; ?>" required>
                </div>
                <div class="mb-3">
                    <label for="img" class="form-label">Rasm</label>
                    <input type="file" class="form-control" name="img">
                    <img src="uploads/<?= $studentData['img']; ?>" alt="" width="100">
                </div>
                <button type="submit" class="btn btn-success" name="update">Yangilash</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
