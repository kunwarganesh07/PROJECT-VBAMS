<?php
$check = mail('kunwarganesh2003@gmail.com', "Vehicle Assistance Request Received – ", "Dear Ganesh

We have received your vehicle assistance request and our team is currently processing it. 
please wait for Processed It.
Your Booking Number is ", "From:ganeshkunwar2003@gmail.com");

if ($check) {
    $error = "<p style='color:green;'>Email Sent Successfully</p>";
} else {
    $error = "<p style='color:red;'>Email Not Sent Successfully</p>";
}
?>