using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Appointments
{
    public partial class CreateAppointment : System.Web.UI.Page
    {

     
        protected void Page_Load(object sender, EventArgs e)
        {

            ClinicManagementSystemDataContext dbcontext= new ClinicManagementSystemDataContext();

            AppointmentDoctorList.DataSource = from doctor in dbcontext.TBLDOCTORs
                                               where doctor.is_Active.Equals('Y')
                                               select new
                                               {
                                                   doctor.doctor_Name,
                                                   doctor.doctor_ID
                                               };
            AppointmentDoctorList.DataTextField = "doctor_Name";
            AppointmentDoctorList.DataValueField = "doctor_ID";


            AppointmentDoctorList.DataBind();



        }

        protected void SaveAppointment_Click(object sender, EventArgs e)
        {

            //using (ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext())
            //{

            //    TBLAPPOINTMENT newAppointment = new TBLAPPOINTMENT()
            //    {
            //        //appointment_Date = AppointmentDateTextBox.Text,
            //        //appointment_PatientID = 1 ,


            //    };

            //}

        }




    }
}