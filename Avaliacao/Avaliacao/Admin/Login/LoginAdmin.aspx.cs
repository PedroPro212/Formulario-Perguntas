using System;
using System.Collections.Generic;
using System.Drawing;
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
                Session["CAVALO"] = true;
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