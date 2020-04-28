using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Usr_Name"] == null || Session["Usr_Password"] == null)
            {
                
                Response.Redirect("~/Accounts/LoginPage.aspx");
              
            }

            userprofilehyperlink.Text = "<i class='fa fa-user fa-lg'> </i> " + Session["Usr_Name"].ToString();
        }

        protected void UserDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}