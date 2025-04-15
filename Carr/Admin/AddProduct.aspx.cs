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


namespace Carr.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
        SqlCommand cmd;
        admin cs;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;
        string fnm;
        void conn()
        {
            admin cs = new admin();
            cs.connection();
            con = new SqlConnection(Constr);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDropdown();
                fillgrid();
            }
        }
        void fillDropdown()
        {
            conn();
            da = new SqlDataAdapter("select * from category", con);
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ddl_category.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        void fillgrid()
        {
            cs = new admin();
            conn();
            grid_products.DataSource = cs.FillProduct();
            grid_products.DataBind();
        }
        void uploadimage()

        {
            if (flimg.HasFile)
            {
                fnm = "../Admin/Images/" + flimg.FileName;
                flimg.SaveAs(Server.MapPath(fnm));
            }
        }
        protected void btn_save_Click(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_update")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                btn_save.Text = "Update";
                filltext();
            }
            else
            {
                cs = new admin();
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                cs.deletepro(Convert.ToInt16(ViewState["id"]));
                fillgrid();
                clearIndex();
            }
        }
        void filltext()
        {
            cs = new admin();
            conn();
            ds = new DataSet();

            ds = cs.selectpro(Convert.ToInt16(ViewState["id"]));

            txt_ty.Text = ds.Tables[0].Rows[0][1].ToString();
            txt_m.Text = ds.Tables[0].Rows[0][2].ToString();
            txt_r.Text = ds.Tables[0].Rows[0][3].ToString();
            txt_mi.Text = ds.Tables[0].Rows[0][4].ToString();
            
            ddl_category.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
            txt_esi.Text = ds.Tables[0].Rows[0][6].ToString();
            txt_po.Text = ds.Tables[0].Rows[0][7].ToString();
            txt_ge.Text = ds.Tables[0].Rows[0][8].ToString();
            txt_nos.Text = ds.Tables[0].Rows[0][9].ToString();
            txt_do.Text = ds.Tables[0].Rows[0][10].ToString();
            txt_col.Text = ds.Tables[0].Rows[0][11].ToString();
            txt_pri.Text = ds.Tables[0].Rows[0][12].ToString();
        }


        void clearIndex()
        {
            txt_ty.Text = "";
            txt_m.Text = "";
            txt_r.Text = "";
            txt_mi.Text = "";
            txt_esi.Text = "";
            txt_po.Text = "";
            txt_ge.Text = "";
            txt_nos.Text = "";
            txt_do.Text = "";
            txt_col.Text = "";
            txt_pri.Text = "";
            ddl_category.SelectedValue = "--Select Category--";
            btn_save.Text = "Save";

            grid_products.SelectedIndex = -1;
        }

        protected void btn_save_Click1(object sender, EventArgs e)
        {
            conn();
            uploadimage();
            cs = new admin();
            if (btn_save.Text == "Save")
            {
                cs.AddProduct(txt_ty.Text, txt_m.Text, txt_r.Text, txt_mi.Text, ddl_category.SelectedValue.ToString(), txt_esi.Text, txt_po.Text, txt_ge.Text, txt_nos.Text, txt_do.Text, txt_col.Text, txt_pri.Text, fnm);
            }
            else
            {
                cs.UpdateProduct(txt_ty.Text, txt_m.Text, txt_r.Text, txt_mi.Text, ddl_category.SelectedValue.ToString(), txt_esi.Text, txt_po.Text, txt_ge.Text, txt_nos.Text, txt_do.Text, txt_col.Text, txt_pri.Text, Convert.ToInt16(ViewState["id"]));

            }
            fillgrid();
            clearIndex();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
