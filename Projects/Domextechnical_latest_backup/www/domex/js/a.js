ss = new slideshow('ss');
ss.prefetch = 3;
ss.timeout = 7000;

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = '../images/Chemicalcover.png';
s.title = 'New Chemical Process Industry';
s.text = 'Welcome to the BarelyFitz JavaScript slideshow! Use the slideshow controls for a tour of the slideshow features.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = '../our_project/New Engineering, Mining & Metallurgical.html';
s.title = 'New Engineering, Mining & Metallurgical';
s.text = 'This is free, open-source software: you can redistribute it and/or modify it under the terms of the GNU General Public License. For more information refer to the <A HREF="/projects/slideshow/index.php/6">License<\/A> page.<P>The slideshow is supported by user donations.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = 'pics/pic02.jpg';
s.title = 'New Infrastructure Projects';
s.text = 'Use the <A HREF="wizard/">Slideshow Wizard<\/A> to create your slideshow - just copy the pictures onto your own website, and paste our HTML into your web page.<P>You can also use the <A HREF="auction/">Auction Wizard<\/A> to create slideshows for your eBay auction pages.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = 'pics/pic03.jpg';
s.title = 'New Projects in Eastern India';
s.text = 'Each slide can have the following attributes: an image, a link, a description, a window target, window attributes, a custom duration, and a custom image transition.<P>You can also add your own custom attributes to each slide.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = 'pics/pic04.jpg';
s.title = 'New Projects in Hospitality Sector';
s.text = 'Each image in the slideshow can be a different size - the slideshow can scale the image to a specific width and/or height, or the slideshow can automatically change to the new image size.<P>You can set an image transition, such as a fade-in transition, for the entire slideshow, or set a custom transition for each slide.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = 'pics/pic06.jpg';
s.title = 'New Projects in Northern India';
s.text = 'Users can trigger the link for a slide by clicking the image or by clicking a separate link or button. The link can open a new browser window, and you can specify custom window attributes for each slide, such as width, height, scrollbars, etc. If the window is hidden behind other windows, it is automatically popped to the front.';
ss.add_slide(s);

s = new slide();
s.src = '../images/Chemicalcover.png';
s.link = 'pics/pic07.jpg';
s.title = 'New Projects in Retail Sector';
s.text = 'Each slide can have an annotation, which is displayed directly on the page. The annotation can contain text or HTML, and you can use style sheets to control the text appearance.<P>Tools are provided to make the text accessible to search engines and browsers that do not support JavaScript.';
ss.add_slide(s);

s = new slide();
s.src = 'images/Chemicalcover.png';
s.link = 'pics/pic08.jpg';
s.title = 'New Projects in Southern India';
s.text = 'You can add a variety of controls for the slideshow, and the controls can be links or buttons.<P>Some of the available controls are: next slide, previous slide, goto a slide, start the slideshow, pause the slideshow, etc.';
ss.add_slide(s);

s = new slide();
s.src = 'images/Chemicalcover.png';
s.link = 'pics/pic09.jpg';
s.title = 'New Projects in Western India';
s.text = 'The slideshow can automatically advance the slides. You can set the duration for all of the slides, or set a custom duration for each slide. The slideshow can display once, or it can repeat in an endless loop.';
ss.add_slide(s);

s = new slide();
s.src = 'images/Chemicalcover.png';
s.link = 'pics/pic10.jpg';
s.title = 'Power Generation New Projects';
s.text = 'You can shuffle the slides to provide a random order: the slides are rearranged so that each is shown once before the slideshow repeats.';
ss.add_slide(s);

s = new slide();
s.src = 'images/Chemicalcover.png';
s.link = 'pics/pic11.jpg';
s.title = 'Recorder of New Projects';
s.text = 'You can create more than one slideshow on a page. The slideshows can even update at different rates.';
ss.add_slide(s);

s = new slide();
s.src = 'pic12i.png';
s.link = 'pics/pic12.jpg';
s.title = 'Recorder of New Projects Premium';
s.text = 'The slideshow can use a cookie to save its current position, so if you leave the page and come back it will continue where it left off.';
ss.add_slide(s);



// The following loop sets an attribute for all of the slides.
// This is easier than setting the attributes individually.

for (var i=0; i < ss.slides.length; i++) {

  s = ss.slides[i];
  s.target = "slideshow_popup";
  s.attr = "width=620,height=420,resizable=yes,scrollbars=yes";
}

// Display an alert to remind people to donate
var show_popup = true;
function showpopup() {
  // Display a message (once)
  if (show_popup) {
    show_popup = false;
    alert("The slideshow is funded by users like you.\n\nIf you use the slideshow please consider making a donation.");
  }
}

