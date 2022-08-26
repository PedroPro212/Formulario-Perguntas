using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarProfessor_Click(object sender, EventArgs e)
        {
            var professor = new Classes.Professor();
            professor.Nome = txtNome.Text;
            new Negocio.Professor().Create(professor);

            SiteMaster.ExibirAlert(this, "Professor cadastrado com sucesso!");
            txtNome.Text = "";
        }
    }
}