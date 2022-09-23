using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Perguntas
{
    public partial class AtualizarProfessores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void AtualizarProfessor_Click(object sender, EventArgs e)
        {

        }
    }
}