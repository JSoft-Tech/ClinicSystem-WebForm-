using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Accounts
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {

           if(loginEmailTB.Text !=null && LoginPasswordTB.Text != null)
            {

                ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();

                var LinqQuery = (from userrole in dbcontext.TBLUSERROLEs
                                 join user in dbcontext.TBLUSERs on userrole.userID equals user.userID
                                 join role in dbcontext.TBLROLEs on userrole.roleID equals role.roleID
                                 where user.userEmail == loginEmailTB.Text && user.userpassword == LoginPasswordTB.Text && user.is_Active == 'Y'
                                 select new
                                 {

                                     user.userName,
                                     user.userEmail,
                                     user.userpassword,
                                     role.roleName,
                                     userrole.userRoleDesc

                                 }).SingleOrDefault();
                                      //FirstOrDefault();

                if (LinqQuery != null){
                    Session["Usr_Name"] = LinqQuery.userName;
                    Session["Usr_Name"] = LinqQuery.userpassword;
                    Session["Usr_Password"] = LinqQuery.userpassword;
                    Session["Usr_Role"] = LinqQuery.roleName;
                    Session["Usr_RoleDesc"] = LinqQuery.userRoleDesc;


                    Response.Redirect("~/Home/HomeIndex.aspx");
                }
                else {
                    Console.WriteLine("Incorrect Username or Password");
                }
    
            }

           
          
        }
    }
}