using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Carr
{
    public partial class Car : System.Web.UI.Page
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
            if (Convert.ToInt32(Request.QueryString["id"]) != 0)
            {
                da = new SqlDataAdapter("select * from AddProduct where Id='" + Request.QueryString["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "cmd_book")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Order.aspx?id=" + id);
            }
        }
    }
}