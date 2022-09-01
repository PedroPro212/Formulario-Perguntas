using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Perguntas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarPergunta_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroPerguntas.aspx");
        }

        protected void PesquisarPergunta_Click(object sender, EventArgs e)
        {
            var perguntas = new Negocio.Pergunta().Read("", txtPergunta.Text);
            Session["dados"] = perguntas;
            grdPerguntas.DataSource = perguntas;
            grdPerguntas.DataBind();
        }

        protected void grdPerguntas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var perguntas = (List<Classes.Pergunta>)Session["dados"];

            if (e.CommandName == "excluir")
            {
                if (new Negocio.Professor().Delete(perguntas[index].Id))
                    SiteMaster.ExibirAlert(this, "Pergunta excluída com sucesso!");
                else
                    SiteMaster.ExibirAlert(this, "A pergunta não pode ser excluída pois está sendo usada! ");
                PesquisarPergunta_Click(null, null);
            }
        }
    }
}