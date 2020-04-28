using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Patient
{
    public partial class PatientIndex : System.Web.UI.Page
    {
        int patientid=0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetPatientData();
            }
        }

        private void GetPatientData()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();
            PatientDataGrid.DataSource = dbcontext.TBLPATIENTs;
            PatientDataGrid.DataBind();

        }



        protected void PatientDataGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void PatientDataGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            patientid = Convert.ToInt32(PatientDataGrid.SelectedDataKey["patient_ID"].ToString());

            //Session["SelectedID"] = patientid;

            Response.Redirect("~/Patient/PatientDetails.aspx?id="+patientid);

        }


        //sNot finalize
        protected void PatientDataGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int empid = Convert.ToInt32(PatientDataGrid.DataKeys[e.RowIndex].Values["patient_ID"].ToString());


            Response.Write(empid);
        }



        // Done
        protected void PatientDataGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            patientid = Convert.ToInt32(PatientDataGrid.DataKeys[e.RowIndex].Values["patient_ID"].ToString());

            if (patientid != 0) { 
            using (ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext())
            {

                TBLPATIENT patient = dbcontext.TBLPATIENTs.SingleOrDefault(p => p.patient_ID == patientid);
                dbcontext.TBLPATIENTs.DeleteOnSubmit(patient);
                dbcontext.SubmitChanges();
                GetPatientData();

            }
            }
        }

 
    }
}