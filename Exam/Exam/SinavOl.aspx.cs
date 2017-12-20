using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class SinavOl : System.Web.UI.Page
    {
        ExamDataContext db = new ExamDataContext();
        List<Question> Que = new List<Question>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
         int sinavID = int.Parse(Request.QueryString["SinavID"].ToString());
            var foo = from codeData in db.Questions
                      where codeData.ExamID ==sinavID 
                      select codeData;
            DataListQuestions.DataSource = foo.ToList();
              DataListQuestions.DataBind();
            var ex = from x in db.Exams
                      where x.ExamID == sinavID
                      select x;
            DataListExes.DataSource = ex.ToList();
            DataListExes.DataBind();

        }
       
        protected void btnSinaviTamamla_Click(object sender, EventArgs e)
        {
            int sinavID = int.Parse(Request.QueryString["SinavID"].ToString());
            var foo = from codeData in db.Questions
                      where codeData.ExamID ==sinavID 
                      select codeData;
            Que = foo.ToList();
            RadioButton rbA;
            RadioButton rbB;
            RadioButton rbC;
            RadioButton rbD;

            Label lblA;
            Label lblB;
            Label lblC;
            Label lblD;
            foreach (DataListItem rb in DataListQuestions.Items)
            {
                rbA = (RadioButton)rb.FindControl("rbA");
                rbB = (RadioButton)rb.FindControl("rbB");
                rbC = (RadioButton)rb.FindControl("rbC");
                rbD = (RadioButton)rb.FindControl("rbD");


                lblA = (Label)rb.FindControl("lblA");
                lblB = (Label)rb.FindControl("lblB");
                lblC = (Label)rb.FindControl("lblC");
                lblD = (Label)rb.FindControl("lblD");
                if (rbA.Checked)
                {
                    foreach (Question question in Que)
                    {
                        if (question.TrueOption == lblA.Text)
                        {
                            
                            lblA.BackColor = System.Drawing.Color.Green;
                            break;
                        }
                        else
                        {
                            lblA.BackColor = System.Drawing.Color.Red;
                            
                        }
                    }
                }
                if (rbB.Checked)
                {
                    foreach (Question question in Que)
                    {
                        if (question.TrueOption == lblB.Text)
                        {
                            
                            lblB.BackColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblB.BackColor = System.Drawing.Color.Red;            
                        }
                    }
                }
                if (rbC.Checked)
                {
                   // rbC.Text = lblC.Text;
                    foreach (Question question in Que)
                    {
                        if (question.TrueOption == lblC.Text)
                        {                          
                            lblC.BackColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblC.BackColor = System.Drawing.Color.Red;             
                        }
                    }

                }
                if (rbD.Checked)
                {
                    foreach (Question question in Que)
                    {
                        if (question.TrueOption == lblD.Text)
                        {
                            
                            lblD.BackColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblD.BackColor = System.Drawing.Color.Red;    
                        }
                    }

                }
            }
            UpdatePanel1.Update();
        }
    }
}