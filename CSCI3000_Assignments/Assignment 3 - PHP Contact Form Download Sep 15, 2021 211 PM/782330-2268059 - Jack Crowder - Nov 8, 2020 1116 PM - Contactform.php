<?php
 if ($_SERVER["REQUEST_METHOD"]=="POST"){
     $name = $_POST['Full Name'];
     $subject = $_POST['Subject'];
     $mail = $_POST['E-Mail'];
     $phone = $_POST['Your Number'];
     $message = $_POST['Message'];

     $mailTo = "abc@gmail.com";
     $headers = "From: ".$mail;
     $txt = "Email from ".$name."\n\n".$message."\n\n".$phone;

     mail($mailTo, $subject, $txt, $headers );


 }
 echo "Thank you, and here is your submission: ";
 echo "<pre>";
    print_r($_POST);

    echo '</pre>'
 ?>


