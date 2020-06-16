using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CNPM_CHUNGKHOAN
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
  
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
            
        }

        internal static SqlDataReader ExecSqlDataReader(string strlenh)
        {
            throw new NotImplementedException();
        }
    }
}
