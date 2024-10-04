<?php
include 'product.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $product = Product::getProduct($id);
}

if (isset($_POST['ok'])) {
    $data = [
        'id' => $id,
        'name' => $_POST['name'],
        'price' => $_POST['price'],
        'count' => $_POST['count']
    ];

    if (Product::updateProduct($data)) {
        header("Location: index.php");
        exit();
    } else {
        echo "Error updating product.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Edit Product</h2>
        <form action="" method="post" class="p-3">
            <div class="mb-3">
                <label for="name" class="form-label">Product Name</label>
                <input type="text" name="name" class="form-control" id="name" value="<?= htmlspecialchars($product['name']) ?>" placeholder="Enter product name" required>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Product Price</label>
                <input type="text" name="price" class="form-control" id="price" value="<?= htmlspecialchars($product['price']) ?>" placeholder="Enter product price" required>
            </div>
            <div class="mb-3">
                <label for="count" class="form-label">Product Count</label>
                <input type="text" name="count" class="form-control" id="count" value="<?= htmlspecialchars($product['count']) ?>" placeholder="Enter product count" required>
            </div>
            <button type="submit" name="ok" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
