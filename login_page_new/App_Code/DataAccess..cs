using System;
using System.Data;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//using Microsoft.Security.Application;
public class DataAccess
{
    SqlConnection con = new SqlConnection();
    SqlTransaction Trans;
    public DataAccess()
    { 
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}
    public DataTable FillDropDownList(DropDownList ddl, string sql, string valueField, string textField, string prompt, SqlParameter[] param)
    {
        DataTable dt = GetDataTable(sql, param);
        ddl.DataSource = dt; 
        ddl.DataTextField = textField;
        ddl.DataValueField = valueField;
        ddl.DataBind();
        if (prompt == "")
            ddl.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select--", "0"));
        else
            ddl.Items.Insert(0, new System.Web.UI.WebControls.ListItem(prompt, "0"));
        return dt;
    }
    public DataTable FillDropDownList(int idx,DropDownList ddl, string sql, string valueField, string textField, string prompt, SqlParameter[] param)
    {
        DataTable dt = GetDataTable(sql, param);
        ddl.DataSource = dt;
        ddl.DataTextField = textField;
        ddl.DataValueField = valueField;
        ddl.DataBind();
        if (prompt == "")
            ddl.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select--", "0"));
        else
            ddl.Items.Insert(0, new System.Web.UI.WebControls.ListItem(prompt, "0"));
        if(dt.Rows.Count > 0)
            ddl.SelectedIndex = idx;
        return dt;
    }
    public DataTable GetDataTable(string query)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            SqlDataAdapter adap1 = new SqlDataAdapter();
            cmd.Connection = con;
            adap1.SelectCommand = cmd;
            adap1.Fill(dt);
            adap1.Dispose();
            return dt;
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred,Please visit after some time...");
            con.Close();
            return dt;
        }
        finally
        {
            con.Close();
        }
    }
    public DataTable GetDataTable(string query, SqlParameter[] param)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            foreach (SqlParameter prm in param)
            {
                cmd.Parameters.Add(prm);
            }
            SqlDataAdapter adap1 = new SqlDataAdapter();
            cmd.Connection = con;
            adap1.SelectCommand = cmd;
            adap1.Fill(dt);
            adap1.Dispose();
            return dt;
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return dt;
        }
        finally
        {
            con.Close();
        }
    }
    public DataTable GetDataTableWithProc(string ProcName, SqlParameter[] param)
    {
        DataTable dt = new DataTable();
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = ProcName;
            foreach (SqlParameter prm in param)
            {
                cmd.Parameters.Add(prm);
            }
            SqlDataAdapter adap1 = new SqlDataAdapter();
            cmd.Connection = con;
            cmd.CommandTimeout = 0;
            adap1.SelectCommand = cmd;
            adap1.Fill(dt);
            adap1.Dispose();
            return dt;
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return dt;
        }
        finally
        {
            con.Close();
        }
    }
    public int ExecuteSql(string Query)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string strCommand = Query;
            cmd.CommandText = strCommand;
            cmd.Connection = con;
            return cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public int ExecuteSql(string Query, SqlParameter[] param)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = Query;
            foreach (SqlParameter prm in param)
            {
                cmd.Parameters.Add(prm);
            }
            cmd.Connection = con;
            return cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public int ExecuteSql(string Query, SqlParameter[] param, Label lblMsg)
    {
        try
        {
            SqlCommand SqlCmd = new SqlCommand();
            SqlCmd.Connection = con;
            SqlCmd.Transaction = Trans;

            SqlCmd.CommandType = CommandType.Text;
            SqlCmd.CommandText = Query;
            SqlCmd.Parameters.Clear();
            foreach (SqlParameter prm in param)
            {
                SqlCmd.Parameters.Add(prm);
            }
            SqlCmd.Connection = con;
            return SqlCmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            //lblMsg.Text = Encoder.HtmlEncode(ex.Message);
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public string ExecuteScalar(string strSql)
    {
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = strSql;
            cmd.Connection = con;
            cmd.Connection.Open();
            return cmd.ExecuteScalar().ToString();
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some technical error occurred, Please visit after some time...");
            return "";
        }
        finally
        {
            con.Close();
        }
    }
    public byte[] ExecuteScalar(string strSql, SqlParameter[] param)
    {
        SqlCommand cmd = new SqlCommand();
        try
        {
            con.Open();
            cmd.CommandText = strSql;
            foreach (SqlParameter prm in param)
            {
                cmd.Parameters.Add(prm);
            }
            cmd.Connection = con;
            return (byte[])cmd.ExecuteScalar();
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some Technical Error occurred,Please visit after some time");
            return null;
        }
        finally
        {
            con.Close();
        }
    }
    public void OpenConnection()
    {
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
    }
    public void CloseConnection()
    {
        con.Close();
    }
    public void BeginTransaction()
    {
        SqlCommand cmd = new SqlCommand();
        Trans = con.BeginTransaction(IsolationLevel.Serializable);
        cmd.Transaction = Trans;
    }
    public void BeginTransaction(IsolationLevel level)
    {
        SqlCommand cmd = new SqlCommand();
        Trans = con.BeginTransaction(level);
        cmd.Transaction = Trans;
    }
    public void Commit()
    {
        Trans.Commit();
    }
    public void Rollback()
    {
        Trans.Rollback();
    }
    public int ExecuteSqlTrans(string SqlStr)
    {
        SqlCommand cmd = new SqlCommand();
        try
        {
            cmd.CommandText = SqlStr;
            return cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ExceptionLogging.SendErrorToText(ex);
            HttpContext.Current.Response.Write("Some Technical Error occurred,Please visit after some time");
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
    public string getPath()
    {
        string Eurl = "http://fts.bih.nic.in";
        return Eurl;
    }
}