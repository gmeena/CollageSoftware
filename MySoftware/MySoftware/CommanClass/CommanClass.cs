using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace MySoftware.CommanClass
{
    public static class CommanClass
    {
        public static string connStr
        {
            get { return ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString; }
        }
    }
}