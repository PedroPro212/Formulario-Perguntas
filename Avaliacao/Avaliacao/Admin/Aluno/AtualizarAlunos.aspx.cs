using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Aluno
{
    public partial class AtualizarAlunos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void AtualizarAluno_Click(object sender, EventArgs e)
        {

        }

        protected void presença_Click(object sender, EventArgs e)
        {
            SiteMaster.AlertPersonalizado(this,"prëzëncsä");
        }
    }
}