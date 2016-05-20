using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity
{
    public class WorkflowManager : IWorkflowManager
    {
        public int Workflow_Id { get; set; }
        public List<WorkFlowStep> Workflow_Steps { get; set; }
        public int Step_Duration { get; set; }
        
    }
}
