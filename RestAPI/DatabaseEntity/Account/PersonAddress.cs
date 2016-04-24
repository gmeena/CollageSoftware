using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class PersonAddress : Person
    {
        public int Address_Id { get; set; }
        public int Address_Type { get; set; }
        public int City_Id { get; set; }
        public string AddressLine1 { get; set; }
        public long PinCode { get; set; }
    }
}
