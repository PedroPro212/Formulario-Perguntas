﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Admin.Aluno
{
    public partial class ExibirAlunos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void grdAlunos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //não será necessário fazer o update por agora

            int index = Convert.ToInt32(e.CommandArgument);
            var alunos = (List<Classes.Aluno>)Session["dados"];

            if (e.CommandName == "excluir")
            {
                if (alunos[index].Id == 1)
                {
                    SiteMaster.AlertPersonalizado(this, "Anônimo não pode ser excluído.");
                }
                else
                {
                    if (new Negocio.Aluno().Delete(alunos[index].Id))
                        SiteMaster.AlertPersonalizado(this, "Aluno(a) excluído com sucesso.");
                    else
                        SiteMaster.AlertPersonalizado(this, "O aluno(a) não pode ser excluído porque está sendo usado.");
                }
                PesquisarAluno_Click(null, null);
            }
        }

        protected void PesquisarAluno_Click(object sender, EventArgs e)
        {
            var alunos = new Negocio.Aluno().Read("", txtNome.Text);
            Session["dados"] = alunos;
            grdAlunos.DataSource = alunos;
            grdAlunos.DataBind();
        }

        protected void CadastrarAluno_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroAlunos.aspx");
        }
    }
}