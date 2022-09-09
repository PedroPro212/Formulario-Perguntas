using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliacao.Grafico
{
    public partial class Grafico : System.Web.UI.Page
    {
        private MySqlConnection connection = new MySqlConnection(SiteMaster.ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                connection.Open();
                ddlPerguntas.Items.Clear();
                var reader = new MySqlCommand("SELECT descricao, id FROM perguntas", connection).ExecuteReader();
                while (reader.Read())
                {
                    var pergunta = new ListItem("Pergunta ID " + reader.GetInt32("id"), reader.GetInt32("id").ToString());
                    ddlPerguntas.Items.Add(pergunta);
                }
                connection.Close();
            }
        }

        protected void ddlPerguntas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}