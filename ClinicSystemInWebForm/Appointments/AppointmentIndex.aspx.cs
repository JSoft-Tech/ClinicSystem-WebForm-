using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Appointments
{
    public partial class AppointmentIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAppoinment();
        }
         
        private void GetAppoinment()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();

            AppointmentDataGrid.DataSource = from appointment in dbcontext.TBLAPPOINTMENTs join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                            join doctor in dbcontext.TBLDOCTORs on appointment.appointment_DoctorID equals doctor.doctor_ID 
                                            select new  {

                                                 appointment.appoinment_ID ,
                                                 patient.patient_Name ,
                                                 patient.patient_BirthDate ,
                                                 patient.patient_Phone ,
                                                 appointment.appointment_Date ,
                                                 doctor.doctor_Name ,
                                                 appointment.appointment_Status
                                            };

            AppointmentDataGrid.DataBind();


                //                            select new
                //                            {
                //                               Appoint_ID = appointment.
                //                            }; 

            //Select appoinment_ID,TBLPATIENT.patient_Name,TBLPATIENT.patient_Phone,appointment_Date,TBLDOCTOR.doctor_Name,appointment_Status from TBLAPPOINTMENT JOIN TBLPATIENT ON TBLAPPOINTMENT.appointment_PatientID = TBLPATIENT.patient_ID JOIN TBLDOCTOR ON TBLAPPOINTMENT.appointment_DoctorID = TBLDOCTOR.doctor_ID;

        }
    }
}