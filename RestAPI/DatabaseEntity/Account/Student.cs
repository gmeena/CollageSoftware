using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class Student : Person
    {
        public string Student_Name { get; set; }
        
        public string Class { get; set; }
        public int Class_Id { get; set; }
        
        public int StudentCount { get; set; }
    }
}
