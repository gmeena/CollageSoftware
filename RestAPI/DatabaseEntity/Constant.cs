using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity
{
    public static class Constant
    {
        public static string USP_GetStudents = "usp_GetStudents";
        public static string USP_GetClass = "usp_GetClass";
        public static string USP_UpdateAddStudent = "usp_UpdateAddStudent";

        public static string Sick_Leave = "Sick Leave";

        #region Entity Codes
        public static string DSM = "DSM";
        #endregion

        public enum CreditCycle
        {
            Daily = 0,
            Monthly = 1,
            Quaterly = 2,
            HalfYesrly = 3,
            Yearly = 4,
            Fullservice = 5
        }
        public static string USP_GetAddressType = "usp_GetAddressType";
        public static string USP_GetCity = "usp_GetCity";
        public static string USP_GetStudentsAddress = "usp_GetStudentsAddress";
        public static string USP_GetRelationType = "usp_GetRelationType";
        public static string USP_GetStudentsFamily = "usp_GetStudentsFamily";
        
            
    }
}
