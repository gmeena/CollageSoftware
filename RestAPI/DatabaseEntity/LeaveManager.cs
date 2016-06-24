using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity
{
    class LeaveManager
    {

    }

    public interface ILeaveDetails
    {
        int Balance { get; set; }
        int Leave_Type { get; set; }
    }

    public class LeaveDetails : ILeaveDetails
    {
        public int Leave_Type { get; set; }
        public int Balance { get; set; }
    }

    #region Leave Type
    interface ILeaveType
    {
        string LeaveTypeName { get; }
        int CreditCount { get; }
        int CreditCycle { get; }
    }

    public class LeaveType : ILeaveType
    {
        public int CreditCount
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public int CreditCycle
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public string LeaveTypeName { get; set; }
    }

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

    #endregion

    public class LeaveRequest : IRequestService
    {
        public int Leave_Type { get; set; }
        public DateTime Leave_Start { get; set; }
        public DateTime Leave_End { get; set; }
        public string Reason { get; set; }
        public DateTime Closed_On { get; set; }
        public DateTime Requested_On { get; set; }
        public int Requester_Id { get; set; }
        public int Request_Id { get; set; }
        public int Request_Status { get; set; }
        public int Workflow_Id { get; set; }
    }
}
