using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Transportation
{
    public partial class userlogin : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.AppSettings["constring"];
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("select username,Password,EmailId,PhNo from Users where username='" + txtUid.Text + "' and password='" + txtPwd.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["EmailId"] = dr["EmailId"].ToString();
                Session["username"] = dr["username"].ToString();
                Session["PhNo"] = dr["PhNo"].ToString();
                Response.Redirect("LocationSearch.aspx");
            }
            else
            {
                Response.Write("<script>alert('Ener valid Userid and password')</script>");
            }
            con.Close();
        }
    }
}