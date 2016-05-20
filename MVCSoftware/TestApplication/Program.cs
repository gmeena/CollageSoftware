using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseEntity;
using DatabaseEntity.Account;
using DatabaseEntity.Leave_Manager;

namespace TestApplication
{
    class Program
    {
        static void Main(string[] args)
        {

            Employee emp = new Employee();
            emp.First_Name = "Girish";
            emp.Last_Name = "Meena";            

            Console.Write("Hello");
            Console.Read();
        }
    }
}
