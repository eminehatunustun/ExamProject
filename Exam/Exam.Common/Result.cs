using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam.Common
{
    public class Result
    {
        public bool IsSucceeded { get; set; }
        public Result()
        {
            IsSucceeded = false; //defaultta false çektim
        }
        public int returnID { get; set; }
    }
    public class Result<T> : Result
    {
        public T TransactionResult { get; set; }
    }
}
