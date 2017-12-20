using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class Sinavlar : System.Web.UI.Page
    {
        ExamDataContext db = new ExamDataContext();
        public int SinavSayisi { get; set; }
        public int i { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            i = 0;
            SinavSayisi = db.Exams.Count();
            DataListExams.DataSource = db.Exams.ToList();
            DataListExams.DataBind();
        }
    
        protected void DataListExams_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="delete")
            {
                int ıd = Convert.ToInt32(e.CommandArgument.ToString());
                Exam silinecekSinav=  db.Exams.First(p => p.ExamID == ıd);
                db.Exams.DeleteOnSubmit(silinecekSinav);
                db.SubmitChanges();
                DataListExams.DataSource = db.Exams.ToList();
                DataListExams.DataBind();
            }
        }
    }
}