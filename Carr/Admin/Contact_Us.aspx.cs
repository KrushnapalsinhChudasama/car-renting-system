using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Diagnostics.Eventing.Reader;

namespace Carr.Admin
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt;
        SqlCommand cmd;

        string Constr = ConfigurationManager.ConnectionStrings["Shop_db"].ToString();
        int key;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void connection()
        {
            con = new SqlConnection(Constr);
            con.Open();
        }
    }
}