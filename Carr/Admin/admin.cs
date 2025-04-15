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
    public class admin
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
        public void AddCategory(string cat)
        {
            connection();
            cmd = new SqlCommand("Insert into category (Category) values('" + cat + "')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet FillCategory()
        {

            connection();
            da = new SqlDataAdapter("select * from category", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        public DataSet select(int id)
        {
            connection();
            da = new SqlDataAdapter("select * from category where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet selectpro(int id)
        {
            connection();
            da = new SqlDataAdapter("select * from AddProduct   where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void UpdateCategory(string cat, int id)
        {
            connection();
            cmd = new SqlCommand("update category set category='" + cat + "' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void deleteCat(int id)
        {
            connection();
            cmd = new SqlCommand("Delete from category where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        public void AddProduct(string ty, string m, string re, string mi, string fu, string en, string po, string ge, string nos, string doo, string co, string pri ,string img)
        {
            connection();
            cmd = new SqlCommand("Insert into AddProduct (Car_Type,Car_Model,Car_Registration,Car_Mileage,Car_Fuel,Car_Engine_Size ,Car_Power,Car_Gearbox,Car_Number_Of_Seats,Car_Doors,Car_Color,Car_Price,Car_Images) " +
                "values('" + ty + "','" + m + "','" + re + "','" + mi + "','" + fu + "','" + en + "','" + po + "','" + ge + "','" + nos + "','" + doo + "','" + co + "','" + pri + "','" + img+"')", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet FillProduct()
        {

            connection();
            da = new SqlDataAdapter("select * from AddProduct", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        public DataSet selectProduct(int id)
        {
            connection();
            da = new SqlDataAdapter("select * from AddProduct where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void UpdateProduct(string ty, string m, string re, string mi, string fu,   string en, string po,string ge,string nos,string doo,string co,string pri, int id )
        {
            connection();
            cmd = new SqlCommand("update AddProduct set Car_Type='"+ty+"',Car_Model='"+m+ "',Car_Registration='" + re+"',Car_Mileage='"+mi+"',Car_Fule='"+fu+ "', Car_Engine_Size='" +en + "', Car_Power='"+po+ "',Car_Gearbox='"+ge+ "',Car_Number_Of_Seats='"+nos+ "',Car_Doors='"+doo+ "',Car_Color='"+co+ "',Car_Price='"+pri+"' where Id='" + id + "' ", con);
            cmd.ExecuteNonQuery();
        }
        public void deletepro(int id)
        {
            connection();
            cmd = new SqlCommand("Delete from AddProduct where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

    }
}