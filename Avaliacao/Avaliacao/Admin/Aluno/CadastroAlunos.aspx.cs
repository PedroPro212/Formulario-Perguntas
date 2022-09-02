using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin
{
    public partial class CadastroAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarAluno_Click(object sender, EventArgs e)
        {
            var aluno = new Classes.Aluno();
            aluno.Nome = txtNome.Text;
            new Negocio.Aluno().Create(aluno);

            SiteMaster.AlertPersonalizado(this, "Aluno cadastrado com sucesso.");
            txtNome.Text = "";
        }
    }
}