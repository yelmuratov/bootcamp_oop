<?php
include 'product.php';

    if($_GET['id']) {
        $id = $_GET['id'];
        if(Product::deleteProduct($id)) {
            header("Location: index.php");
        }else {
            echo "Failed to delete product";
        }
    }
?>