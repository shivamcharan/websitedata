// JavaScript Document

var image1=new Image()
image1.src="images/right/1.jpg"

var image2=new Image()
image2.src="images/right/2.gif"

var image3=new Image()
image3.src="images/right/3.jpg"

var image4=new Image()
image4.src="images/right/4.jpg"

var image5=new Image()
image5.src="images/right/5.jpg"

var image6=new Image()
image6.src="images/right/6.jpg"

var image7=new Image()
image7.src="images/right/7.jpg"

var image8=new Image()
image8.src="images/right/8.jpg"

var step=1
function slideit(){
//if browser does not support the image object, exit.
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
if (step<8)
step++
else
step=1
//call function "slideit()" every 1 seconds
setTimeout("slideit()",2500)
}
slideit()