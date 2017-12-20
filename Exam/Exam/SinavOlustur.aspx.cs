using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;
using Exam.DAL;
using Exam.Common;
using static System.Net.Mime.MediaTypeNames;

namespace Exam
{
    public partial class SinavOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //nudSoruSayisi.Text = "4";
            KontrolleriGetir();
            if (IsPostBack)
                return;
            BasliklariGetir();
            MetniGetir();
        }

        private void BasliklariGetir()
        {
            string url = "https://www.wired.com/feed/rss";
            WebClient wc = new WebClient();
            string xmlData = wc.DownloadString(url);
            XmlDocument xDoc = new XmlDocument();
            xDoc.LoadXml(xmlData);
            XmlNodeList currencies = xDoc.DocumentElement.SelectNodes("channel/item");
            int j = 0;
            StringBuilder sb = new StringBuilder();
            StringBuilder sbButton = new StringBuilder();
            foreach (XmlNode node in currencies)
            {
                if(j>1)
                {
                    ListItem li = new ListItem();
                    li.Text = node.ChildNodes[1].InnerText;
                    li.Value = node.ChildNodes[2].InnerText;
                    DropDownListBasliklar.Items.Add(li);
                    
                }
                j++;
                if (j == 7)
                    break;
            }
        }
        private void txtA_TextChanged(object sender, EventArgs e)
        {
            TextBox txtA = sender as TextBox;
            addDropDownItems(txtA,0);
            
        }

        private void addDropDownItems(TextBox txt, int sira)
        {
           
            foreach (var item in SagPanel.Controls)
            {
                if (item is DropDownList)
                {
                    string ID=(txt.ID.Substring(txt.ID.Length - 1, 1));
                    if ((txt.ID.Substring(txt.ID.Length - 1, 1) == ((DropDownList)item).ID.Substring(3, 1))) //
                    {
                        DropDownList drp = (DropDownList)item;

                            if (drp.Items.Count>sira)
                            {
                                drp.Items[sira].Text = txt.Text;
                            }
                            else
                            {
                                drp.Items.Add(txt.Text);
                            }                     
                    }

                }
            }
        }

        private void txtD_TextChanged(object sender, EventArgs e)
        {
            TextBox txtD = sender as TextBox;
            addDropDownItems(txtD,3);
        }

        private void txtC_TextChanged(object sender, EventArgs e)
        {
            TextBox txtC = sender as TextBox;
            addDropDownItems(txtC,2);
        }

        private void txtB_TextChanged(object sender, EventArgs e)
        {
            TextBox txtB = sender as TextBox;
            addDropDownItems(txtB,1);
        }

        protected void nudSoruSayisi_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListBasliklar_SelectedIndexChanged(object sender, EventArgs e)
        {
            MetniGetir();
           
        }

        private void MetniGetir()
        {
            string link = DropDownListBasliklar.SelectedValue;
            if (link != "")
            {
                WebRequest SiteyeBaglantiTalebi = HttpWebRequest.Create(link);
                WebResponse GelenCevap = SiteyeBaglantiTalebi.GetResponse();
                StreamReader CevapOku = new StreamReader(GelenCevap.GetResponseStream());
                string KaynakKodlar = CevapOku.ReadToEnd();
                //linkin içinden açıklama kısmmını alcam.
                int IcerikBaslangicIndex = KaynakKodlar.IndexOf("class=\"lede\"") + 13;
                int IcerikBitisIndex = KaynakKodlar.Substring(IcerikBaslangicIndex).IndexOf("</p>");
                LiteralDescription.Text = KaynakKodlar.Substring(IcerikBaslangicIndex, IcerikBitisIndex);
            }
        }

        ExamDAL exDal = new ExamDAL();
        protected void btnSinavOlustur_Click(object sender, EventArgs e)
        {
            int i = 0;
            Result result = new Result();
            int ExID = 0;
            Entity.Question question = new Entity.Question();
            QuestionDAL questionDal = new QuestionDAL();
            foreach (var item in SagPanel.Controls)
            {
                
                if (i==0)//sınav oluşturup onun ID'sini alcam ve başka bir tabloda sınavın sorularını tutcam.
                {
                    string title = DropDownListBasliklar.SelectedItem.ToString();
                   result= exDal.addExam(title,LiteralDescription.Text);
                    ExID = result.returnID;
                }
                if (item is TextBox)
                {
                    TextBox txt = (TextBox)item;
                    if (txt.ID.Substring(0,4)=="txtS")
                    {
                        question.question = txt.Text;
                    }
                    if (txt.ID.Substring(0, 4) == "txtA")
                    {
                        question.optionA = txt.Text;
                    }
                    if (txt.ID.Substring(0, 4) == "txtB")
                    {
                        question.optionB = txt.Text;
                    }
                    if (txt.ID.Substring(0, 4) == "txtC")
                    {
                        question.optionC = txt.Text;
                    }
                    if (txt.ID.Substring(0, 4) == "txtD")
                    {
                        question.optionD = txt.Text;
                    }
                }
                if (item is DropDownList)
                {
                    question.ExamID = ExID;
                    question.trueOption = ((DropDownList)item).SelectedValue;
                    questionDal.AddQuestion(question);
                    question = new Entity.Question();
                }
                    i++;
            }
            Response.Redirect("SinavOl.aspx?SinavID=" + ExID.ToString());
        }
        private void KontrolleriGetir()
        {
           
            SagPanel.Controls.Clear();
            int height = 100;
            int txtheight = 21;
            for (int i = 0; i < int.Parse(nudSoruSayisi.Text); i++)
            {
                SagPanel.Height = height + i * 200 + 170;
                TextBox txtSoru = new TextBox();
                txtSoru.Attributes.Add("value", "Soru");
                txtSoru.Attributes.Add("onFocus", @"if(this.value == 'Soru') {this.value = '';}");
                txtSoru.Attributes.Add("onBlur", @"if (this.value == '') {this.value = 'Soru';}");
                txtSoru.ID = "txtS"+i;
                txtSoru.Height = txtheight;
                txtSoru.Width = 250;
                DropDownList drp = new DropDownList();
                drp.ID = "drp" + i.ToString();
                drp.AutoPostBack = true;
                drp.Width = 200;
                drp.Height = txtheight;

                TextBox txtA = new TextBox();
              //  txtA.Attributes.Add("value", "A)");
             //  txtA.Attributes.Add("onFocus", @"if(this.value == 'A)') {this.value = '';}");
              //  txtA.Attributes.Add("onBlur", @"if (this.value == '') {this.value = 'A)';}");
                txtA.AutoPostBack = true;
                txtA.Height = txtheight;
                txtA.ID = "txtA" + i.ToString();
                txtA.TextChanged += new EventHandler(txtA_TextChanged);

                TextBox txtB = new TextBox();
              // txtB.Attributes.Add("value", "B)");
             //  txtB.Attributes.Add("onFocus", @"if(this.value == 'B)') {this.value = '';}");
              // txtB.Attributes.Add("onBlur", @"if (this.value == '') {this.value = 'B)';}");
                txtB.AutoPostBack = true;
                txtB.Height = txtheight;
                txtB.ID = "txtB" + i;
                txtB.TextChanged += new EventHandler(txtB_TextChanged);

                TextBox txtC = new TextBox();
              // txtC.Attributes.Add("value", "C)");
              // txtC.Attributes.Add("onFocus", @"if(this.value == 'C)') {this.value = '';}");
               // txtC.Attributes.Add("onBlur", @"if (this.value == '') {this.value = 'C)';}");
                txtC.AutoPostBack = true;
                txtC.Height = txtheight;
                txtC.ID = "txtC" + i;
                txtC.TextChanged += new EventHandler(txtC_TextChanged);

                TextBox txtD = new TextBox();
               // txtD.Attributes.Add("value", "D)");
             //  txtD.Attributes.Add("onFocus", @"if(this.value == 'D)') {this.value = '';}");
            // txtD.Attributes.Add("onBlur", @"if (this.value == '') {this.value = 'D)';}");
                txtD.AutoPostBack = true;
                txtD.Height = txtheight;
                txtD.ID = "txtD" + i;
                txtD.TextChanged += new EventHandler(txtD_TextChanged);
                SagPanel.Controls.Add(txtSoru);
                Literal ltrSag = new Literal();
                ltrSag.Text = "<br/> <br/>";
                SagPanel.Controls.Add(ltrSag);


                SagPanel.Controls.Add(txtA);
                SagPanel.Controls.Add(txtB);
                SagPanel.Controls.Add(txtC);
                SagPanel.Controls.Add(txtD);
                Literal ltrSag3 = new Literal();
                ltrSag3.Text = "<br/> <br/>";
                SagPanel.Controls.Add(ltrSag3);

                SagPanel.Controls.Add(drp);
                Literal ltrSag2 = new Literal();
                ltrSag2.Text = "<br/> <br/>";
                SagPanel.Controls.Add(ltrSag2);
            }
        }
        protected void nudSoruSayisi_TextChanged1(object sender, EventArgs e)
        {
            KontrolleriGetir();
        }
    }
}