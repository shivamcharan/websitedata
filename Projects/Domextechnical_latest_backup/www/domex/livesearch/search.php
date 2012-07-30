<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
<title>Business Research Company- market research, market research firms, market research firm, business transcription, business research, business research companies, market research services, warehouse logistic software, market research companies, logistics software companies</title>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<link href="css/reset.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.watermark.js"></script>
<script type="text/javascript">
 
 
      $(document).ready(function() {

$("#faq_search_input").watermark("");

$("#faq_search_input").keyup(function()
{
var faq_search_input = $(this).val();
var dataString = 'keyword='+ faq_search_input;
if(faq_search_input.length>3)

{
$.ajax({
type: "GET",
url: "ajax-search.php",
data: dataString,
beforeSend:  function() {

$('input#faq_search_input').addClass('loading');

},
success: function(server_response)
{

$('#searchresultdata').html(server_response).show();
$('span#faq_category_title').html(faq_search_input);

if ($('input#faq_search_input').hasClass("loading")) {
 $("input#faq_search_input").removeClass("loading");
        } 

}
});
}return false;
});
});
	  
</script>
<style type="text/css">
/*This css contains code for the statis loading image in the right of the textbox */
body.faq .faqsearch .faqsearchinputbox input {
	font-size:16px;
	color:#6e6e6e;
	padding:10px;
	border:none;
	background:url(img/loading_static.gif) no-repeat right 50%;
	width:510px;
}
/*The css class below contains the animated loading image .this will be added on the dom later with Jquery*/
body.faq .faqsearch .faqsearchinputbox input.loading {
	background:url(img/loading_animate.gif) no-repeat right 50%;
}
</style>
</head>
<body id="nitropage" class="page_page youhackpage faq">
<div id="content">
  <div id="contentdiv" class="page_page">
    <div class="prod-subhead">
      <div class="clearfix"> </div>
    </div>
    
    <div id="prod-content">
      <div class="prod-subsubhead">
        <h4 id="faq_title"> <strong>Search Results For : </strong> <span id="faq_category_title">Keyword </span> </h4>
        <div class="prodtopline" style="border-bottom :1px solid #EDEDED;height:30px;width:900px;margin:0px auto;border-color:#333;"> </div>
      </div>
      <div class="prod-subcontent">
        <div class="prod-lcol fl-left">
          <div class="prod-content">
            <div class="faqsearch">
              <div class="faqsearchinputbox">
                <!-- The Searchbox Starts Here  -->
                <input  name="query" type="text" id="faq_search_input" />
                <!-- The Searchbox Ends  Here  -->
              </div>
            </div>
            <div id="searchresultdata" class="faq-articles"> </div>
          </div>
        </div>
        <div class="clearfix"> </div>
      </div>
    </div>
    <div class="prod-content-bottom"> </div>
  </div>
</div>
<div id="footer"></div>
</body>
</html>