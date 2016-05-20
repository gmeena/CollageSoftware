namespace DatabaseEntity
{
    public interface IWorkFlowStep
    {
        string CurrentStepName { get; set; }
        WorkFlowStep NextStep { get; set; }
        WorkFlowStep PreviousStep { get; set; }
    }
}