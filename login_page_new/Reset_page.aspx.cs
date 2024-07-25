using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Web.UI;
using System.Windows;

namespace login_page_new
{
    public partial class Rename_page : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        DataAccess dataAccess = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            //clear();
            if(!IsPostBack)
            {}
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            try
            {
                strcon.Open();
                string sqlStr = @"select * from tbl_login where User_ID ='" + txtUserId.Text + "' and Password='" + txtCurrentPass.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sqlStr, strcon);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    MessageBox.Show("Invalid Credentials...", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    dt = dataAccess.GetDataTableWithProc("sp_Update", new SqlParameter[]
                    {       
                             new SqlParameter("@User_ID", txtUserId.Text),
                             new SqlParameter("@Password", txtConfirmPass.Text)

                    });

                    if (dt.Rows[0]["Result"].ToString() == "1")
                    {
                        //lblMessage.Text = dt.Rows[0]["Message"].ToString();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('" + dt.Rows[0]["Message"].ToString() + "')", true);
                        Response.Write("<script>alert('password updated successfully you can Sign-in now...');</script>");
                        Server.Transfer("signin_page.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...')", true);
                    } 
                }
            }
            catch (ThreadAbortException)
            {
                //to handle thread exception caused by redirecting code
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                strcon.Close();
            }
        }
        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            txtUserId.Text = "";
            txtCurrentPass.Text = "";
            txtNewpass.Text = "";
        }
    }
}