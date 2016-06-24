using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class FamilyMember : Person
    {
        public int FamilyMember_Id { get; set; }
        public int Relation_Id { get; set; }
    }
}
