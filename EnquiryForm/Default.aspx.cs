using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string gender = (Rbtn_Male.Checked == true) ? "Male" : (Rbtn_Female.Checked == true) ? "Female" : "";
            string query = "insert into tbl_enquiry(name,gender,mobileno,email,district,enqtxt,postdate) values('" + TxtName.Text.Trim() + "','" + gender + "','" + TxtMobileno.Text.Trim() + "','" + TxtEmail.Text.Trim() + "','" + DDLDist.SelectedItem.Text + "','" + TxtEnquiry.Text.Trim() + "','" + DateTime.Now + "')";
            SqlCommand sqlcmd = new SqlCommand(query, con);  //SqlCommand :- Used for CRUD operation
            int n = sqlcmd.ExecuteNonQuery();
            if (n > 0)
            {
                LblMsg.Text = "Enquiry Successfully Sent !";
                LblMsg.Style.Add("color", "green");
            }
            else
            {
                LblMsg.Text = "Enquiry is not successfully sent !";
            }

        }
        catch (Exception ex)
        {
            LblMsg.Text = "Server Error," + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

}