using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

namespace MySoftware.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DAL.Login login = new DAL.Login();

            bool x = login.DoLogin(UserName.Text,Password.Text);

            if (x)
            {
                Response.Redirect("~/Account/Manage.aspx");
            }
            else
            {
                FailureText.Text = "UserName or Password is incorrect";
            }
        }
    }
}