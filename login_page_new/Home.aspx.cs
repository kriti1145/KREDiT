using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace login_page_new
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



    }
}