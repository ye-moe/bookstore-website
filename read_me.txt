// error_reporting(E_ALL);
// ini_set('display_errors', 1);

// session_start();

//     include("connections.php");
//     include("functions.php");

//     $user_data = check_login($con);

//     if ($isset($_POST['submit'])) {
//         $name = $_POST['name'];
//         $subject = $_POST['subject'];
//         $mailFrom = $_POST['mail'];
//         $message = $_POST['message'];

//         $mailTo = "yemoe82003@gmail.com";
//         $headers = "From: " . $mailFrom;
//         $text = "You have received an email from " . $name . ".\n\n" . $message;

//         mail ($mailTo, $subject, $text, $headers);
//         header ("Location: contact.php?mailsend");
//     }