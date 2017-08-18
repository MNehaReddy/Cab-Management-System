using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace Transportation
{
    public partial class LocationSearch : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           // Response.Redirect("querystring2.aspx?sname=" + txtSname.Text + "&sid=" + txtSid.Text);

            Response.Redirect("BookCab.aspx?q=" + txtSource.Value + "&dist=" + dist.Value);
           
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        
    }
}