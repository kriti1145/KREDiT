using System;
using System.Net;
using System.Net.Mail;
using System.Windows;
using System.Windows.Navigation;

namespace login_page_new
{
    public partial class Contact_US : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnMesageSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //sendEmail();
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("krimusa7524@gmail.com", "xkfjmwfmgafvicpf");
                MailMessage msg = new MailMessage();
                msg.To.Add("krimusa7524@gmail.com");
                msg.From = new MailAddress("krimusa7524@gmail.com");
                msg.Subject = "website related message";
                msg.Body =("Name: " + txtName.Text.Trim() +Environment.NewLine+ "Email: " + txtEmail.Text.Trim() + Environment.NewLine + "Message: " + txtMessage.Text.Trim());
                smtp.Send(msg);
                Response.Write("<script>alert('Message sent successfully!! ');</script>");
                clear();
            }
            catch (Exception ex)
            {
                Response.Write("unable to send message: "+ex.Message);
            }
        }
        //Method for clearing data from textbox after submitting
        void clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }

    }
}