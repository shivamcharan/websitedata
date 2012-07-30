using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBaseManager;

public partial class tab : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        TxtCompanyName.Text = "sent to database";
        string ip_address = "100.00.00.1";
        string demoinsert = "insert into  demo (c_name , c_person , c_number , p_name , ip_address , create_date , update_date , status  ) values ('" + TxtCompanyName.Text + "','" + TxtContactPerson.Text + "','" + TxtMobileNumber.Text + "','" + TxtProduct.Text + "','" + ip_address + "',SYSDATETIME(),SYSDATETIME(),1";
        DataManager.WriteToDb(demoinsert);
        otherfunction.sendmail("Check Whether mail is sending or not", "domexbusiness@gmail.com");
        TxtContactPerson.Text = "successed";
    }
    protected void BtnSubmit_Click1(object sender, EventArgs e)
    {

        TxtCompanyName.Text = "sent to database";
        string ip_address = "100.00.00.1";
        string demoinsert = "insert into  demo (c_name , c_person , c_number , p_name , ip_address , create_date , update_date , status  ) values ('" + TxtCompanyName.Text + "','" + TxtContactPerson.Text + "','" + TxtMobileNumber.Text + "','" + TxtProduct.Text + "','" + ip_address + "',SYSDATETIME(),SYSDATETIME(),1)";
        DataManager.WriteToDb(demoinsert);
      //  otherfunction.sendmail("Check Whether mail is sending or not", "domexbusiness@gmail.com");
        TxtContactPerson.Text = "successed";
    }
}