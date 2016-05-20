using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseEntity.Leave_Manager;

namespace DatabaseEntity.Account
{
    public class Employee : Person
    {
        private ILeaveDetails EmployeeLeaveDetails;

        public ILeaveDetails GetEmployeeLeaveDetails(LeaveDetails leavedetail)
        {
            EmployeeLeaveDetails = leavedetail;
            return EmployeeLeaveDetails;
        }
    }
}
