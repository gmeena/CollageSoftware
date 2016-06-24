using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseEntity.Account;

namespace DatabaseEntity.Leave
{
    public class LeaveDetails : Person
    {
        public int Leave_Type { get; set; }
        public int Balance { get; set; }
    }
}
