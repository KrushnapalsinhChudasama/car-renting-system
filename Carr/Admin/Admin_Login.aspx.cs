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
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        SqlCommand cmd;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void connection()
        {
            con = new SqlConnection(Constr);
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

                connection();
                string query = "SELECT * FROM Admin_Login_tbl WHERE Email = @Email AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", txtLoginEmail.Text);
                    cmd.Parameters.AddWithValue("@Password", txtLoginPassword.Text);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count >= 1)
                    {
                        Response.Redirect("AddProduct.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Email or Password. Please try again.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void a_r_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Admin_Ragisterr.aspx");
        }
    }
}