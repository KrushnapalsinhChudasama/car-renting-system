using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Carr
{
    public partial class User_Ragister : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        SqlCommand cmd;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtRegPassword.Text != txtRegConfirmPassword.Text)
            {
                Response.Write("<script>alert('Passwords do not match.');</script>");
                return;
            }
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    cmd = new SqlCommand("insert into User_Ragister_tbl (User_Name, User_Email, Address, City, Pincode, Mobile_No, User_Password) VALUES ('" + txtRegName.Text + "','" + txtRegEmail.Text + "','" + txtRegAddress.Text + "','" + txtRegCity.Text + "','" + txtRegPincode.Text + "','" + txtRegMobile.Text + "','" + txtRegPassword.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("user_Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void l_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Login.aspx");
        }
    }
}