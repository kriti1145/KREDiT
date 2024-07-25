using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace login_page_new
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        //declare a string variable which will hold the connection string
        DataAccess dataAccess = new DataAccess();
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        string Gender = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                State();
                District();
                Block();
                BindGridViewList();
            }
        }

        //-----CASCADING DROPDOWNLIST
        protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
        {
            District();
            Block();
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            Block();
        }

        void State()
        {
            dataAccess.FillDropDownList(ddlState, "Select Id , Statename From tblState  Where IsActive='Y' Order By Statename", "Id", "Statename", "--Select--", new SqlParameter[] { });
        }
        void District()
        {

            dataAccess.FillDropDownList(ddlDistrict, "Select Id , Name From tblDistrict Where StateId = @StateId AND IsActive='Y' Order By Name", "Id", "Name", "--Select--", new SqlParameter[]
            {
              new SqlParameter("@StateId",ddlState.SelectedValue.ToUpper())
            });
        }
        void Block()
        {

            dataAccess.FillDropDownList(ddlBlock, "Select Id , Name From tblBlock Where DistrictId = @DistrictId AND IsActive='Y' Order By Name", "Id", "Name", "--Select--", new SqlParameter[]
            {
               new SqlParameter("@DistrictId",ddlDistrict.SelectedValue.ToUpper())
            });
        }

        //gridview 
        private void BindGridViewList()
        {
            try
            {
                DataTable dt = dataAccess.GetDataTableWithProc("sp_GridView", new SqlParameter[]  {
                });

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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = dataAccess.GetDataTableWithProc("GetStuffByStatus", new SqlParameter[]  {
                                new SqlParameter("@StateId", ddlState.SelectedValue),
                                new SqlParameter("@DistrictId", ddlDistrict.SelectedValue),
                                new SqlParameter("@BlockId", ddlBlock.SelectedValue)

                });

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

    }
}