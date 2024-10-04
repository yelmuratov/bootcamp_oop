<?php
    function dd(...$args) {
        echo "<pre>";
        die(var_dump($args));
        echo "</pre>";
    }
?>