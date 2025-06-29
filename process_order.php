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

// Retrieve order details from POST data or session
$order_details = isset($_SESSION['order_details']) && is_array($_SESSION['order_details']) ? $_SESSION['order_details'] : []; // Replace with your actual order data retrieval logic

// Save order information to database (if applicable)
// ...

// Send order confirmation email
if (!empty($order_details)) {
$mail = new PHPMailer(true);

$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;
$mail->Username = 'yemoe82003@gmail.com';
$mail->Password = 'ixnpfsbfdadvhebt';
$mail->SMTPSecure = 'ssl';
$mail->Port = 465;

$mail->setFrom('yemoe82003@gmail.com');
$mail->addAddress('yemoe82003@gmail.com');

$mail->isHTML(true);

$mail->Subject = 'New Order Placed';
    $mail->Body = 'Order Details: <br>' . implode('<br>', $order_details);

    if ($mail->send()) {
        // Redirect to order.php after sending the email
        header('Location: order.php');
        exit;
    } else {
        echo 'Something went wrong: ' . $mail->ErrorInfo;
    }
} else {
    echo 'No order details found.';
}
?>