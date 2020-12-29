using System;
using System.Web;
using System.Web.UI;

using System.Net;
using System.Net.Mail;

namespace emailSMS
{

    public partial class Index : Page
    {
     

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1Clicked(object sender, EventArgs args)
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("nivedithaholla@gmail.com", "Nikunj898*");
                MailMessage msgobj = new MailMessage();
                msgobj.To.Add(txtTo.Text);
                msgobj.From = new MailAddress("nivedithaholla@gmail.com");
                msgobj.Subject = txtSub.Text;
                msgobj.Body = txtBody.Text;
                client.Send(msgobj);
                Response.Write("Your message has been sent!!");
             

            }
            catch (Exception ex)
            {
                Response.Write("Could not send email" + ex.Message);
            }
           // button1.Text = "You clicked me";
        }
    }
}
