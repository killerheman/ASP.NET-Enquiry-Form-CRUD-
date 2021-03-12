using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class edit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["empid"] != null)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string id = Request.QueryString["empid"].ToString();
                string query = "select * from tbl_enquiry where empid=" + id + "";
                SqlDataAdapter sqldata = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                sqldata.Fill(dt);
                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        hid.Value = id;
                    }
                }
            }
        }
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        string query = "update tbl_employee set response='" + TxtResponse.Text + "' where empid='" + hid.Value + "' ";

        SqlCommand sqlcmd = new SqlCommand(query, con);
        sqlcmd.ExecuteNonQuery();
        Response.Redirect("Display.aspx");
    }
}