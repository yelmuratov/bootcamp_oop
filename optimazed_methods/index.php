<?php
include 'product.php';
include 'helpers.php';

$products = Product::getProducts();

if(isset($_GET['ok'])) {
    $search = $_GET['search'];
    $products = Product::search($search);
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
        <h1>Products</h1>
        <a href="create.php" class="btn btn-primary">Create</a>
        <!-- search bar -->
        <form method="get" class="mt-3">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search" name="search">
                <button class="btn btn-outline-secondary" name="ok" type="submit">Search</button>
            </div>
        </form>
        <table class="table mt-2">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Count</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($products as $product) {
                ?>
                    <tr>
                        <th scope="row"><?php echo $product['id']; ?></th>
                        <td><?php echo $product['name']; ?></td>
                        <td><?php echo $product['price']; ?></td>
                        <td><?php echo $product['count']; ?></td>
                        <td>
                            <a href="update.php?id=<?php echo $product['id']; ?>" class="btn btn-warning">Update</a>
                            <a href="delete.php?id=<?php echo $product['id']; ?>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>