<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

include("connections.php");
include("functions.php");

$user_data = check_login($con);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Include PHPMailer autoload file
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

if (isset($_POST["send"])) {
    $mail = new PHPMailer(true);

    $mail -> isSMTP();
    $mail -> Host = 'smtp.gmail.com';
    $mail -> SMTPAuth = true;
    $mail -> Username = 'yemoe82003@gmail.com';
    $mail -> Password = 'ixnpfsbfdadvhebt';
    $mail -> SMTPSecure = 'ssl';
    $mail -> Port = 465;

    // Set the "From" address to your email address
    $mail -> setFrom('yemoe82003@gmail.com');

    // Set the "Reply-To" address to the user's email address
    $mail->addReplyTo($_POST['email']);

    // echo "Recipient Email Address: " . $_POST['email'] . "<br>";
    $mail -> addAddress($_POST['email']);

    // echo "Recipient Email Address: yemoe82003@gmail.com<br>";
    // $mail->addAddress('yemoe82003@gmail.com');

    $mail -> isHTML(true);

    $mail -> Subject = $_POST['subject'];
    $mail -> Body = $_POST['message'];

    if ($mail -> send()) {
        $status = "success";
        $response = "Email is sent!";
    } else {
        $status = "failed";
        $response = "Something is wrong: <br>" . $mail -> ErrorInfo;
    }

    echo 
        "<script>
            alert('Email is sent!')
            document.location.href = 'about.php';
        </script>";
}


?>