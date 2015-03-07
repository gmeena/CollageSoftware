using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace MySoftware.DAL
{
    public class Login
    {
        public bool DoLogin(string userName, string password)
        {
            bool result = false;
            using (SqlConnection sqlConn = new SqlConnection(CommanClass.CommanClass.connStr))
            {
                try
                {
                    sqlConn.Open();
                    SqlCommand sqlCmd = new SqlCommand("select Count(*) from Login where EmailAddress = '" + userName + "' and Password = '" + password + "' ", sqlConn);
                    object i = sqlCmd.ExecuteScalar();

                    if (Convert.ToInt32(i) > 0)
                    {
                        result = true;
                    }
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    sqlConn.Close();
                }
            }
            return result;
        }

        public bool Registration(string userName, string email, string password)
        {
            bool result = false;
            using (SqlConnection sqlConn = new SqlConnection(CommanClass.CommanClass.connStr))
            {
                try
                {
                    sqlConn.Open();
                    string str = "insert into Login (UserName,Password,RoleId,EmailAddress) values ('"+userName+"','"+password+"',1,'"+email+"')";
                    SqlCommand sqlCmd = new SqlCommand(str, sqlConn);
                    sqlCmd.ExecuteNonQuery();
                    result = true;
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    sqlConn.Close();
                }
            }
            return result;
        }

        public bool EmailExist(string email)
        {
            bool result = false;
            using (SqlConnection sqlConn = new SqlConnection(CommanClass.CommanClass.connStr))
            {
                try
                {
                    sqlConn.Open();
                    SqlCommand sqlCmd = new SqlCommand("select Count(*) from Login where EmailAddress = '" + email + "'", sqlConn);
                    object i = sqlCmd.ExecuteScalar();

                    if (Convert.ToInt32(i) > 0)
                    {
                        result = true;
                    }
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    sqlConn.Close();
                }
            }
            return result;
        }
    }
}