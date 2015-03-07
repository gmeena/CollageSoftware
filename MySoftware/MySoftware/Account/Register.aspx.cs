using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Drawing;

namespace MySoftware.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DAL.Login login = new DAL.Login();

            bool emailExist = login.EmailExist(Email.Text);
            if (!emailExist)
            {
                bool x = login.Registration(UserName.Text, Email.Text, Password.Text);

                if (x)
                {
                    SuccessMessage.Text = "Its Success, please login <a href='Login.aspx'> here </a>";
                }
                else
                {
                    ErrorMessage.Text = "Error, please try later";
                }
            }
            else
            {
                liemail.Text = "Email already registered, please try with different email.";               
            }
        }
    }
}