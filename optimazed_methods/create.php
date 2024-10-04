<?php
include 'product.php';

    if(isset($_POST['ok'])) {
        $data = [
            'name' => $_POST['name'],
            'price' => $_POST['price'],
            'count' => $_POST['count']
        ];
        if(Product::createProduct($data)) {
            header("Location: index.php");
        }else {
            echo "Error";
        }
    }
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Product create</h1>
        <a href="index.php" class="btn btn-primary">Products</a>
        <form method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="text" class="form-control" id="price" name="price">
            </div>
            <div class="mb-3">
                <label for="count" class="form-label">Count</label>
                <input type="text" class="form-control" id="count" name="count">
            </div>
            <button type="submit" name="ok" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>

</html>