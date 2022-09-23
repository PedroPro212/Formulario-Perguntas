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
            if (Session["CAVALO"] == null)
            {
                Response.Redirect("../Login/LoginAdmin.aspx");
            }
        }

        protected void CadastrarProfessor_Click(object sender, EventArgs e)
        {
            string x = txtNome.Text.Replace(" ", "");

            if (x == "")
            {
                SiteMaster.AlertPersonalizado(this, "O professor deve possuir um nome.");
                txtNome.Text = "";
            }

            else
            {
                var professor = new Classes.Professor();
                professor.Nome = txtNome.Text;
                new Negocio.Professor().Create(professor);

                SiteMaster.AlertPersonalizado(this, "Professor(a) cadastrado com sucesso.");
                txtNome.Text = "";
            }
        }
    }
}