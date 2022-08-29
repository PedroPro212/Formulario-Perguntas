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

        }

        protected void grdAlunos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

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