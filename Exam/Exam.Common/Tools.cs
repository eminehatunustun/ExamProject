using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam.Common
{
    public class Tools
    {
        public static string ConnectionString
        {
            get
            {
                //DESKTOP-2847M88\MSSQLSERVER01
                return @"Server =DESKTOP-2847M88\MSSQLSERVER01; Database = Exam; UID=eminehatunustun; PWD=1234";
            }
        }
    }
}
