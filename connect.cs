using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace supermarket
{
    public class connect
    {

            public SqlConnection cnn = new SqlConnection();
            public SqlCommand cmd = new SqlCommand();
            public connect()
            {
                cnn.ConnectionString = "Data Source=LAPTOP-CS4PS8GH\\SQLEXPRESS ; initial catalog =group18 ; Integrated security = true";
             cnn.Open();
                cmd.Connection = cnn;
            }
     }
 }
