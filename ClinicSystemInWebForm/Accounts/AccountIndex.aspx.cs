using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Accounts
{
    public partial class AccountIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GetUserAccounts();

        }

        private void GetUserAccounts()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();

            UserAccountDataGrid.DataSource = from userrole in dbcontext.TBLUSERROLEs
                                             join user in dbcontext.TBLUSERs on userrole.userID equals user.userID
                                             join role in dbcontext.TBLROLEs on userrole.roleID equals role.roleID
                                             select new
                                             {
                                                 user.userID,
                                                 user.userName,
                                                 user.userEmail,
                                                 user.userPhone,
                                                 role.roleName,
                                                 userrole.userRoleDesc,
                                                 user.is_Active

                                             };


            UserAccountDataGrid.DataBind();


        }


    }
    }