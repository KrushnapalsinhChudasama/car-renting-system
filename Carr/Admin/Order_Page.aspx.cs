using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carr.Admin
{
    public partial class Order_Page : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
        SqlCommand cmd;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

        public void connection()
        {
            con = new SqlConnection(Constr);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }

        void display()
        {
            connection();
            da = new SqlDataAdapter("Select * from User_Order_tbl ", con);
            ds = new DataSet();
            da.Fill(ds);

            Grid_1.DataSource = ds;
            Grid_1.DataBind();
        }
        void clear()
        {
            
        }
    }
}