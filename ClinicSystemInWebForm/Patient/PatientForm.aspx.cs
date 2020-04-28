using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Patient
{
    public partial class PatientForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void InsertPatient()
        {
            using (ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext())  
            {
                TBLPATIENT newPatient = new TBLPATIENT()
                {
                    patient_Name = Patient_NameTB.Text,
                    patient_Gender = GenderDropDownList.SelectedValue,
                    patient_BirthDate = PatientBirthTB.Text,
                   /* patient_BirthDate = DateTime.Parse(PatientBirth.Text),*/
                    patient_Height = Patient_Height.Text,
                    patient_Weight = Int32.Parse(Patient_Weight.Text) ,   
                    patient_Phone = Patient_Phone.Text,
                    patient_Email = Patient_EAddressTB.Text,
                    patient_Address = PatientAddressTB.Text
                };

                dbcontext.TBLPATIENTs.InsertOnSubmit(newPatient);
                dbcontext.SubmitChanges();

            }
            
        }

        protected void PatientSavebtn_Click(object sender, EventArgs e)
        {
           InsertPatient();
        }
    }
}