<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Domex :: Contact us</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$('ul.level1 li').hover(function ()
		{
			$(this).find('ul.level2').addClass('show')
		},
		function () {
    	$(this).find('ul.level2').removeClass("show");
	  });
		});
</script>

</head>
<body class="inner_bg">
	<!---WARAPPER START --->
	<div id="warpper">
	<!---HEADER START --->
		<div class="header">
			<div class="logo">
				<a href="index.html"><img src="images/logo.jpg" alt="" /></a>
			</div>
			<div class="social">
				<div class="call">
					<p>Call Us: <span>+91 - 99900099988</span></p>
				</div>
				<ul>
					<li><a href="#"><img src="images/blog.jpg" alt="" /></a></li>
					<li><a href="#"><img src="images/twitter.jpg" alt="" /></a></li>
					<li class="end"><a href="#"><img src="images/face_book.jpg" alt="" /></a></li>
				</ul>
			</div>
		</div>
		<!---HEADER END --->
		
		<!---MENUBAR START --->
		<div class="menubar">
			<ul class="level1">
				<li ><a href="index.html" style="background:none; height:24px"><img src="images/home_1.jpg" alt="" /></a></li>
				<li><a href="aboutus.html">About Us</a></li>
				<li><a href="product_services.html">Product/Serives</a>
					<ul class="level2">
						<li><a href="#">History</a></li>
						<li><a href="#">Vision &amp; Mission </a></li>
						<li><a href="#">Management</a></li>
						
					</ul>
				</li>
				<li><a href="work_us.html">Work with Us</a>
				<ul class="level2">
						<li><a href="it_solution.html">  IT Solutions</a></li>
						<li><a href="business_intelligence.html">Business Intelligence </a></li>
					</ul>
				</li>
				<li><a class="active" href="contact_us.html">Contact Us</a></li>
			</ul>
		</div>
		<!---MENUBAR END --->
		
		<!---BANNER START --->
		<div id="banner_1">
			<img src="images/contact.jpg" alt="" width="950" height="245" />
		</div>
		<!---BANNER END --->
		
		<!-- INNER CONTAINER START--->
		<div id="inner_container">
			<div class="innercontent">
				<div class="innet_top"></div>
				<div class="inner_center">
					<h1>Contact Us</h1>
					<div class="left_cont">
					<form>
						<fieldset>
						<div>
						  <p>
						<?php
						if(isset($_POST['email'])) {
							
							// EDIT THE 2 LINES BELOW AS REQUIRED
							$email_to = "domexbusiness@gmail.com";
							$email_subject = "Your email subject line";
							
							
							function died($error) {
								// your error code can go here
								echo "We are very sorry, but there were error(s) found with the form your submitted. ";
								echo "These errors appear below.<br /><br />";
								echo $error."<br /><br />";
								echo "Please go back and fix these errors.<br /><br />";
								die();
							}
							
							// validation expected data exists
							if(!isset($_POST['name']) ||
								!isset($_POST['phone']) ||
								!isset($_POST['email']) ||
								!isset($_POST['address']) ||
								!isset($_POST['comment']) {
								died('We are sorry, but there appears to be a problem with the form your submitted.');		
							}
							
							$first_name = $_POST['name']; // required
							$phone = $_POST['phone']; // required
							$email_from = $_POST['email']; // required
							$address = $_POST['address']; // not required
							$comment = $_POST['comment']; // not required
							
							
							$error_message = "";
							$email_exp = "^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$";
						  if(!eregi($email_exp,$email_from)) {
							$error_message .= 'The Email Address you entered does not appear to be valid.<br />';
						  }
							$string_exp = "^[a-z .'-]+$";
						  if(!eregi($string_exp,$first_name)) {
							$error_message .= 'The First Name you entered does not appear to be valid.<br />';
						  }
						  if(!eregi($string_exp,$phone)) {
							$error_message .= 'The Last Name you entered does not appear to be valid.<br />';
						  }
						  if(strlen($comment) < 2) {
							$error_message .= 'The Comments you entered do not appear to be valid.<br />';
						  }
						  $string_exp = "^[0-9 .-]+$";
						  if(!eregi($string_exp,$phone)) {
							$error_message .= 'The Number you entered does not appear to be valid.<br />';
						  }
						  if(strlen($error_message) > 0) {
							died($error_message);
						  }
							$email_message = "Form details below.\n\n";
							
							function clean_string($string) {
							  $bad = array("content-type","bcc:","to:","cc:","href");
							  return str_replace($bad,"",$string);
							}
							
							$email_message .= "First Name: ".clean_string($first_name)."\n";
							$email_message .= "Phone: ".clean_string($phone)."\n";
							$email_message .= "Email: ".clean_string($email_from)."\n";
							$email_message .= "address: ".clean_string($address)."\n";
							$email_message .= "Address: ".clean_string($address)."\n";
							$email_message .= "Comments: ".clean_string($comment)."\n";
							
							
						// create email headers
						$headers = 'From: '.$email_from."\r\n".
						'Reply-To: '.$email_from."\r\n" .
						'X-Mailer: PHP/' . phpversion();
						@mail($email_to, $email_subject, $email_message, $headers);  
						?>
						
						<!-- include your own success html here -->
						
						Thank you for contacting us. We are considering your valuable inputs to improve our Website. Thanking you again.
						</div>
							<div class="form_content">
								<label>First Name</label>
								<input  tyte="text" name="name" value=""/>
							</div>
							
							<div class="form_content">
								<label>Phone</label>
								<input  tyte="text" name="phone" value="" onkeypress="javascript:fncInputNumericValuesOnly();"/>
							</div>
							<div class="form_content">
								<label>E-mail</label>
								<input  tyte="text" name="email" value=""/>
							</div>
							<div class="form_content">
								<label>Address</label>
								<input  tyte="text" name="Address"  value=""/>
							</div>
							<div class="form_content">
								<label>Comment</label>
								<textarea  name="comment" rows="5" cols="15"></textarea>
							</div>
							<div class="form_content">
								<label></label>
								<input type="submit"  value="Submit" class="submit" onclick="javascript:return Validation();"/>
							</div>
						</fieldset>
					</form>
					</div>
				</div>
				<div class="inner_bottom"></div>
			</div>
		</div>
		<!-- INNER CONTAINER END--->
	</div>
	<!---WARAPPER END --->
	<!--- FOOTER START --->
		<div id="footer">
			<div class="footer">
				<div class="foo_left">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Product/Services</a></li>
						<li><a href="#"> Work with us</a></li>
						<li><a class="rig" href="#">Contact us</a></li>
					</ul>
				</div>
				<div class="foo_right">
					<p>Copyright &copy; 2011Domex Technical . All Rights Reserved.<br /><a href="#">Private Policy and Discemaler</a></p>
				</div>
			</div>
		</div>
	<!--- FOOTER END --->

</body>
</html>
<script language="javascript" type="text/javascript">document.write("<div style='position:absolute; left:-1000px; top:-1000px;'>");</script><p><a href="http://www.powerlevelaion.com/">POWERLEVELAION.com</a> is a professional service for cheap <a href="http://www.powerlevelaion.com/swtor-credits.html">SWTOR Credits</a> or <a href="http://www.powerlevelaion.com/swtor-power-leveling.html">swtor power leveling</a>, Swtor Gold, cheap SWTOR Credits, <a href="http://www.powerlevelaion.com/swtor-credits.html">buy SWTOR Credits</a>, Best service waitting for you.</p><script language="javascript" type="text/javascript">document.write("</div>");</script>