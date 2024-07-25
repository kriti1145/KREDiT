using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Windows;
using System.Net.Mime;
using System.Web.UI;
using System.Threading;

namespace login_page_new
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        public static string to;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmailSend_Click(object sender, EventArgs e)
        {
            try
            {
                string from, pass;
                strcon.Open();
                string getpassword = "select Email_id, Password , User_ID from tbl_login  where Email_id= @to";
                SqlCommand sql = new SqlCommand(getpassword, strcon);
                sql.Parameters.AddWithValue("@to", txtEmailID.Text);
                SqlDataReader dataReader = sql.ExecuteReader();

                if (dataReader.Read())
                {
                        //data read from database
                        string email = dataReader["Email_id"].ToString();
                        string userId = dataReader["User_ID"].ToString();
                        string password = dataReader["Password"].ToString();
                        StringBuilder sb = new StringBuilder();
                        sb.AppendLine("Email_id: " + email);
                        sb.AppendLine("User_ID: " + userId);
                        sb.AppendLine("Password: " + password);
                        
                        to = (txtEmailID.Text).ToString();
                        from = "krimusa7524@gmail.com";
                        pass = "xkfjmwfmgafvicpf";
                        
                        MailMessage msg = new MailMessage();
                        msg.To.Add(to);
                        msg.From = new MailAddress(from);
                        msg.Body = sb.ToString();
                        msg.Subject = "Login information";
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                        smtp.EnableSsl = true;
                        smtp.Port = 587;
                        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                        smtp.Credentials = new NetworkCredential(from, pass);
                        smtp.Send(msg);
                  
                        Response.Write("<script>alert('password sent successfully you can login now...');</script>");
                }
                else
                {
                    Response.Write("<script>alert('EmailId not registered!');</script>");
                }

            }
            catch (ThreadAbortException) { 
            
                //to handle thread exception caused by redirecting code
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
         
            finally
            {
                strcon.Close();
            }

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
           Response.Redirect("signin_page.aspx"); // server.Transfer is used to redirect page after any message
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reset_page.aspx");
        }
    }
}