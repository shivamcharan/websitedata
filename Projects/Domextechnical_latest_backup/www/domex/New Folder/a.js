ss = new slideshow('ss');
ss.prefetch = 3;
ss.timeout = 7000;

s = new slide();
s.src = 'pic01i.jpg';
s.link = 'pic01i.jpg';
s.title = 'Project Tracking Software ';
s.text = '<b>Project Tracking Software</b><br><br>1.Manage projects with basic and advanced PM features, such as task dependencies, which ensure a by-the-book workflow.<br><br>2.Fill out your time sheet online using our time tracking tool, with a time clock. Send it for approval and generate time reports.&nbsp;&nbsp;&nbsp;<a href="../project_tracking_software/project tracking software.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic04i.jpg';
s.link = 'pic04i.jpg';
s.title = 'Logistics Software';
s.text = '<b>Logistics Software</b><br><br>1.Software can be customized to individual user requirements. Many logistics companies in TN / Southern India are profitably utilizing Domex design software. <br><br>a.Public Bonded Warehouses Software.<br><br>b.CFS & ICD Monitoring Software <br><br>C.Inventory Control Software&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/logistics.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic03i.jpg';
s.link = 'pic03i.jpg';
s.title = 'Capex BD';
s.text = '<b>Capex BD</b><br><br>1.CapexBD can provide immense assistance to marketing, corporate planning and top management personnel with key data for decision making and long term planning. Highlights of our software are listed below :<br><br>a.Assists monitoring of turnkey projects.<br><br>b.Can be provided with tender monitoring module.&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/capexbd.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic04i.jpg';
s.link = 'pic04i.jpg';
s.title = 'HRMS';
s.text = '<b>Human resource management system</b><br><br>1.Human Resource Management Systems encompass:<br><br>a.Payroll<br><br>b.Appraisal performance<br><br>c.HR management Information system<br><br>d.Performance Record&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/hrms.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic05i.jpg';
s.link = 'pic05i.jpg';
s.title = 'Customized Solutions';
s.text = '<b>Customized Solutions</b><br><br>1.Custom IT Solutions of FIT is designed for your specific business requirements which will be a great help for your achievement of business objective.<br><br> A simple software package is not enough for today’s multi-faced businesses.&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/customized solutions.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic06i.jpg';
s.link = 'pic06i.jpg';
s.title = 'Psychology Applications';
s.text = '<b>Psychology Applications</b><br><br>Psychologist Software was designed with the assistance of multiple Psychologists.  <br><br>As well as the general functions of Practice Management System, Psychologist module includes DASS 21, DASS42, K10, MMSE, HoNOS, BPRS tests.<br><br>Psychologist module is available in both a Solo Edition for individual practitioners and a Network Edition for multiple users.&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/project tracking software.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic07i.jpg';
s.link = 'pic07i.jpg';
s.title = 'Psychometric Applications';
s.text = '<b>Psychometric Applications</b><br><br>1.Psychometric testing is a tool used mainly in the recruitment process.<br><br> It is recognized as an efficient way to gain insight into a person’s personality and psychological thinking.<br><br> It can help develop team spirit in the workplace and assess an individual’s priorities.&nbsp;&nbsp;&nbsp;<a href="../market_research_companies/project tracking software.html" target="_blank">more</a> ';
ss.add_slide(s);

s = new slide();
s.src = 'pic08i.jpg';
s.link = 'pic08i.jpg';
s.title = 'Wide & Large Formate Scanning';
s.text = '<b>Wide & Large Formate Scanning</b><br><br>1.Domex Technical designs, manufactures and markets, high-speed, high performance, wide-format scanners, printers and digital copiers.<br><br> Domex has created an industry standard for innovative, wide-format document scanning, printing and copying.<br><br> Our vision is to maintain being the world’s most successful manufacturer of Single Line Contact - SLC scanning equipment for handling wide-format documents&nbsp;&nbsp;&nbsp;<a href="../project_tracking_software/Scanning.html" target="_blank">more</a> ';
ss.add_slide(s);

// The following loop sets an attribute for all of the slides.
// This is easier than setting the attributes individually.

for (var i=0; i < ss.slides.length; i++) {

  s = ss.slides[i];
  s.target = "slideshow_popup";
  s.attr = "width=250,height=250,resizable=yes,scrollbars=yes";
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

