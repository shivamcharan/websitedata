<?php

/**
 * @author 
 * @copyright 2011
 */
 
  $to1 = "domexbusiness@gmail.com";
   $to2 = "sujala@domexinfo.in";
   $to3 = "anuradha@domexinfo.in";
  	$first_name = $_POST['name']; // required
							$phone = $_POST['phone']; // required
							$email_from = $_POST['email']; // required
							$address = $_POST['address']; // not required
							$comment = $_POST['comment']; // not required
  
    $from = $_POST['email'];
    $subject = "Hello!". $first_name . " want to contact with us."; 
    
    
    //begin of HTML message
    
    $email_message = "Form details below.\n\n";
							
							function clean_string($string) {
							  $bad = array("content-type","bcc:","to:","cc:","href");
							  return str_replace($bad,"",$string);
							}
    
    
    
    $email_message .= "First Name: ".clean_string($first_name)."\n";
							$email_message .= "Phone: ".clean_string($phone)."\n";
							$email_message .= "Email: ".clean_string($email_from)."\n";
							$email_message .= "address: ".clean_string($address)."\n";							
							$email_message .= "Comments: ".clean_string($comment)."\n";
   //end of message
    $headers  = "From: $from\r\n";
    $headers .= "Content-type: text/html\r\n";

    //options to send to cc+bcc
    //$headers .= "Cc: [email]maa@p-i-s.cXom[/email]";
    //$headers .= "Bcc: [email]email@maaking.cXom[/email]";
    
    // now lets send the email.
    
    mail($to1, $subject, $email_message, $headers);
    mail($to2, $subject, $email_message, $headers);
mail($to3, $subject, $email_message, $headers);
    echo "<script type='text/javascript'>    alert('We will contact you as soon as possible.'); </script>"; 
    
    header( "refresh:5; url=http://www.domextechnical.com/business_research_companies/contact.html" ); 

 


?>