using System;

namespace DatabaseEntity
{
    public interface IRequestService
    {
        DateTime Closed_On { get; set; }
        DateTime Requested_On { get; set; }
        int Requester_Id { get; set; }
        int Request_Id { get; set; }
        int Request_Status { get; set; }
        int Workflow_Id { get; set; }
    }
}