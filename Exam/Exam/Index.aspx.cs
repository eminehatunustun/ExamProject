using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Exam.Common;
using Exam.DAL;

namespace Exam
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
        }
        UsersDAL userDal = new UsersDAL();
        protected void btnSign_Click(object sender, EventArgs e)
        {

        }

        protected void btnSign_Click1(object sender, EventArgs e)
        {
            Result result = userDal.Check(txtUID.Text, txtUserPass.Text);
            if (result.IsSucceeded)
                Response.Redirect("SinavOlustur.aspx");
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Entity.Users user = new Entity.Users();
            user.Name = txtName.Text;
            user.Surname = txtSurname.Text;

            user.Password = txtPass2.Text;
            user.UserName = txtUsername.Text;

            if (userDal.Kayit(user).IsSucceeded)
                Response.Redirect("SinavOlustur.aspx");
        }
    }
}