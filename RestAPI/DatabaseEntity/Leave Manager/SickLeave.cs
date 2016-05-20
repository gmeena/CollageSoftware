using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Leave_Manager
{
    public class SickLeave : ILeaveType
    {
        private IWorkflowManager SickWorkFlowManager;

        SickLeave(WorkflowManager wflow)
        {
            SickWorkFlowManager = wflow;
        }
        public int CreditCount
        {
            get
            {
                return 2;
            }
        }

        public int CreditCycle
        {
            get
            {
                return (int)Constant.CreditCycle.Monthly;
            }
        }

        public string LeaveTypeName
        {
            get
            {
                return Constant.Sick_Leave;
            }
        }
    }
}
