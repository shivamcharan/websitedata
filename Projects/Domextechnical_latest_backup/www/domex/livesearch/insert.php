<?php
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("programming", $con);

$sql="INSERT INTO search (topictitle, topicurl, topicdescription)
VALUES
('$_POST[title]','$_POST[url]','$_POST[description]')";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
echo "1 record added";

mysql_close($con)
?> 