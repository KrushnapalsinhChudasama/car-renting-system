using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carr
{
    public partial class Order : System.Web.UI.Page
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
            fillData();
            fillData2();
        }

        void fillData()
        {
            connection();
            int id = Convert.ToInt16(Session["User_ID"]);
            da = new SqlDataAdapter("select * from User_Ragister_tbl Where Id='" + id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);

            txtnm.Text = ds.Tables[0].Rows[0][1].ToString();
            txtem.Text = ds.Tables[0].Rows[0][2].ToString();
            txtadd.Text = ds.Tables[0].Rows[0][3].ToString();
            txtci.Text = ds.Tables[0].Rows[0][4].ToString();
            txtpi.Text = ds.Tables[0].Rows[0][5].ToString();
            txtmo.Text = ds.Tables[0].Rows[0][6].ToString();
           

        }

        void fillData2()
        {
            connection();
            if (Convert.ToInt32(Request.QueryString["id"]) != 0)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                da = new SqlDataAdapter("select * from AddProduct Where Id='" + id + "' ", con);
                ds = new DataSet();
                da.Fill(ds);

                txtcm.Text = ds.Tables[0].Rows[0][2].ToString();
                txtcc.Text = ds.Tables[0].Rows[0][11].ToString();
                
            }

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        void clear()
        {
            txtnm.Text = "";
            txtem.Text = "";
            txtadd.Text = "";
            txtci.Text = "";
            txtpi.Text = "";
            txtmo.Text = "";


        }
        void clear2()
        {
            txtcm.Text = "";
            txtcc.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            connection();
            cmd = new SqlCommand("insert into User_Order_tbl(User_Name,User_Email,Address,City,Pincode,Mobile_No,Car_Model,Car_Color)values('" + txtnm.Text + "','" + txtem.Text + "','" + txtadd.Text + "','" + txtci.TabIndex + "','" + txtpi.Text + "','" + txtmo.Text + "','" + txtcm.Text + "','" + txtcc.Text + "')", con);
            cmd.ExecuteNonQuery();
            clear();
            clear2();
            Response.Redirect("Daskboard.aspx");
        }
    }
}