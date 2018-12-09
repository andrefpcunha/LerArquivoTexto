using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.Configuration;

namespace WebApp.App
{
    public class DBConnection : DbContext
    {
        public DBConnection() : base("BDContext")
        {
        }

        public string ConnectionString()
        {
            return WebConfigurationManager.ConnectionStrings["BDContext"].ConnectionString;
        }
    }
}