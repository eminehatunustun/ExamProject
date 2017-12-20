using Exam.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam.DAL
{
    public class ExamDAL
    {
        SqlConnection cnn = new SqlConnection(Tools.ConnectionString);
        public Result addExam(object title, object Description)
        {
            Result result = new Result();
            cnn.Open();
            SqlCommand cmd = new SqlCommand("pr_AddExam", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Title", title);
            cmd.Parameters.AddWithValue("@Description", Description);
            var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;

            if ((cmd.ExecuteNonQuery()) > 0)
                result.IsSucceeded = true;
            var returnResult = returnParameter.Value;  //procedure den gelen değeri almak için
            result.returnID = (int)returnResult;
            cnn.Close();
            return result;
        }
    }
}
