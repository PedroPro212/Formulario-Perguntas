using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Login
{
    public partial class SelecionarPagina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("LoginAdmin.aspx");
            }
        }

        protected void CadAluno_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Aluno/CadastroAlunos.aspx");
        }

        protected void ExibAluno_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Aluno/ExibirAlunos.aspx");
        }

        protected void CadProf_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Professor/CadastroProfessores.aspx");
        }

        protected void ExibProf_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Professor/ExibirProfessores.aspx");
        }

        protected void CadPergunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Perguntas/CadastroPerguntas.aspx");
        }

        protected void ExibPergunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Perguntas/ExibirPerguntas.aspx");
        }

        protected void ExibirCursos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Cursos/ExibirCursos.aspx");
        }


        protected void btnLinkar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Cursos/LinkarProfCurso.aspx");
        }

        protected void CadCurso_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Cursos/CadastroCursos.aspx");
        }
    }
}