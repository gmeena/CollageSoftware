using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity
{
    public class WorkFlowStep : IWorkFlowStep
    {
        public WorkFlowStep PreviousStep { get; set; }
        public WorkFlowStep NextStep { get; set; }

        public string CurrentStepName { get; set; }
    }
}
