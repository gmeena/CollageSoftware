using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class StudentAddress
    {
        public int StudentAddress_Id { get; set; }
        public string Student_Name { get; set; }
        public int Student_Id { get; set; }
        public int AddressType_Id { get; set; }
        public string AddressType { get; set; }
        public int City_Id { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        public string ZipCode { get; set; }
    }
}
