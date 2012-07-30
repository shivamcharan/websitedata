<?php
mysql_connect("localhost","root","") or die (mysql_error());
mysql_select_db("programming") or die (mysql_error());
$sql = mysql_query("SELECT topicid, topictitle, topicurl,topicdescription FROM search ORDER BY topicid ASC");
$nr = mysql_num_rows($sql); 
if (isset($_GET['pn'])) { 
    $pn = preg_replace('#[^0-9]#i', '', $_GET['pn']); 
   
} else { 
    $pn = 1;
}
$itemsPerPage = 2;

$lastPage = ceil($nr / $itemsPerPage);
if ($pn < 1) { 
    $pn = 1; 
} else if ($pn > $lastPage) { 
    $pn = $lastPage; 
}
$centerPages = "";
$sub1 = $pn - 1;
$sub2 = $pn - 2;
$add1 = $pn + 1;
$add2 = $pn + 2;
if ($pn == 1) {
    $centerPages .= '&nbsp; <span class="pagNumActive">' . $pn . '</span> &nbsp;';
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $add1 . '">' . $add1 . '</a> &nbsp;';
} else if ($pn == $lastPage) {
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $sub1 . '">' . $sub1 . '</a> &nbsp;';
    $centerPages .= '&nbsp; <span class="pagNumActive">' . $pn . '</span> &nbsp;';
} else if ($pn > 2 && $pn < ($lastPage - 1)) {
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $sub2 . '">' . $sub2 . '</a> &nbsp;';
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $sub1 . '">' . $sub1 . '</a> &nbsp;';
    $centerPages .= '&nbsp; <span class="pagNumActive">' . $pn . '</span> &nbsp;';
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $add1 . '">' . $add1 . '</a> &nbsp;';
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $add2 . '">' . $add2 . '</a> &nbsp;';
} else if ($pn > 1 && $pn < $lastPage) {
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $sub1 . '">' . $sub1 . '</a> &nbsp;';
    $centerPages .= '&nbsp; <span class="pagNumActive">' . $pn . '</span> &nbsp;';
    $centerPages .= '&nbsp; <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $add1 . '">' . $add1 . '</a> &nbsp;';
}

$limit = 'LIMIT ' .($pn - 1) * $itemsPerPage .',' .$itemsPerPage;


$sql2 = mysql_query("SELECT topicid, topictitle, topicurl,topicurl,topicdescription FROM search ORDER BY topicid ASC $limit");

$paginationDisplay = ""; 

if ($lastPage != "1"){
   
    $paginationDisplay .= 'Page <strong>' . $pn . '</strong> of ' . $lastPage. '&nbsp;  &nbsp;  &nbsp; ';
   
    if ($pn != 1) {
        $previous = $pn - 1;
        $paginationDisplay .=  '&nbsp;  <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $previous . '"> Previous</a> ';
    }
    
    $paginationDisplay .= '<span class="paginationNumbers">' . $centerPages . '</span>';
    
    if ($pn != $lastPage) {
        $nextPage = $pn + 1;
        $paginationDisplay .=  '&nbsp;  <a href="' . $_SERVER['PHP_SELF'] . '?pn=' . $nextPage . '"> Next</a> ';
    }
}

$outputList = '';
while($row = mysql_fetch_array($sql2)){

    $id = $row["topicid"];
    $firstname = $row["topictitle"];
    $country = $row["topicurl"];
	$di= $row["topicdescription"];
	

    $outputList .= '<b>' . $firstname . '</b><br>' . $country . ' <br>'.$di.'<hr/>';
   
} 
?>
<html>
<head>
<title>Domex Data</title>
<style type="text/css">
<!--
.pagNumActive {
    color: #000;
    border:#060 1px solid; background-color: #D2FFD2; padding-left:3px; padding-right:3px;
}
.paginationNumbers a:link {
    color: #000;
    text-decoration: none;
    border:#999 1px solid; background-color:#F0F0F0; padding-left:3px; padding-right:3px;
}
.paginationNumbers a:visited {
    color: #000;
    text-decoration: none;
    border:#999 1px solid; background-color:#F0F0F0; padding-left:3px; padding-right:3px;
}
.paginationNumbers a:hover {
    color: #000;
    text-decoration: none;
    border:#060 1px solid; background-color: #D2FFD2; padding-left:3px; padding-right:3px;
}
.paginationNumbers a:active {
    color: #000;
    text-decoration: none;
    border:#999 1px solid; background-color:#F0F0F0; padding-left:3px; padding-right:3px;
}
-->
</style>
</head>
<body>
   <div style="margin-left:64px; margin-right:64px;">
     <h2>Total Items: <?php echo $nr; ?></h2>
   </div>
      <div style="margin-left:58px; margin-right:58px; padding:6px; background-color:#FFF; border:#999 1px solid;"><?php echo $paginationDisplay; ?></div>
      <div style="margin-left:64px; margin-right:64px;"><?php print "$outputList"; ?></div>
      <div style="margin-left:58px; margin-right:58px; padding:6px; background-color:#FFF; border:#999 1px solid;"><?php echo $paginationDisplay; ?></div>
</body>
</html> 