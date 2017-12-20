using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exam.Entity
{
    public class Question
    {
        public int ID { get; set; }
        public string question { get; set; }
        public string optionA { get; set; }
        public string optionB { get; set; }
        public string optionC { get; set; }
        public string optionD { get; set; }
        public string trueOption { get; set; }
        public int ExamID { get; set; }
    }
}
