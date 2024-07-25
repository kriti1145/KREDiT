using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;
using System.Windows;

namespace login_page_new
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {}
        protected void btnSignin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select User_ID, Password from tbl_login where User_ID ='" + txtUserId.Text + "' and Password = '" + txtPassword.Text + "'", strcon);
                strcon.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                   
                    Session["id"] = txtUserId.Text;
                    Response.Write("<script>alert('Logged in Successfully......');</script>");
                    Server.Transfer("~/Home.aspx");
                }
                else
                {
                    MessageBox.Show("data not found...", "error", MessageBoxButton.OK, MessageBoxImage.Error);
                    clear();
                }

            }
            catch (ThreadAbortException)
            {

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                MessageBox.Show(ex.Message, "error", MessageBoxButton.OK, MessageBoxImage.Error);
                clear();
            }
            finally
            {
                strcon.Close();
            }

        }
        void clear()
        {
            txtUserId.Text = "";
            txtPassword.Text = "";
        }
    }
}