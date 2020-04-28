using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Patient
{
    public partial class PatientDetails : System.Web.UI.Page
    {
        private int Id_OfPatient = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Id_OfPatient = int.Parse(Request.QueryString["id"]);
                GetSelectedPatient();
            }
              
        }

        

        private void GetSelectedPatient()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();


            var selected_Patient = from sel_Patient in dbcontext.TBLPATIENTs
                                   where sel_Patient.patient_ID == Id_OfPatient
                                   select sel_Patient;

            SelectedPatientDetail.DataSource = selected_Patient;
            SelectedPatientDetail.DataBind();
        }




        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        //public ClinicSystemInWebForm.TBLPATIENT PatientDetail_GetItem( int ? id)
        //{


        //    if (!IsPostBack)
        //    {
        //        id = Id_OfPatient;
        //    }
        //        ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();


        //    var selected_Patient = (from sel_Patient in dbcontext.TBLPATIENTs
        //                                where sel_Patient.patient_ID == id
        //                                select sel_Patient).SingleOrDefault();


        //    return selected_Patient;

        //}


    }
}