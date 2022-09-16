using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarPergunta_Click(object sender, EventArgs e)
        {
            string x = txtPergunta.Text.Replace(" ", "");

            if (x == "")
            {
                SiteMaster.AlertPersonalizado(this, "A pergunta deve possuir um enunciado.");
                txtPergunta.Text = "";
            }

            else
            {
                var pergunta = new Classes.Pergunta();
                pergunta.Descricao = txtPergunta.Text;
                new Negocio.Pergunta().Create(pergunta);

                SiteMaster.ExibirAlert(this, "Pergunta cadastrada com sucesso.");
                txtPergunta.Text = "";
            }
        }
    }
}