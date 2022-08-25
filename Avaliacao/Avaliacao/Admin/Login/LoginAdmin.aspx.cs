using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao
{
    public partial class _Default : Page
    {
        public static string login = "admin", senha = "123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if ((txtLogin.Text == login)&&(txtSenha.Text==senha))
            {
                Response.Redirect("SelecionarPagina.aspx");
            }
            else
            {
                SiteMaster.ExibirAlert(this, "Login ou senha incorretos.");
            }
        }
    }
}