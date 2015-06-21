using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MySoftware.DAL;

namespace MySoftware.DAL.StudentFees
{
    public class FeesModule
    {
        public string[] GetStudent(string prefixText, int count)
        {
            using (SqlConnection sqlConn = new SqlConnection(CommanClass.CommanClass.connStr))
            {
                List<string> result = new List<string>();
                try
                {
                    sqlConn.Open();
                    SqlCommand sqlCmd = new SqlCommand(Constant.USP_GETSTUDENTDETAILS, sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.Add("@prefixText", SqlDbType.NVarChar).Value = prefixText;
                    sqlCmd.Parameters.Add("@count", SqlDbType.Int).Value = count;

                    SqlDataReader dr = sqlCmd.ExecuteReader();

                    while (dr.Read())
                    {
                        result.Add(Convert.ToString(dr["Name"]));
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
                return result.ToArray();
            }

        }
    }
}