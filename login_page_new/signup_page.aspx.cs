using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Web.UI;
using System.Windows;

namespace login_page_new
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        //declare a string variable which will hold the connection string
        DataAccess dataAccess = new DataAccess();
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                State();
                District();
                Block();
            }
           
        }
        //sign -up button -clicked
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkUserExists())
                {
                    MessageBox.Show("UserId already exists!!");
                }
                else
                {
                    if (chkBox.Checked == true)
                    {

                        if (txtPassword.Text != txtConfirmPassword.Text)
                        {
                            //Response.Write("<script>alert('Password do not match!');</script>");
                            MessageBox.Show("Password do not match!");
                        }
                        else
                        {
                            string Gender = string.Empty;
                            if (RBMale.Checked)
                            {
                                Gender = "Male";
                            }
                            else if (RBFemale.Checked)
                            {
                                Gender = "Female";
                            }
                            else
                            {
                                Gender = "others";
                            }
                            strcon.Open();
                            DataTable dt = dataAccess.GetDataTableWithProc("sp_I_SignUp", new SqlParameter[]
                            {
                                new SqlParameter("@User_ID", txtUserId.Text),
                                new SqlParameter("@First_Name", txtFirstName.Text),
                                new SqlParameter("@Last_Name", txtLastName.Text),
                                new SqlParameter("@Gender", Gender),
                                new SqlParameter("@Date_of_Birth", txtDOB.Text),

                                new SqlParameter("@Mobile_No", txtMobileNo.Text),
                                new SqlParameter("@Email_id", txtEMailId.Text),
                                new SqlParameter("@Address", txtAddress.Text),
                                new SqlParameter("@StateId", ddlState.Text),
                                new SqlParameter("@DistrictId", ddlDistrict.Text),
                                new SqlParameter("@BlockId", ddlBlock.Text),

                                new SqlParameter("@Password", txtPassword.Text)
                            });
                            if (dt.Rows[0]["Result"].ToString() == "1")
                            {
                                //lblMessage.Text = dt.Rows[0]["Message"].ToString();
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('" + dt.Rows[0]["Message"].ToString() + "')", true);
                                Response.Redirect("Thankyou.aspx");
                               
                            }
                            else
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...')", true);
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show("please agree the Terms and conditions!!");
                    }

                }

            }
            catch (ThreadAbortException)
            {

                //to handle thread exception caused by redirecting code
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Error in registering" + ex);
                // if any kind of exception occured then display the message
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                strcon.Close();
            }
        }
        //-------------------------------------------------------check if userId already exists--------------------------------------------------------------------------------------
        bool checkUserExists()
        {
            try
            {
                SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                if (strcon.State == ConnectionState.Closed)
                {
                    strcon.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from tbl_login where User_ID ='" + txtUserId.Text +"'", strcon);
                SqlDataAdapter das = new SqlDataAdapter(cmd);
                DataTable dts = new DataTable();
                das.Fill(dts);

                if (dts.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        //----------------------------------------------------------Cascading dropdownList -----------------------------------------------------------------------------------
        //when there is a change in state, district and block will be called 
        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if we reselect the state then district and block get clear
            District();
            Block();
        }
        //when there is a change in  district ,block will be called 
        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            Block();//if we reselect the district then block's selected item will get clear

        }

        //------------------------- dropdownlist's methods----------------------------------------------//
        void State()
        {
            dataAccess.FillDropDownList(ddlState, "Select Id, Statename From tblState Where IsActive = 'Y' Order By Statename", "Id", "Statename", "--Select--", new SqlParameter[] { });
        }
      
        void District()
        {
            dataAccess.FillDropDownList(ddlDistrict, "Select Id, Name From tblDistrict Where StateId = @StateId And IsActive = 'Y' Order By Name", "Id", "Name", "--Select--", new SqlParameter[]
            {
                new SqlParameter("@StateId",ddlState.SelectedValue)
            });
        }
        void Block()
        {

            dataAccess.FillDropDownList(ddlBlock, "Select Id, Name From tblBlock Where DistrictId = @DistrictId And IsActive = 'Y' Order By Name", "Id", "Name", "--Select--", new SqlParameter[]
            {
                new SqlParameter("@DistrictId",ddlDistrict.SelectedValue)
            });
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {

        }
    }

}



