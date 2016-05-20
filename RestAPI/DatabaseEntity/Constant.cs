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

        public enum CreditCycle
        {
            Daily = 0,
            Monthly = 1,
            Quaterly = 2,
            HalfYesrly = 3,
            Yearly = 4,
            Fullservice = 5
        }
    }
}
