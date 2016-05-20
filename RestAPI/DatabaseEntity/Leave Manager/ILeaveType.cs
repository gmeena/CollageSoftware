namespace DatabaseEntity.Leave_Manager
{
    interface ILeaveType
    {
        string LeaveTypeName { get; }
        int CreditCount { get; }
        int CreditCycle { get; }

    }
}