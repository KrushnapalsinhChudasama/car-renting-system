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
    public partial class Daskboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
        SqlCommand cmd;
        PagedDataSource pg;
        
        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;
        int p, row;
        void conn()
        {
            
            con = new SqlConnection(Constr);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayProduct();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "cmd_details")
            {
                int ids = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Car.aspx?id="+ids);
            }
        }

        void DisplayProduct()
        {
            conn();
            
            da = new SqlDataAdapter("select * from AddProduct", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 2;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
    }
}