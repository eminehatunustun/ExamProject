using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Exam
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = "https://www.wired.com/feed/rss";
            WebClient wc = new WebClient();
            string xmlData = wc.DownloadString(url);
            XmlDocument xDoc = new XmlDocument();
            xDoc.LoadXml(xmlData);
            XmlNodeList currencies = xDoc.DocumentElement.SelectNodes("channel/item/description");
            int i = 0;
            StringBuilder sb = new StringBuilder();
            StringBuilder sbButton = new StringBuilder();
            foreach (XmlNode node in currencies) //5 tane buton üretcem.
            {
                Button btn = new Button();
                btn.Height = 50;
                btn.Width = 800;
                btn.Text = node.InnerText.ToString();
                btn.Click += new EventHandler(btn_Click);
                PanelTop5.Controls.Add(btn);
                i++;
                if (i == 5)
                    break;

            }
        }

        private void btn_Click(object sender, EventArgs e)
        {
            string text = (sender as Button).Text;

            Response.Redirect("~/SinavOlustur.aspx?Selected="+text);
        }
    }
}