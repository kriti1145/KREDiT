using Org.BouncyCastle.Ocsp;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;

namespace login_page_new
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        //declare a string variable which will hold the connection string
        DataAccess dataAccess = new DataAccess();
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        string Gender = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                State();
                College();
                Course();
                BindGridViewList();

            }

        }

        // SUBMIT into database
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

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
                DataTable dt = dataAccess.GetDataTableWithProc("sp_StudentInfoCrud", new SqlParameter[]
                {
                                new SqlParameter("@Registration_No", txtRegNo.Text),
                                new SqlParameter("@Name", txtName.Text.ToUpper()),
                                new SqlParameter("@Gender", Gender.ToUpper()),
                                new SqlParameter("@Date_Of_Birth", txtDOB.Text),

                                new SqlParameter("@Mobile", txtMobileNo.Text),
                                new SqlParameter("@Email_Id", txtEMailId.Text.ToUpper()),
                                new SqlParameter("@StateId", ddlState.Text.ToUpper()),
                                new SqlParameter("@CollegeId", ddlCollege.Text.ToUpper()),
                                new SqlParameter("@CourseId", ddlCourse.Text.ToUpper())

                });

                if (dt.Rows[0]["Result"].ToString() == "1")
                {
                    //lblMessage.Text = dt.Rows[0]["Message"].ToString();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('" + dt.Rows[0]["Message"].ToString() + "')", true);
                    BindGridViewList();
                    clear();

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...')", true);
                }
                //Response.Write("<script>alert('Successfully Registered!');</script>");


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

        //Method for clearing data from textbox after submitting
        void clear()
        {
            txtRegNo.Text = "";
            txtName.Text = "";
            Gender = "";
            txtDOB.Text = "";
            txtMobileNo.Text = "";
            txtEMailId.Text = "";
            ddlState.Text = "";
            ddlCollege.Text = "";
            ddlCourse.Text = "";
        }


        // gridview
        private void BindGridViewList()
        {
            try
            {
                DataTable dt = dataAccess.GetDataTableWithProc("sp_JoinTable", new SqlParameter[] { });

                if (dt.Rows.Count > 0)
                {
                    GridViewList.DataSource = dt;
                    GridViewList.DataBind();
                }
                else
                {
                    GridViewList.DataSource = null;
                    GridViewList.DataBind();
                }

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

        //-----CASCADING DROPDOWNLIST
        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            College();
            Course();

        }
        protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
        {
            Course();
        }
        void State()
        {
            dataAccess.FillDropDownList(ddlState, "Select Id , Statename From tblState  Where IsActive='Y' Order By Statename", "Id", "Statename", "--Select--", new SqlParameter[] { });
        }
        void College()
        {

            dataAccess.FillDropDownList(ddlCollege, "Select Id , CollegeName From tblCollege Where StateId = @StateId AND IsActive='Y' Order By CollegeName", "Id", "CollegeName", "--Select--", new SqlParameter[]
            {
              new SqlParameter("@StateId",ddlState.SelectedValue)
            });
        }
        void Course()
        {

            dataAccess.FillDropDownList(ddlCourse, "Select Id , CourseName From tblCourse Where CollegeId = @CollegeId AND IsActive='Y' Order By CourseName", "Id", "CourseName", "--Select--", new SqlParameter[]
            {
               new SqlParameter("@CollegeId",ddlCollege.SelectedValue.ToUpper())
            });
        }
        
        // to update data 
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DataTable dt = dataAccess.GetDataTableWithProc("sp_UpdateStudentInfo", new SqlParameter[]
                {
                                new SqlParameter("@Registration_No", txtRegNo.Text),
                                new SqlParameter("@Name", txtName.Text),
                                new SqlParameter("@Gender", Gender),
                                new SqlParameter("@Date_Of_Birth", txtDOB.Text),

                                new SqlParameter("@Mobile", txtMobileNo.Text),
                                new SqlParameter("@Email_Id", txtEMailId.Text),
                                new SqlParameter("@StateId", ddlState.Text),
                                new SqlParameter("@CollegeId", ddlCollege.Text),
                                new SqlParameter("@CourseId", ddlCourse.Text)

                });

            if (dt.Rows[0]["Result"].ToString() == "1")
            {
                //lblMessage.Text = dt.Rows[0]["Message"].ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('" + dt.Rows[0]["Message"].ToString() + "')", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...')", true);
            }
        }

        protected void GridViewList_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }



        //protected void lnkBtnSelect_OnClick(object sender, EventArgs e)
        //{
            
        //    LinkButton lnkBtn = (LinkButton)sender;
        //    string id = lnkBtn.CommandArgument.ToString();

        //    DataTable dt = dataAccess.GetDataTable(@"Select Registration_No,Name,Date_Of_Birth,Gender,Mobile,Email_Id,Statename,CollegeName, CourseName
                
        //        From tblStudentInfo Where Registration_No = @Registration_No", new SqlParameter[] { new SqlParameter("@Registration_No", id) });

        //    ViewState["Registration_No"] = id;

        //    txtRegNo.Text = dt.Rows[0]["Registration_No"].ToString();
        //    txtName.Text = dt.Rows[0]["Name"].ToString();
        //    txtDOB.Text = dt.Rows[0]["Date_Of_Birth"].ToString();
        //    Gender = dt.Rows[0]["Gender"].ToString();
        //    txtMobileNo.Text = dt.Rows[0]["Mobile"].ToString();
        //    txtEMailId.Text = dt.Rows[0]["Email_Id"].ToString();
        //    ddlState.Text = dt.Rows[0]["Statename"].ToString();
        //    ddlCollege.Text = dt.Rows[0]["CollegeName"].ToString();
        //    ddlCourse.Text = dt.Rows[0]["CourseName"].ToString();

        //    btnUpdate.Text = "Update";
            
        //}

        protected void GridViewList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewList_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void GridViewList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
        


        //private void btnDelete2_OnClick(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        LinkButton lnkBtn = (LinkButton)sender;
        //        string id = lnkBtn.CommandArgument.ToString();
        //        Update();
        //    }
        //    catch
        //    {
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...Delete2')", true);
        //    }
        //}
        // Delete method
        //protected void GridViewList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    int reg = Convert.ToInt32(GridViewList.DataKeys[e.RowIndex].Value);
        //    DataTable dt = dataAccess.GetDataTableWithProc("sp_DeleteStudentInfo", new SqlParameter[]
        //    {
        //        new SqlParameter("@Registration_No", reg)
        //    });
        //    BindGridViewList();
        //    if (dt.Rows[0]["Result"].ToString() == "1")
        //    {
        //        //lblMessage.Text = dt.Rows[0]["Message"].ToString();
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('" + dt.Rows[0]["Message"].ToString() + "')", true);

        //    }
        //    else
        //    {
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Some Technical Error occurred, Please visit after some time...')", true);
        //    }
        //}




    }
}