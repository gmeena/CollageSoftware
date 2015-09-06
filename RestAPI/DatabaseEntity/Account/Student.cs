﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseEntity.Account
{
    public class Student
    {
        public int Student_Id { get; set; }
        public string Student_Name { get; set; }
        public string First_Name { get; set; }
        public string Middle_Name { get; set; }
        public string Last_Name { get; set; }
        public string DOB { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Class { get; set; }
        public int Class_Id { get; set; }
        public string Gender { get; set; }
        public int Gender_Id { get; set; }
        public int StudentCount { get; set; }
    }
}
