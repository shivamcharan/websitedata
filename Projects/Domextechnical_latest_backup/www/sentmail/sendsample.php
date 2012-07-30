<?php

 $to = "ashishsinghkaushal@gmail.com";
 $to1="ashishsinghmca2k8@gmail.com";
 
 
 
 $first_name = $_POST['name']; // required
							$phone = $_POST['mobile']; // required
							$email_from = $_POST['email']; // required
							
  
    $from = $_POST['email'];
    $subject = "Hello!   ". $first_name . "I have downloaded trial pdf... want to contact with us."; 
    
    
    //begin of HTML message
    
    $email_message1 = "Form details below.\n\n";
							
							function clean_string($string) {
							  $bad = array("content-type","bcc:","to:","cc:","href");
							  return str_replace($bad,"",$string);
							}
    
    
    
    $email_message1 .= "First Name: ".clean_string($first_name)."\n";
							$email_message1 .= "Phone: ".clean_string($phone)."\n";
							$email_message1 .= "Email: ".clean_string($email_from)."\n";
							
   //end of message
    $headers  = "From: $from\r\n";
    $headers .= "Content-type: text/html\r\n";
 
 
 
 
$fileatt = "Chemical_Projects_December_5_2011.pdf"; // Path to the file 
$fileatt_type = "application/pdf"; // File Type 
$fileatt_name = "Chemical_Projects_December_5_2011.pdf"; // Filename that will be used for the file as the attachment 

$email_from = "enquiries@domextechnical.com"; // Who the email is from 
$email_subject = "Your attached file"; // The Subject of the email 
$email_message = "Thanks for visiting www.domexinfo.in! Here is your free file.<br>";
$email_message .= "Thanks for visiting.<br>"; // Message that the email has in it 

$email_to = $_POST['email']; // Who the email is to 

$headers = "From: ".$email_from; 

$file = fopen($fileatt,'rb'); 
$data = fread($file,filesize($fileatt)); 
fclose($file); 

$semi_rand = md5(time()); 
$mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 

$headers .= "\nMIME-Version: 1.0\n" . 
"Content-Type: multipart/mixed;\n" . 
" boundary=\"{$mime_boundary}\""; 

$email_message .= "This is a multi-part message in MIME format.\n\n" . 
"--{$mime_boundary}\n" . 
"Content-Type:text/html; charset=\"iso-8859-1\"\n" . 
"Content-Transfer-Encoding: 7bit\n\n" . 
$email_message .= "\n\n"; 

$data = chunk_split(base64_encode($data)); 

$email_message .= "--{$mime_boundary}\n" . 
"Content-Type: {$fileatt_type};\n" . 
" name=\"{$fileatt_name}\"\n" . 
//"Content-Disposition: attachment;\n" . 
//" filename=\"{$fileatt_name}\"\n" . 
"Content-Transfer-Encoding: base64\n\n" . 
$data .= "\n\n" . 
"--{$mime_boundary}--\n"; 

$ok = @mail($email_to, $email_subject, $email_message, $headers); 
 mail($to, $subject, $email_message1, $headers);
 


if($ok) { 
echo "<font face=verdana size=3 font color=#d81b21><center>You file has been sent<br> to the email address you specified.<br> 
Make sure to check your junk mail!<br>
Click <a href=\"http://domexinfo.in/demo/details/chemical.htm\" onclick=\"history.back();\">here</a> to return to Domexinfo.in</center>";

} else { 
die("Sorry but the email could not be sent. Please go back and try again!"); 
} 



?>
