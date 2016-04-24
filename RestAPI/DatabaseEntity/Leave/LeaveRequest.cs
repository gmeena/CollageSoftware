using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Leave
{
    public class LeaveRequest : RequestService
    {
        public int Leave_Type { get; set; }
        public DateTime Leave_Start { get; set; }
        public DateTime Leave_End { get; set; }
        public string Reason { get; set; }
    }
}
