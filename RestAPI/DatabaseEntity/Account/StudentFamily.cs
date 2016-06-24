using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class StudentFamily
    {
        public int StudentFamily_Id { get; set; }
        public string Student_Name { get; set; }
        public int Student_Id { get; set; }
        public int RelationType_Id { get; set; }
        public string RelationType { get; set; }
        public string FamilyName { get; set; }
        public string Phone { get; set; }
        public string Gender { get; set; }
        public int Gender_Id { get; set; }
    }
}
