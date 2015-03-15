using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DatabaseEntity.Account;
using System.Data.SqlClient;
using System.Configuration;

namespace RestAPI.Controllers
{
    public class AccountController : ApiController
    {
        // GET api/account
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/account/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/account
        
        public void Post([FromBody]string value)
        {
        }
        
        [HttpPost]
        public bool UserLogin(UserLogin userLogin)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            bool result = false;
            using (SqlConnection sqlConn = new SqlConnection(connStr))
            {
                try
                {
                    sqlConn.Open();
                    string str = "insert into Login (EmailAddress,Password) values ('" + userLogin.Email + "','" + userLogin.Password + "')";
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

        // PUT api/account/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/account/5
        public void Delete(int id)
        {
        }
    }
}
