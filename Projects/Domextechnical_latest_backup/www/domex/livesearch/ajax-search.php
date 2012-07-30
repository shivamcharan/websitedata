<?php


include_once ('database_connection.php');

if(isset($_GET['keyword'])){
    $keyword = 	trim($_GET['keyword']) ;
$keyword = mysqli_real_escape_string($dbc, $keyword);



$query = "select 
         
		  topictitle,
		  topicurl,
		  topicdescription 
		  from 
		  search where 
		              topictitle like '%$keyword%'or topicdescription like '%$keyword%' or 
					  topicurl like '%$keyword%' ";

$result = mysqli_query($dbc,$query);
if($result){
    if(mysqli_affected_rows($dbc)!=0){
          while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
     echo
	 
	  '<p>	   <a href="'.$row['topicurl'].'" target="_blank"><b>'.$row['topictitle'].'</b></a> 
	            
				
				'.$row['topicurl'].'<br>'
	               
				   
				   .$row['topicdescription'] .'</p>';
				   
				   
				   
				   
    }
    }else {
        echo 'No Results for :"'.$_GET['keyword'].'"';
    }
  
}
}else {
    echo 'Parameter Missing';
}




?>