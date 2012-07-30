using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using DataBaseManager;

public partial class CapexBD : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void BtnSubmit_Click(object sender, EventArgs e)
    {


       
        string ip_address = "100.00.00.1";
        string demoinsert = "insert into  demo (c_name , c_person , c_number , p_name , ip_address , create_date , update_date , status  ) values ('" + TxtCompanyName.Text + "','" + TxtContactPerson.Text + "','" + TxtMobileNumber.Text + "','" + TxtProduct.Text + "','" + ip_address + "','today','today',1)";
        DataManager.WriteToDb(demoinsert);
        //  otherfunction.sendmail("Check Whether mail is sending or not", "domexbusiness@gmail.com");
        TxtCompanyName.Text = "";
        TxtContactPerson.Text = "";
        TxtMobileNumber.Text = "";
        TxtProduct.Text = "";
        tabledemo.Visible = false;

        lbldemosubmit.Visible = true;
        lbldemosubmit.Text = "Thanks For Contacting Us Our Executive will contact to you ASAP. <br />";
        btndemosubmit.Visible = true;
        btndemosubmit.Text = "Back";

   
    }




    protected void btndemosubmit_Click(object sender, EventArgs e)
    {
        

       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        lbldemosubmit.Visible = false;
        btndemosubmit.Visible = false;
        tabledemo.Visible = true;
    }
}
