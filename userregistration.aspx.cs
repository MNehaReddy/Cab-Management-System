using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Transportation
{
    public partial class userregistration : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.AppSettings["constring"];
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(constring);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Users values('" + txtUname.Text + "','" + txtPno.Text + "','" + txtEmail.Text + "','" + txtPwd.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>('Register Successfully')</script>");
                Response.Redirect("userlogin.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<script>('Register Failed. User Name you choosed is already exist. please try with another username.')</script>");
            }
        }
    }
}