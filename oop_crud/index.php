<?php
include 'Student.php';
$student = new Student();

if (isset($_POST['add'])) {
    $fio = $_POST['fio'];
    $tel = $_POST['tel'];
    $manzil = $_POST['manzil'];

    $img = $_FILES['img']['name'];
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($img);

    if (move_uploaded_file($_FILES['img']['tmp_name'], $target_file)) {
        $student->create($fio, $tel, $manzil, $img);
    }
}

$students = $student->read();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Talaba CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Talaba CRUD</h2>

    <!-- Talaba qo'shish formasi -->
    <div class="card">
        <div class="card-body">
            <form action="index.php" method="POST" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="fio" class="form-label">F.I.O</label>
                    <input type="text" class="form-control" name="fio" required>
                </div>
                <div class="mb-3">
                    <label for="tel" class="form-label">Telefon</label>
                    <input type="text" class="form-control" name="tel" required>
                </div>
                <div class="mb-3">
                    <label for="manzil" class="form-label">Manzil</label>
                    <input type="text" class="form-control" name="manzil" required>
                </div>
                <div class="mb-3">
                    <label for="img" class="form-label">Rasm yuklash</label>
                    <input type="file" class="form-control" name="img" required>
                </div>
                <button type="submit" class="btn btn-primary" name="add">Qo'shish</button>
            </form>
        </div>
    </div>

    <!-- Talabalar ro'yxati -->
    <div class="mt-5">
        <h3>Talabalar ro'yxati</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>F.I.O</th>
                    <th>Telefon</th>
                    <th>Manzil</th>
                    <th>Rasm</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($students as $student) : ?>
                    <tr>
                        <td><?= $student['id']; ?></td>
                        <td><?= $student['fio']; ?></td>
                        <td><?= $student['tel']; ?></td>
                        <td><?= $student['manzil']; ?></td>
                        <td><img src="uploads/<?= $student['img']; ?>" alt="" width="50"></td>
                        <td>
                            <a href="edit.php?id=<?= $student['id']; ?>" class="btn btn-warning">Tahrirlash</a>
                            <a href="delete.php?id=<?= $student['id']; ?>" class="btn btn-danger">O'chirish</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
