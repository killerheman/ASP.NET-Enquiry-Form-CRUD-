using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class Display : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["empid"] != null)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "delete from tbl_enquiry where empid='" + Request.QueryString["empid"] + "'";
            SqlCommand sqlcmd = new SqlCommand(query, con);

            int n = sqlcmd.ExecuteNonQuery();
            con.Close();
        }


        GetRecord();
    }

    void GetRecord()
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "select * from tbl_enquiry";
            SqlDataAdapter sqldata = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sqldata.Fill(dt);
            con.Close();
            StringBuilder sb = new StringBuilder();
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    sb.Append("<table border='1' width='90%' >");
                    sb.Append("<tr class='active' ><th>Emp ID</th>");
                    sb.Append("<th>Name</th>");
                    sb.Append("<th>Gender</th>");
                    sb.Append("<th>Mobile No.</th>");
                    sb.Append("<th>Email</th>");
                    sb.Append("<th>District</th>");
                    sb.Append("<th>Enquiry Text</th>");
                    sb.Append("<th>Response</th>");
                    sb.Append("<th>Post Date</th>");
                    sb.Append("<th  >Edit</th>");
                    sb.Append("<th  >Delete</th>");
                    sb.Append("</tr>");

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        sb.Append("<tr>");
                        sb.Append("<td>" + (i + 1) + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["name"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["gender"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["mobileno"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["email"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["district"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["enqtxt"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["response"] + "</td>");
                        sb.Append("<td>" + dt.Rows[i]["postdate"] + "</td>");
                        sb.Append("<td class='btn btn-default' ><a href='edit.aspx?empid=" + dt.Rows[i]["empid"] + "'><em class='fa fa-edit'></em></a></td>");
                        sb.Append("<td class='btn btn-danger'><a href='#' onclick='del(this)'><em class='fa fa-trash'></em></a><span style='display:none;'>" + dt.Rows[i]["empid"] + "</span></td>");

                        sb.Append("</tr>");
                    }
                    sb.Append("</table>");
                    DataView.Text = sb + "";
                }
            }
        }
        catch { }

    }
}