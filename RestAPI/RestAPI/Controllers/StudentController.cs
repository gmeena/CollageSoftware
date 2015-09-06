using DatabaseEntity.Account;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Dapper;
using DatabaseEntity;

namespace RestAPI.Controllers
{
    public class StudentController : ApiController
    {

        // GET api/student/

        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/student/GetStudents
        [HttpPost]
        public List<Student> GetStudents(DatabaseEntity.Account.Page pageobj)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            IEnumerable<Student> result;
            using (IDbConnection sqlConn = new SqlConnection(connStr))
            {
                try
                {
                    sqlConn.Open();
                    result = sqlConn.Query<Student>(Constant.USP_GetStudents, new { @page = pageobj.PageCount, @count = pageobj.Count }, commandType: CommandType.StoredProcedure);
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
            return result.ToList();
        }

        [HttpPost]
        public int UpdateAddStudent(DatabaseEntity.Account.Student student)
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            int result;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {

                    DataTable dt = new DataTable("Student");
                    dt.Columns.Add("Student_Id", typeof(Int32));
                    dt.Columns.Add("First_Name", typeof(String));
                    dt.Columns.Add("Middle_Name", typeof(String));
                    dt.Columns.Add("Last_Name", typeof(String));
                    dt.Columns.Add("DOB", typeof(DateTime));
                    dt.Columns.Add("Phone_Number", typeof(String));
                    dt.Columns.Add("Email", typeof(String));
                    dt.Columns.Add("Class", typeof(Int32));
                    dt.Columns.Add("Gender", typeof(Int32));

                    dt.Rows.Add(student.Student_Id, student.First_Name, student.Middle_Name,
                        student.Last_Name, Convert.ToDateTime(student.DOB), student.Phone, student.Email,
                        student.Class_Id, student.Gender);

                    using (SqlCommand cmd = new SqlCommand(Constant.USP_UpdateAddStudent))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = conn;
                        cmd.Parameters.AddWithValue("@StudentType", dt);
                        conn.Open();
                        result = cmd.ExecuteNonQuery();
                    }

                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    conn.Close();
                }
            }

            return result;
        }

        [HttpGet]
        public List<StudentClass> GetClass()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            IEnumerable<StudentClass> result;
            using (IDbConnection sqlConn = new SqlConnection(connStr))
            {
                try
                {
                    sqlConn.Open();
                    result = sqlConn.Query<StudentClass>(Constant.USP_GetClass, commandType: CommandType.StoredProcedure);
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
            return result.ToList();
        }

        // GET api/student/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/student
        public void Post([FromBody]string value)
        {
        }

        // PUT api/student/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/student/5
        public void Delete(int id)
        {
        }
    }
}
