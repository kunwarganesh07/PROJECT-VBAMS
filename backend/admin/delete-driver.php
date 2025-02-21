<?php
include('../includes/dbconnection.php');
$id = $_GET['id'];
$query = "DELETE FROM tbldriver WHERE id=$id";
$result = $conn->query($query);
header('location:manage-driver.php');
?>