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
    public class QuestionDAL
    {
        SqlConnection cnn = new SqlConnection(Tools.ConnectionString);
        public Result AddQuestion(Entity.Question question)
        {
            Result result = new Result();
            if (cnn.State == ConnectionState.Closed)
                cnn.Open();
            SqlCommand cmd = new SqlCommand("Insert Into Questions (Question, OptionA, OptionB, OptionC, OptionD, TrueOption, ExamID) Values (@question, @optionA, @optionB, @optionC, @optionD, @trueOption, @ExamID)", cnn);
            cmd.Parameters.AddWithValue("@question", question.question);
            cmd.Parameters.AddWithValue("@optionA", question.optionA);
            cmd.Parameters.AddWithValue("@optionB", question.optionB);
            cmd.Parameters.AddWithValue("@optionC", question.optionC);
            cmd.Parameters.AddWithValue("@optionD", question.optionD);
            cmd.Parameters.AddWithValue("@trueOption", question.trueOption);
            cmd.Parameters.AddWithValue("@ExamID", question.ExamID);
            int res = cmd.ExecuteNonQuery();
            if (res>0)
                result.IsSucceeded = true;
            cnn.Close();
            return result;
        }
    }
}
