using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Accounts
{
    public partial class RegisterationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegistrationWizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Redirect("~/Accounts/login.aspx");
        }

    }
}