using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Text.RegularExpressions;
using System.IO;
using System.Text;
using System.Data.SqlClient;
using System.Net.Sockets;
using System.Net.Mail;


/// <summary>
/// Summary description for otherfunction
/// </summary>
public class otherfunction
{
    public otherfunction()
    {

    }

    public static void sendmail(string msg,string emailtosend)
    {
        SmtpClient smtpClient = new SmtpClient();
        MailMessage message = new MailMessage();

        MailAddress fromAddress = new MailAddress("mail.capexbd.com", "CapexBD Marketing Tool");

        smtpClient.Host = "mail.capexbd.com";
        //Default port will be 25
        smtpClient.Port = 25;
        //From address will be given as a MailAddress Object
        message.From = fromAddress;
        // To address collection of MailAddress
        message.To.Add(emailtosend);
        message.Subject = "CapexBD Demo Wanted.";


        message.IsBodyHtml = true; ;

        // Message body content
        String bodymessage = msg;
        message.Body = bodymessage;

        // Send SMTP mail
        try
        {
            smtpClient.Send(message);
        }
        catch (Exception e)
        {
         
        }

    }

    public void sendsms(string mo, string msg)
    {

        String createdURL = "http://203.129.203.243/blank/sms/user/urlsms.php?username=lostmymobile&pass=9820033203&senderid=lostmymo&message=" + msg + "&dest_mobileno=" + mo + "&response=Y";

        //string createdURL = "http://203.129.203.243/blank/sms/user/urlsms.php?username=lostmymobile&pass=9820033203&senderid=lostmymo&message=final&dest_mobileno=8108336333&response=Y";

        WebRequest request = HttpWebRequest.Create(createdURL);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();

    }

}