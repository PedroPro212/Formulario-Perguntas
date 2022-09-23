using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Cursos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void PesquisarCurso_Click(object sender, EventArgs e)
        {
            var cursos = new Negocio.Curso().Read("", txtCurso.Text);
            Session["dados"] = cursos;
            grdCursos.DataSource = cursos;
            grdCursos.DataBind();
        }

        protected void CadastrarCurso_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroCursos.aspx");
        }

        protected void grdCursos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var cursos = (List<Classes.Curso>)Session["dados"];

            if (e.CommandName == "excluir")
            {
                if (new Negocio.Curso().Delete(cursos[index].Id))
                    SiteMaster.AlertPersonalizado(this, "Curso excluído com sucesso.");
                else
                    SiteMaster.AlertPersonalizado(this, "O curso não pode ser excluído porque está sendo usado.");
                PesquisarCurso_Click(null, null);
            }
        }
    }
}