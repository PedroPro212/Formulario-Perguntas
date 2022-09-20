using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Cursos
{
    public partial class CadastroCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void CadastrarCurso_Click(object sender, EventArgs e)
        {
            string x = txtCurso.Text.Replace(" ", "");

            if (x == "")
            {
                SiteMaster.AlertPersonalizado(this, "O curso deve possuir uma descricao.");
                txtCurso.Text = "";
            }

            else
            {
                var curso = new Classes.Curso();
                curso.Descricao = txtCurso.Text;
                new Negocio.Curso().Create(curso);

                SiteMaster.AlertPersonalizado(this, "Curso cadastrado com sucesso.");
                txtCurso.Text = "";
            }
        }
    }
}