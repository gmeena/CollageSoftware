using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseEntity.Account;

namespace DatabaseEntity.Leave_Manager
{
    public class LeaveDetails : ILeaveDetails
    {
        public int Leave_Type { get; set; }
        public int Balance { get; set; }
    }
}
