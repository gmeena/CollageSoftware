﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MySoftware.Account.FeeControl
{
    /// <summary>
    /// Summary description for StudentDetail
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class StudentDetail : System.Web.Services.WebService
    {

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public string[] GetStudentList(string prefixText, int count)
        {
            DAL.StudentFees.FeesModule feeModule = new DAL.StudentFees.FeesModule();
            return feeModule.GetStudent(prefixText, count);
        }
    }
}
