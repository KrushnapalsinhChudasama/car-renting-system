using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carr.Admin
{
    public partial class Addcat : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
        SqlCommand cmd;
        admin cs;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ConnectionString;

        public void connection()
        {
            cs = new admin();
            cs.connection();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connection();
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            connection();
            if (btn_save.Text == "Add")
            {
                cs.AddCategory(txt_cetegory.Text);
            }
            else
            {
                cs.UpdateCategory(txt_cetegory.Text, Convert.ToInt16(ViewState["id"]));
            }
            fillgrid();
        }
        void fillgrid()
        {
            cs = new admin();
            connection();
            GV_Category.DataSource = cs.FillCategory();
            GV_Category.DataBind();
        }

        void filltext()
        {
            cs = new admin();
            connection();
            ds = new DataSet();
            ds = cs.select(Convert.ToInt16(ViewState["id"]));
            txt_cetegory.Text = ds.Tables[0].Rows[0][1].ToString();
        }

        protected void GV_Category_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edit")
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
                cs.deleteCat(Convert.ToInt16(ViewState["id"]));
                fillgrid();
            }
        }
    }
}