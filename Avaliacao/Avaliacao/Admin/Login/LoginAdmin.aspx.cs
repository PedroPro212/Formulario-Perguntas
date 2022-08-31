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
        public static string login = "pedro", senha = "gay";

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
                txtLogin.Text = "";
                SiteMaster.AlertPersonalizado(this, "Login ou senha incorretos.");
            }
        }
    }
}