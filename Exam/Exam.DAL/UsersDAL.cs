using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Exam.Common;
using Exam.DAL;
using Exam.Entity;

namespace Exam.DAL
{
   public class UsersDAL
    {
        SqlConnection cnn = new SqlConnection(Tools.ConnectionString);
        SqlDataReader reader;
        public Result Check(object userName, object Password)
        {
            Result result = new Result();
            if (cnn.State == ConnectionState.Closed)
                cnn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Users where UserName=@UserName and Password=@Password", cnn);
            cmd.Parameters.AddWithValue("@UserName", userName);
            cmd.Parameters.AddWithValue("@Password", Password);
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
                result.IsSucceeded = true;
            cnn.Close();
            reader.Close();
            return result;
        }
        public Result Kayit(Entity.Users user)
        {
            Result result = new Result();
            if (cnn.State == ConnectionState.Closed)
                cnn.Open();
            SqlCommand cmd = new SqlCommand("Insert Into Users (UserName, Password, Name, Surname) Values (@UserName, @Password, @Name, @Surname)", cnn);
            cmd.Parameters.AddWithValue("@UserName", user.UserName);
            cmd.Parameters.AddWithValue("@Password", user.Password);
            cmd.Parameters.AddWithValue("@Name", user.Name);
            cmd.Parameters.AddWithValue("@Surname", user.Surname);
           // cmd.Parameters.AddWithValue("@Email", user.Email);
            int sonuc = cmd.ExecuteNonQuery();
            if (sonuc>0)
            {
                result.IsSucceeded = true;
            }
            cnn.Close();
            //reader.Close();
            return result;
        }
    }
}
