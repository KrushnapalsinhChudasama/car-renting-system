using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Carr.Admin
{
    public partial class Admin_Ragisterr : System.Web.UI.Page
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
            if (txtrepa.Text != txtRegConfirmPassword.Text)
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
                    cmd = new SqlCommand("insert into Admin_Login_tbl (Email,Password) VALUES ('" + txtRegEmail.Text + "','" + txtrepa.Text + "')", con);
                    cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void a_l_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void a_l_btn_Click1(object sender, EventArgs e)
        {

        }
    }
}