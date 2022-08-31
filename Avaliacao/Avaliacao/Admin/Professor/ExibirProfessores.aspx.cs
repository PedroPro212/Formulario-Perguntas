using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Professor
{
    public partial class ExibirProfessores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PesquisarProf_Click(object sender, EventArgs e)
        {
            var professores = new Negocio.Professor().Read("", txtNome.Text);
            Session["dados"] = professores;
            grdProf.DataSource = professores;
            grdProf.DataBind();
        }

        protected void CadastrarProf_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroProfessores.aspx");
        }

        protected void grdProf_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var professores = (List<Classes.Professor>)Session["dados"];

            if (e.CommandName == "excluir")
            {
                if (new Negocio.Professor().Delete(professores[index].Id))
                    SiteMaster.ExibirAlert(this, "Professor(a) excluído com sucesso!");
                else
                    SiteMaster.ExibirAlert(this, "O professor(a) não pode ser excluído porque está sendo usado! ");
                PesquisarProf_Click(null, null);
            }
        }
    }
}