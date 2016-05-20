using System.Collections.Generic;

namespace DatabaseEntity
{
    public interface IWorkflowManager
    {
        int Step_Duration { get; set; }
        int Workflow_Id { get; set; }
        List<WorkFlowStep> Workflow_Steps { get; set; }
    }
}