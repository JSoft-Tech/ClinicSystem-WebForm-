using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Doctor
{
    public partial class DoctorIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDoctors();
        }

        private void GetDoctors()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();

            DoctorDataGrid.DataSource = dbcontext.TBLDOCTORs;
            DoctorDataGrid.DataBind();
        }
    }
}