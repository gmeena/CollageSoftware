using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity
{
    public class RequestService
    {
        public int Request_Id { get; set; }
        public int Requester_Id { get; set; }
        public int Workflow_Id { get; set; }
        public int Request_Status { get; set; }
        public DateTime Requested_On { get; set; }
        public DateTime Closed_On { get; set; }
    }
}
