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
    public partial class User_Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
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

        void id()
        {
            connection();
            da = new SqlDataAdapter("select * from User_Ragister_tbl Where User_Email = '" + txtLoginEmail.Text + "' AND User_Password = '" + txtLoginPassword.Text + "' ", con);
            ds = new DataSet();
            da.Fill(ds);

            int id = Convert.ToInt16(ds.Tables[0].Rows[0][0].ToString());
            Session["User_ID"] = id;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

                connection();
                string query = "SELECT * FROM User_Ragister_tbl WHERE User_Email = @Email AND User_Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", txtLoginEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtLoginPassword.Text.Trim());

                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count >= 1)
                    {
                        id();
                        Response.Redirect("Daskboard.aspx");
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

        protected void r_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Register.aspx");
        }
    }
}